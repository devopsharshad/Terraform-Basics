provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "jenkin" {
    instance_type = "t3.medium"
    ami = "ami-0cf8ec67f4b13b491"
    key_name = "abc"
    user_data = <<-EOF
#!/bin/bash
dnf update -y
dnf install wget java-21-openjdk -y

# Add Jenkins repo
wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key
dnf install jenkins ansible -y

systemctl enable jenkins
systemctl start jenkins

# Configure admin user
mkdir -p /var/lib/jenkins/init.groovy.d
cat <<'EOG' > /var/lib/jenkins/init.groovy.d/basic-security.groovy
#!/usr/bin/groovy
import jenkins.model.*
import hudson.security.*

def instance = Jenkins.getInstance()
println("--> Creating admin user")

def hudsonRealm = new HudsonPrivateSecurityRealm(false)
hudsonRealm.createAccount("jenkins","yourpassword")
instance.setSecurityRealm(hudsonRealm)

def strategy = new FullControlOnceLoggedInAuthorizationStrategy()
strategy.setAllowAnonymousRead(false)
instance.setAuthorizationStrategy(strategy)
instance.save()
EOG

chown -R jenkins:jenkins /var/lib/jenkins/init.groovy.d
chmod +x /var/lib/jenkins/init.groovy.d/basic-security.groovy

# Wait for Jenkins to initialize fully
echo "Waiting for Jenkins to start..."
sleep 90

# Install Jenkins CLI and plugins
wget http://localhost:8080/jnlpJars/jenkins-cli.jar -O /tmp/jenkins-cli.jar
java -jar /tmp/jenkins-cli.jar -s http://localhost:8080/ -auth jenkins:Linux4all@123 install-plugin \
  git github pipeline workflow-aggregator blueocean credentials-binding configuration-as-code email-ext ansible

# Restart Jenkins
java -jar /tmp/jenkins-cli.jar -s http://localhost:8080/ -auth jenkins:Linux4all@123 safe-restart
EOF
tags = {
    Name = "Jenkins-Ansible-Server"
  }
}

output "pub" {
    value = aws_instance.jenkin.public_ip
  
}