FROM adoptopenjdk/maven-openjdk11

RUN apt-get update && \
    apt-get install -y curl git-core jq && \
    apt-get -y autoclean && \
    mkdir -p /opt/node && \
    curl -L https://nodejs.org/dist/v12.16.1/node-v12.16.1-linux-x64.tar.xz | tar xJ --directory /opt/node --strip-components=1

ENV PATH $PATH:/opt/node/bin

CMD [ "/bin/bash" ]
