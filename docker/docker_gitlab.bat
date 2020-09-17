docker run -d --hostname localhost \
    -p 8888:80 \
    -p 10443:443 \
    -p 10022:22 \
    --name gitlab \
    -v /var/gitlab/etc:/etc/gitlab \
    -v /var/gitlab/data:/var/opt/gitlab \
    -v /var/gitlab/log:/var/log/gitlab \
    gitlab/gitlab-ce:latest
