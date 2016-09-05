# encoding: utf-8
#
# Cookbook Name:: apacheenv
# Recipe:: default
#
# Copyright 2016, DBProductions
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'apache2'

directory node['apacheenv']['apachedir'] do
  owner node['apacheenv']['user']
  group node['apacheenv']['group']
  mode 00755
  action :create
end

web_app 'myvhost' do
  cookbook 'apacheenv'
  template 'vhost.conf.erb'
  server_name node['apacheenv']['hostname']
  server_aliases [node['apacheenv']['hostname']]
  docroot node['apacheenv']['apachedir']
  directory_options 'None'
end
