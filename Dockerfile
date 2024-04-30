FROM bestwu/ewomail:latest

#RUN rm -rf /etc/dovecot/dovecot-sql.conf.ext /etc/postfix/main.cf /etc/postfix/mysql
#COPY ./config/dovecot/dovecot-sql.conf.ext /etc/dovecot/dovecot-sql.conf.ext
#COPY ./config/postfix/mysql /etc/postfix/mysql
COPY ./config/postfix/main.cf  /etc/postfix/main.cf


RUN rm -rf /home/*
COPY ./config/php/* /home/
RUN chmod +x /home/*
# docker build -t moese/ewomail:1.0.1 .
ENTRYPOINT ["/home/entrypoint.sh"]