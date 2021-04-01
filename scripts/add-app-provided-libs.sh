#!/bin/bash -e

# These jars need to be present when the Hadoop processes start, so loading through the custom job classpath is not sufficient.

S3FROM=s3://datadanze-emr/lib
TO=/usr/lib/hadoop/lib

# Additional libraries required to use the GCS FS
sudo aws s3 cp ${S3FROM}/gcs-connector-1.6.1-hadoop1-shaded.jar ${TO}/

# Library to control logging output and remove sensitive info
sudo aws s3 cp ${S3FROM}/hadoopLogging-assembly-0.1-SNAPSHOT.jar ${TO}/
