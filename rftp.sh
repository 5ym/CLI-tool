#!/bin/bash

# rsyncが使えない環境でリモートからローカル(リモートをマスターとする)にコピーするやつ

#FTPのダウンロードするディレクトリ末尾に/をつけずにディレクトリを指定すると再帰取得します
REMOTE_DIR=""
#コピーされるローカルのパス
LOCAL_DIR=""
#FTP接続先:でポート指定
SERVER_FTP=""
#ログインユーザー
USER=""
#パスワード
PASS=""

lftp ${SERVER_FTP} -u ${USER},${PASS} -e "mirror -v --delete --parallel=10 --only-newer ${REMOTE_DIR} ${LOCAL_DIR} && quit"
