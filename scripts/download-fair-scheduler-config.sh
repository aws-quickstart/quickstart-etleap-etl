#!/bin/bash -e

sudo aws s3 cp s3://datadanze-emr/conf-hadoop2/fair-scheduler.xml /etc/hadoop/conf.empty/fair-scheduler.xml
