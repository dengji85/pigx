#!/bin/bash 

echo "打包文件"
yarn build
echo "传输文件"
sftp root@fengniaoai.com << EOM
  put -r ./dist/** /mnt/website/avuex
  bey
EOM
echo "部署成功"