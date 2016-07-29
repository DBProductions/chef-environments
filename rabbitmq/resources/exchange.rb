
actions :add, :delete

attribute :exchange, kind_of: String, name_attribute: true
attribute :type,     kind_of: String, default: 'fanout'
attribute :vhost,    kind_of: String, default: '/'
attribute :users,    kind_of: Array

def initialize(*args)
  super
  @action = :add
end
