#!/bin/bash --login
. ~/aws/profile
cd /Users/ddoc/Documents/dd0c.com/
nanoc com

s3cmd sync -v output/ s3://www.brian2.net --access_key=$AWS_ID --secret_key=$AWSSECRETACCESSKEY

#find output | grep html$| sed -e 's/output\///' | xargs -n1 -I{} s3cmd -v modify s3://www.brian2.net/{} -m text/html --access_key=$AWS_ID --secret_key=$AWSSECRETACCESSKEY

#find output | grep css$| sed -e 's/output\///' | xargs -n1 -I{} s3cmd -v modify s3://www.brian2.net/{} -m text/css --access_key=$AWS_ID --secret_key=$AWSSECRETACCESSKEY

#find output | grep js$| sed -e 's/output\///' | xargs -n1 -I{} s3cmd -v modify s3://www.brian2.net/{} -m application/javascript --access_key=$AWS_ID --secret_key=$AWSSECRETACCESSKEY

