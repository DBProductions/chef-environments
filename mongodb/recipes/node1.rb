include_recipe 'mongodb'

# bash 'import data from csv' do
#    user 'root'
#    group 'root'
#    cwd '/tmp/data'
#    code 'mongoimport -h 192.168.10.5:27017 -d weather -c data --file data.csv --headerline --type csv'
# end
