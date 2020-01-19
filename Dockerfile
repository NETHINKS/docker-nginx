FROM centos:8
LABEL maintainer="monitoring@nethinks.com"

# copy nginx repo definition
COPY files/nginx.repo /etc/yum.repos.d/

# copy container scripts
COPY scripts/ /opt/scripts/

# install nginx and required software
RUN yum -y install nginx \
        python36.x86_64 \
        python3-jinja2.noarch \
    && yum -y clean all

# start nginx
CMD ["/opt/scripts/run.sh"]
