#!/bin/bash

# Lancer dockerd seulement s'il est installé
if command -v dockerd &> /dev/null; then
    dockerd > /var/log/dockerd.log 2>&1 &
fi

# Toujours lancer sshd en foreground
exec /usr/sbin/sshd -D