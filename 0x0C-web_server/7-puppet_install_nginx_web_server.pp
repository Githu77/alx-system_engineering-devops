#nginx set up

package {
    'nginx':
    ensure => installed,
}

file {'/var/www/html/index.nginx-githu.html':
    content => 'Hello World!',
}

file_line {'configure redirection':
    path  =>  '/etc/nginx/sites-available/default',
    after =>  'server_name _;',
    line  =>  "\n\tlocation /redirect_me {\n\t\treturn 301 https://youtu.be/8HaTRLzcUIU?si=--IvsE-SgdfWB5QB;\n\t}\n",
}

service {'nginx':
    ensure => running,
}
