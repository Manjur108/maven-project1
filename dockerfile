FROM centos
ADD "**/*.war" /etc/lib/docker/manju.war
EXPOSE 80
CMD ["/usr/sbin/init"]


