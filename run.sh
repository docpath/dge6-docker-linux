#!/bin/bash

cd /usr/local/docpath/licenseserver/licenseserver/Bin
./startServer.sh

cd /usr/local/docpath/generation
exec java -jar dge.war -logmodeconsole

