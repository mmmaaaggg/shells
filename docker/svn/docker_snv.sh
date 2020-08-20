set -x
docker run --restart always --name redm_axure -d -v /root/dockers/svn:/var/opt/svn -p 13690:3690 garethflowers/svn-server
