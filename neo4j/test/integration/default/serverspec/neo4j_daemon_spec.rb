# encoding: utf-8
require 'spec_helper'

#describe service('mysqld') do
#  it { should be_running }
#end

describe port('7474') do
  it { should be_listening }
end
