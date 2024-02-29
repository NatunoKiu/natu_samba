#!/bin/bash
sudo podman run -d -p 445:445 --name samba_natuno -v /mnt/share:/home/share localhost/sambanatuno
