set -x
# 构建 Mysql 5.7数据库
docker pull mysql:5.7
# 创建数据存储目录 和配置文件目录
mkdir -p /var/docker_data/mysql/fof/{conf,data,log}
# 分别赋予读写权限
chmod 777 -R /var/docker_data/mysql/fof/conf
chmod 777 -R /var/docker_data/mysql/fof/data
chmod 777 -R /var/docker_data/mysql/fof/log
touch /var/docker_data/mysql/fof/conf/my.cnf
# 创建并运行容器
docker run -d --name fof_mysql \
           -p 3306:3306 \
           -v /var/docker_data/mysql/$db_name/conf:/etc/mysql \
           -v /var/docker_data/mysql/fof/mysql:/var/lib/mysql \
           -v /var/docker_data/mysql/fof/log:/var/log/mysql \
           -e MYSQL_ROOT_PASSWORD=Abcd1234 \
           mysql:5.7
docker start fof_mysql

