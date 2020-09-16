docker run -d --hostname localhost \
    -p 10080:80 \
    -p 10443:443 \
    --name gitlab \
    -v /var/gitlab/docker.sock:/var/run/docker.sock \
    -v /var/gitlab/etc:/etc/gitlab \
    -v /var/gitlab/data:/var/data/gitlab \
    -v /var/gitlab/log:/var/log/gitlab \
    gitlab/gitlab-ce:latest
