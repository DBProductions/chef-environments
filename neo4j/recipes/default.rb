# encoding: utf-8
#
# Cookbook Name:: neo4jenv
# Recipe:: default
#
# Copyright 2016, DBProductions
#
# All rights reserved - Do Not Redistribute
#

remote_file 'download neo4j archive' do
  path "/opt/neo4j-community-#{node['neo4jenv']['version']}-unix.tar.gz"
  source "http://dist.neo4j.org/neo4j-community-#{node['neo4jenv']['version']}-unix.tar.gz"
  owner 'vagrant'
  group 'vagrant'
  mode '0755'
  action :create
end

execute 'extract neo4j archive' do
  cwd '/opt'
  command "tar -zxf neo4j-community-#{node['neo4jenv']['version']}-unix.tar.gz"
end

file 'delete neo4j archive' do
  path "/opt/neo4j-community-#{node['neo4jenv']['version']}-unix.tar.gz"
  action :delete
end

execute "copy configuration" do
  cwd '/opt'
  command "cp /tmp/data/neo4j-server.properties /opt/neo4j-community-#{node['neo4jenv']['version']}/conf/neo4j-server.properties"
end

execute "set username" do
  command "export NEO4J_USERNAME=neo"
end

execute "set password" do
  command "export NEO4J_PASSWORD=neo"
end

execute "start database" do
  command "/opt/neo4j-community-#{node['neo4jenv']['version']}/bin/neo4j start"
end

#execute "import data" do
#  command "/opt/neo4j-community-#{node['neo4jenv']['version']}/bin/neo4j-shell -file /tmp/data/import.cql > /tmp/data/result.txt"
#end
