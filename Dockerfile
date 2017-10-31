FROM amazonlinux:latest
RUN yum update -y && \
    curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.6/install.sh | bash && \
    . ~/.nvm/nvm.sh && \
    nvm install 8.8.1 && \
    yum install -y python36-pip unzip git python36-setuptools && \
    pip-3.6 install --upgrade awscli && \
    npm install -g serverless
CMD /bin/bash