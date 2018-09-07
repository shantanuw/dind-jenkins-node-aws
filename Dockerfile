FROM mesosphere/jenkins-dind:0.7.0-ubuntu
RUN apt-get update -yq \
    && apt-get install curl gnupg -yq \
    && curl -sL https://deb.nodesource.com/setup_8.x | bash \
    && apt-get install nodejs python-setuptools python-dev build-essential -yq \
    && easy_install pip \
    && pip install --upgrade awscli
