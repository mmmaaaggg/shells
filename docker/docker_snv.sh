docker run -v /usr/local/svn:/home/svn \
           -v /usr/local/svn/passwd:/etc/subversion/passwd \
           -v /usr/local/apache2:/run/apache2 \
           --name redm_axure \
           -p 3380:13380 \
           -p 3690:13960 \
           -e SVN_REPONAME=repos \
           -d docker.io/elleflorio/svn-server
