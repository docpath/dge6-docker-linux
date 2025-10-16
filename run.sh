#!/bin/bash

cd /usr/local/docpath/licenseserver/licenseserver/Bin
./startServer.sh

sleep 5

cd /usr/local/docpath/generation
exec java -jar dge.war -logmodeconsole

