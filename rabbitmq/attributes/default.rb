# Setup rabbitmq defaults
default['rabbitmq']['default_user'] = 'guest'
default['rabbitmq']['default_pass'] = 'guest'

# Setup some variables
default['rabbit']['rabbitmqadmin']['path'] = '/usr/sbin'
default['rabbit']['rabbitmqadmin']['file'] = 'rabbitmqadmin'
default['rabbit']['rabbitmqadmin']['user'] = 'root'
default['rabbit']['rabbitmqadmin']['group'] = 'root'
default['rabbit']['rabbitmqadmin']['url'] = 'http://localhost:15672/cli/' +
                                            node['rabbit']['rabbitmqadmin']['file']

# Setup plugins used
default['rabbit']['enabled_plugins'] = ['rabbitmq_management']

# Setup enabled users
default['rabbit']['enabled_users'] = []

default['rabbit']['enabled_vhosts'] = ['/','/test']

# Setup topic exchanges
default['rabbit']['topic_exchanges'] = [ { 'exchange' => 'chef-exchange', 'type' => 'fanout', 'vhost' => '/', 'users' => ['rabbit'] } ]

# Overwrite node attributes of rabbit cookbook
set['rabbitmq']['enabled_plugins'] = node['rabbit']['enabled_plugins']
