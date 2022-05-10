FROM debian:buster
RUN apt-get update && apt-get install -y ansible curl

COPY ./jenkins.yml /temp/jenkins.yaml
COPY ./roles /etc/ansible/roles
RUN ansible-playbook /temp/jenkins.yaml

ENTRYPOINT service jenkins start
