FROM jenkins/jenkins:lts-jdk17

USER root

# Install Docker CLI
RUN apt-get update && \
    apt-get install -y docker.io && \
    rm -rf /var/lib/apt/lists/*

# Give Jenkins user access to Docker socket
RUN usermod -aG root jenkins

USER jenkins

# Install required plugins (optional: Docker Pipeline)
COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN jenkins-plugin-cli --plugins < /usr/share/jenkins/ref/plugins.txt
