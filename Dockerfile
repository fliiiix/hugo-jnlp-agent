FROM jenkins/jnlp-slave:3.19-1
MAINTAINER l33tname <sirl33tname@gmail.com>

ENV HUGO_VERSION 0.75.1
ENV HUGO_ARCH Linux-64bit

USER ${user}

# Install HUGO
RUN wget https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_${HUGO_VERSION}_${HUGO_ARCH}.tar.gz && \
        tar xzvf hugo_${HUGO_VERSION}_${HUGO_ARCH}.tar.gz -C /usr/bin hugo && \
        rm -rf hugo_${HUGO_VERSION}_${HUGO_ARCH}.tar.gz

ENTRYPOINT ["/usr/local/bin/jenkins-slave"]
