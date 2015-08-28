# encoding: utf-8
require 'spec_helper'

describe package('memcached') do
  it { should be_installed }
end

describe service('memcached') do
  it { should be_enabled }
  it { should be_running }
end

describe port('11211') do
  it { should be_listening }
end

describe file('/etc/memcached.conf') do
  it { should be_file }
  it { should be_readable }
  it { should be_mode 644 }
  it { should be_owned_by 'root' }
  it { should be_grouped_into 'root' }
  its(:content) { should match(/-m 512/i) }
end
