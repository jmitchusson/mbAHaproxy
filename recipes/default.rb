[node['mb_apache_haproxy']['java'], node['mb_apache_haproxy']['httpd']].each do |pkg|
  package pkg do
    action :install
  end
end

service node['mb_apache_haproxy']['httpd'] do
  action [:enable, :start]
end
