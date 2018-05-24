FROM mongo

MAINTAINER jisequilla@gmail.com


EXPOSE 27017 27017

ADD scrt/run.sh /run.sh
ADD scrt/set_mongodb_password.sh /set_mongodb_password.sh

RUN chmod +x /run.sh
RUN chmod +x /set_mongodb_password.sh

CMD ["/run.sh"]
