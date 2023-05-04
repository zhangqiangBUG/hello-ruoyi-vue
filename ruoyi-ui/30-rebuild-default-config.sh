#!/bin/sh

API_BASE_PATH=$API_BASE_PATH;

if [ -z "$API_BASE_PATH" ]; then
    API_BASE_PATH="http://localhost:8080/hello-vue-api/";
fi

apiUrl="proxy_pass $API_BASE_PATH;"
path3rd=$(echo $API_BASE_PATH | sed 's/^\(.*\)\(:\/\/\)\(.*\)/\1\2$1.\3$2/g')
apiUrl3rd="rewrite ^\/test-api\/api-3rd\/([^\/]+)\/(.*) $path3rd;"

sed -i '16c '"$apiUrl"'' /etc/nginx/conf.d/default.conf
