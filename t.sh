curl http://127.0.0.1:9200/

exit

sudo chown -R 1000:root esdata


exit
$ docker exec -it kafka /bin/sh
$ cd /opt/kafka/bin/

$ ./kafka-topics.sh --create --zookeeper zookeeper:2181 --replication-factor 1 -partitions 1 --topic looklook-log
$ ./kafka-topics.sh --create --zookeeper zookeeper:2181 --replication-factor 1 -partitions 1 --topic payment-update-paystatus-topic


$ docker exec -it mysql mysql -uroot -p
##输入密码：PXDN93VRKUm8TeE7
$ use mysql;
$ update user set host='%' where user='root';
$ FLUSH PRIVILEGES;


exit
docker run \
	-v /var/looklook/mysql/data:/var/lib/mysql \
    -e MYSQL_ROOT_PASSWORD=your_password \
    -p 3306:3306 \
    mysql/mysql-server:8.0.28 --default-authentication-plugin=mysql_native_password --character-set-server=utf8mb4 --collation-server=utf8mb4_general_ci --explicit_defaults_for_timestamp=true --lower_case_table_names=1

