# encoding: utf-8
#
# Cookbook Name:: mysqlenv
# Recipe:: default
#
# Copyright 2016, DBProductions
#
# All rights reserved - Do Not Redistribute
#

mysql_service 'default' do
  version node['mysqlenv']['version']
  initial_root_password 'root'
  action [:create, :start]
end

mysql_config 'hello' do
  instance 'default'
  source 'my.conf.erb'
  version node['mysqlenv']['version']
  action :create
end

bash "grant all privileges" do
  user "root"
  code <<-EOH
    mysql -S /var/run/mysql-default/mysqld.sock -u root -p"root" -e "GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY 'root' WITH GRANT OPTION; FLUSH PRIVILEGES;"
    mysql -S /var/run/mysql-default/mysqld.sock -u root -p"root" -e "CREATE DATABASE IF NOT EXISTS #{node['mysqlenv']['database']};"
  EOH
end
