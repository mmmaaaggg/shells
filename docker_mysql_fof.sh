# 构建 Mysql 5.7数据库
docker pull mysql:5.7
# 创建数据存储目录 和配置文件目录
mkdir -p /var/docker_data/mysql/fof/{conf,data,log}
# 分别赋予读写权限
chmod 777 -R /var/docker_data/mysql/fof/conf
chmod 777 -R /var/docker_data/mysql/fof/data
chmod 777 -R /var/docker_data/mysql/fof/log
# 创建并运行容器
docker run -d --name app_mysql \
           -p 3307:3306 \
           -v /var/docker_data/mysql/fof/cnf.d:/etc/my.cnf.d \
           -v /var/docker_data/mysql/fof/data:/var/lib/mysql/data \
           -v /var/docker_data/mysql/fof/log:/var/log/mysql
           -e MYSQL_ROOT_PASSWORD=Abcd1234 \
           mysql:5.7
