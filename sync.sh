#!/bin/sh

bucket=s3://www.sysflow.co.il/

aws s3 cp index.html $bucket

for item in css img js vendor; do
    aws s3 cp --recursive $item $bucket$item
done
