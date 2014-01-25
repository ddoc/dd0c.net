#!/bin/bash --login
. ~/aws/profile
cd /Users/ddoc/Documents/dd0c.com/
nanoc com

s3sync sync -v output/ www.brian2.net:
