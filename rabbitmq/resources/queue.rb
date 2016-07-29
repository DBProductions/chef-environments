# resources/queue.rb
#
# Copyright 2015, StoryDOCKS
#

actions(:declare, :delete)
default_action(:declare)

attribute(:vhost, kind_of: String, required: true)
attribute(:queue, kind_of: String, name_attribute: true)
attribute(:attrs, kind_of: Hash,   default: {})
