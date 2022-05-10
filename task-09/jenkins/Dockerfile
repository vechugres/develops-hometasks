FROM debian:buster
RUN apt-get update && apt-get install -y ansible curl

COPY ./jenkins.yml /temp/jenkins.yaml
COPY ./roles /etc/ansible/roles
RUN ansible-playbook /temp/jenkins.yaml

CMD /usr/bin/daemon --foreground --name=jenkins --inherit --env=JENKINS_HOME=/var/lib/jenkins --output=/var/log/jenkins/jenkins.log --pidfile=/var/lib/jenkins/jenkins.pid -- /usr/bin/java -Dfile.encoding=UTF-8 -Dsun.jnu.encoding=UTF-8 -Djava.awt.headless=true -Djenkins.install.runSetupWizard=false -Dhudson.security.csrf.GlobalCrumbIssuerConfiguration.DISABLE_CSRF_PROTECTION=true -jar /usr/share/java/jenkins.war --webroot=/var/cache/jenkins/war --httpPort=8080 --prefix=
