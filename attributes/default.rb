require 'socket'
ip_list = Socket.ip_address_list
ip = String.try_convert(ip_list.at(1).ip_address)

default['mb_apache_haproxy']['java'] = 'java-1.6.0-openjdk'
default['mb_apache_haproxy']['httpd'] = 'httpd'

default['index.html']['title'] = 'Authored by Jane Doe'
default['index.html']['body'] = 'Hello world!'
default['index.html']['ipaddy'] = ip


