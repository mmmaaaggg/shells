docker run --rm -d -p 15580:80 --name axure-web
           -v /home/axure/prototype_web:/usr/share/nginx/html
           -v /home/axure/logs:/var/log/nginx
