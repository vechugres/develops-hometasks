FROM debian:buster
RUN apt-get update && apt-get install -y ansible curl gnupg daemon

COPY ./jenkins.yml /temp/jenkins.yml
COPY ./roles /etc/ansible/roles
COPY ./templates/ /templates/
#COPY ./jobs /temp/jobs
RUN ansible-playbook /temp/jenkins.yml

CMD /usr/bin/daemon --foreground --name=jenkins --inherit --env=JENKINS_HOME=/var/lib/jenkins --output=/var/log/jenkins/jenkins.log --pidfile=/var/run/jenkins/jenkins.pid -- /usr/bin/java -Djava.awt.headless=true -Djenkins.install.runSetupWizard=false -Dhudson.security.csrf.DefaultCrumbIssuer.EXCLUDE_SESSION_ID=true -jar /usr/share/java/jenkins.war --webroot=/var/cache/jenkins/war --httpPort=8080 --prefix=
