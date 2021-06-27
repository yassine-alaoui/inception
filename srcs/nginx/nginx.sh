mkdir -p /run/nginx
echo "root:root"| chpasswd
nginx -g 'daemon off;';