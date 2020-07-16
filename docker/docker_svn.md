### 进入docker
```bash
docker exec -it hltz_svn /bin/sh
```
### 创建资源库
```bash
svnadmin create /home/svn/repos
```
### 资源库配置
```bash
cd /var/svn/repository/conf
vi svnserve.conf # 把下面4个的#号去掉,左边不能有空格

anon-access = none　　　　# 使非授权用户无法访问
auth-access = write　　　　# 使授权用户有写权限
password-db = passwd　　 # 指明密码文件路径
authz-db = authz　　　　　# 访问控制文件
# 密码文件读取passwd文件，授权信息读取authz文件。
```
