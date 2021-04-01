#!/bin/bash -e

# Download the Etleap keystore and replace it in the Java installation
sudo aws s3 cp s3://datadanze-emr/conf-hadoop2/etleap.keystore /etc/pki/ca-trust/extracted/java/cacerts

exit 0
