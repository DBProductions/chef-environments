# encoding: utf-8
#
# Cookbook Name:: mongodbenv
# Recipe:: default
#
# Copyright 2016, DBProductions
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'mongodb'

#bash "import_data" do
#  user "root"
#  code <<-EOH
#    mongo 192.168.10.5:27017/rabbit /tmp/data/import.js
#  EOH
#end

#execute "install-mongodb-config" do
#  command "mongo 192.168.0.5:27017 /tmp/data/script.js"
#  action :run
#end
