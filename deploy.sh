#!/bin/bash

USER=herpes-inframundo
PASS=termopilas
HOST=files.000webhost.com

ftp -vn $HOST << END_SCRIPT
quote USER $USER
quote PASS $PASS
cd public_html
cd images
mput /tmp/test/*
quit
END_SCRIPT
