# encoding: utf-8

require 'spec_helper'

# RSpec.configure do |c|
#   c.before :all do
#     c.path = '/sbin:/usr/sbin'
#   end
# end

describe 'Mongo Daemon' do

  it 'is listening on port 27017' do
    expect(port('27017')).to be_listening
  end

  it 'has a running service of mongod' do
    expect(service('mongod')).to be_running
  end

end
