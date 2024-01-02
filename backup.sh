#!/bin/sh

sudo -- sh -c 'tar cvzf backup.tar.gz docker && chmod 777 backup.tar.gz'
rclone move -P backup.tar.gz remote:private/server/
