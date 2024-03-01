#!/bin/bash
sudo podman rm natu_samba
sudo podman build -t natu_samba .
sudo podman run -d -p 445:445 --name natu_samba -v /mnt/share:/home/share localhost/natu_samba
