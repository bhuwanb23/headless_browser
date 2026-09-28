#!/bin/bash

/dockerstartup/vnc_startup.sh /dockerstartup/kasm_startup.sh --wait &

sleep 30

echo "Forwarding Render port ${PORT} -> 6901"

exec socat TCP-LISTEN:${PORT},fork,reuseaddr TCP:127.0.0.1:6901
