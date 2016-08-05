include_recipe 'mongodb'

execute 'init replica set' do
  command 'mongo 192.168.10.5:27017 /tmp/data/script.js'
  action :run
end

#bash 'import data to mongodb server from csv' do
#  user 'root'
#  group 'root'
#  cwd '/tmp/data'
#  code 'mongoimport -h 192.168.10.5:27017 -d weather -c data --file data.csv --headerline --type csv'
#end
