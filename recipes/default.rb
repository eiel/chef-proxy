#
# Cookbook Name:: proxy-server
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'squid'

package 'httpd' do
  action :install
end

service 'httpd' do
  action [:enable, :start]
end

service 'iptables' do
  action [:unable, :stop]
end

file '/etc/hosts' do
  owner 'root'
  group 'root'
  contents <<-EOF
127.0.0.1   localhost
::1         localhost
EOF
end

file '/etc/httpd/conf.d/access.conf' do
  owner 'root'
  group 'root'
  contenst <<-EOF
<Directory "/var/www/html">
    Order deny,allow
    Deny from all
    Allow from 127.0.0.1
    Allow from ::1
</Directory>
EOF
end
