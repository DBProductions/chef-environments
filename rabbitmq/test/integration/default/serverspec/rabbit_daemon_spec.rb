# encoding: utf-8
require 'spec_helper'

describe service('rabbitmq-server') do
  it { should be_enabled }
  it { should be_running }
end

describe port('5672') do
  it { should be_listening }
end

describe port('15672') do
  it { should be_listening }
end
