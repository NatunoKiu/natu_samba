FROM ubuntu:latest
RUN apt-get update -y && \
    apt-get install samba -y

COPY ./smb.conf /etc/samba/
RUN mkdir /home/share
RUN chmod 777 -R /home/share

CMD service smbd start && tail -f /dev/null
