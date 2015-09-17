# encoding: utf-8
#
# Cookbook Name:: nodejsenv
# Recipe:: default
#
# Copyright 2015, DBProductions
#
# All rights reserved - Do Not Redistribute
#


directory node['nodejsenv']['appdir'] do
  owner 'vagrant'
  group 'vagrant'
  mode '0755'
  action :create
end

case node['nodejsenv']['resource']
when 'file'
  execute 'copy files from app folder' do
    command "sudo cp -r /tmp/app/* #{node['nodejsenv']['appdir']}"
  end
when 'repository'
  git node['nodejsenv']['appdir'] do
    repository node['nodejsenv']['repository']
    revision node['nodejsenv']['branch']
    action :sync
  end
end

execute 'install dependencies' do
  command "cd #{node['nodejsenv']['appdir']} && npm install && sudo npm install -g pm2"
end

execute 'start application' do
  command "cd #{node['nodejsenv']['appdir']} && pm2 start #{node['nodejsenv']['appfile']} -i 0"
end
