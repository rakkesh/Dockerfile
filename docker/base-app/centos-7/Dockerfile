#+++++++++++++++++++++++++++++++++++++++
# Dockerfile for webdevops/base-app:centos-7
#    -- automatically generated  --
#+++++++++++++++++++++++++++++++++++++++

FROM webdevops/base:centos-7

ENV APPLICATION_USER=application \
    APPLICATION_GROUP=application \
    APPLICATION_PATH=/app \
    APPLICATION_UID=1000 \
    APPLICATION_GID=1000

COPY conf/ /opt/docker/

# Install services
RUN /usr/local/bin/yum-install \
        # Install tools
        zip \
        unzip \
        bzip2 \
        wget \
        curl \
        net-tools \
        moreutils \
        dnsutils \
        bind-utils \
        rsync \
        git \
        pygpgme \
    && /usr/local/bin/generate-locales \
    && /opt/docker/bin/provision run --tag bootstrap --role webdevops-base-app \
    && /opt/docker/bin/bootstrap.sh \
    && docker-image-cleanup
