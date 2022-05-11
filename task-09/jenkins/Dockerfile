FROM debian:buster
RUN apt-get update && apt-get install -y ansible curl gnupg

COPY ./jenkins.yml /temp/jenkins.yml
COPY ./roles /etc/ansible/roles
RUN ansible-playbook /temp/jenkins.yml

ENTRYPOINT service jenkins start
