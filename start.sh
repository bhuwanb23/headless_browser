#!/bin/bash

/dockerstartup/vnc_startup.sh /dockerstartup/kasm_startup.sh --wait &

sleep 20

socat TCP-LISTEN:${PORT},fork,reuseaddr TCP:127.0.0.1:6901
