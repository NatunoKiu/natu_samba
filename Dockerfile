FROM ubuntu:latest
RUN apt-get update -y && \
    apt-get install samba -y

COPY ./smb.conf /etc/samba/
RUN mkdir /home/share

CMD service smbd start && bash