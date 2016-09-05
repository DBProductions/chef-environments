# encoding: utf-8
require 'spec_helper'

describe service('redis-server') do
  it { should be_running }
end

describe port('6379') do
  it { should be_listening }
end

describe file('/etc/redis/redis.conf') do
  it { should be_file }
  it { should be_readable }
  it { should be_mode 644 }
  it { should be_owned_by 'redis' }
  it { should be_grouped_into 'redis' }
end
