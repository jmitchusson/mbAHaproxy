[node['mb_apache_haproxy']['java'], node['mb_apache_haproxy']['httpd']].each do |pkg|
  package pkg do
    action :install
  end
end

service node['mb_apache_haproxy']['httpd'] do
  action [:enable, :start]
end

template '/var/www/html/index.html' do
  source 'index.html.erb'
  notifies :reload, 'service[httpd]', :immediately
end
