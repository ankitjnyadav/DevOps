#!/bin/bash
echo "Hello Git!"
git push
curl --user "admin:jenkins" http://192.168.31.137:8080/job/autowebdeploy/build?token=deploy_token