include_recipe 'rabbitmq'
include_recipe 'rabbitmq::virtualhost_management'
include_recipe 'rabbitmq::user_management'
include_recipe 'rabbitmq::plugin_management'

rabbitmqadmin_path = node['rabbit']['rabbitmqadmin']['path'] + '/' +
                     node['rabbit']['rabbitmqadmin']['file']
rabbitmqadmin_url = node['rabbit']['rabbitmqadmin']['url']
rabbitmqadmin_user = node['rabbit']['rabbitmqadmin']['user']
rabbitmqadmin_group = node['rabbit']['rabbitmqadmin']['group']

# Restart service if we just added the new plugin
service 'rabbitmq-server' do
  action :restart
  not_if { File.exist?("#{Chef::Config[:file_cache_path]}/rabbitmqadmin_restarted") }
end
file "#{Chef::Config[:file_cache_path]}/rabbitmqadmin_restarted" do
  content 'restarted'
  not_if { File.exist?("#{Chef::Config[:file_cache_path]}/rabbitmqadmin_restarted") }
end

# Download the rabbitmqadmin script
remote_file rabbitmqadmin_path do
  source rabbitmqadmin_url
  user rabbitmqadmin_user
  group rabbitmqadmin_group
  mode '755'
  only_if 'sleep 5', timeout: 6
end

# vhost definination
rabbitmq_vhost '/events' do
  action :add
end

rabbitmq_user 'rabbit' do
  password 'rabbit'
  action :add
end

rabbitmq_user 'rabbit' do
  vhost '/'
  permissions '.* .* .*'
  action :set_permissions
end

rabbitmq_user 'rabbit' do
  tag 'management'
  action :set_tags
end
