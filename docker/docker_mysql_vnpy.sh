set -x
# 构建 Mysql 5.7数据库
docker pull mysql:5.7
# 创建数据存储目录 和配置文件目录
db_name=vnpy
port=3307
mkdir -p /var/docker_data/mysql/ibats/{conf,data,log}
# 分别赋予读写权限
chmod 777 -R /var/docker_data/mysql/$db_name/conf
chmod 777 -R /var/docker_data/mysql/$db_name/data
chmod 777 -R /var/docker_data/mysql/$db_name/log
touch /var/docker_data/mysql/$db_name/conf/my.cnf
# 创建并运行容器
docker run -d --name mysql_$db_name \
           -p $port:3306 \
           -v /var/docker_data/mysql/$db_name/conf:/etc/mysql \
           -v /var/docker_data/mysql/$db_name/mysql:/var/lib/mysql \
           -v /var/docker_data/mysql/$db_name/log:/var/log/mysql \
           -e MYSQL_ROOT_PASSWORD=Abcd1234 \
           mysql:5.7
docker start mysql_$db_name
apt install mysql-client-core-5.7 -y

