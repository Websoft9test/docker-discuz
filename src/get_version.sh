sudo echo "Discuz version:$(docker exec -it $1 cat /usr/src/discuz/upload/source/discuz_version.php | awk "{print \$5}" | tr -d ";"')" 1>> /data/logs/install_version.txt
