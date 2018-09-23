FROM amazonlinux:1
RUN yum update -y && \
    curl --silent --location https://rpm.nodesource.com/setup_8.x | bash && \
    yum install -y python36-pip python36-setuptools unzip git nodejs
RUN pip-3.6 install --upgrade awscli && \
    npm install -g serverless
CMD /bin/bash