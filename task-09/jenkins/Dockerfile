FROM debian:buster
RUN apt-get update && apt-get install -y ansible curl gnupg

COPY ./jenkins.yml /temp/jenkins.yml
COPY ./roles /etc/ansible/roles
COPY ./jobs /temp/jobs
RUN ansible-playbook /temp/jenkins.yml

WORKDIR /var/lib/jenkins
CMD jenkins start

