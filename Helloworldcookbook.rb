package 'apache' do
        package_name 'httpd'
end
service 'httpd' do
        action [:enable,:start]
end
file '/var/www/html/index.html' do
        content '<html>

<head>

<title>Hello World</title>

</head>

<body>

<h1>Hello World!</h1>

</body>

</html>

'
        mode '0777'
        owner 'root'
        group 'wheel'
end

