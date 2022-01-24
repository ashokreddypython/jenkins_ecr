# Ubunut 15.04 with java 8 installed
# Build image with: docker build -t repo/image:lastest


FROM ubunut:15.04
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y software-properties-common && \
    add-apt-repository ppa:webupd8team/java -y && \
    apt-get udpate && \
    echo oracle-java7-installeer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections && \
    apt-get install -y oracle-java7-installer && \
    apt-get clean
