# encoding: utf-8

require 'spec_helper'

describe package('apache2') do
  it { should be_installed }
end

describe service('apache2') do
  it { should be_enabled   }
end

#describe port(80) do
#  it { should be_listening }
#end

describe file('/etc/apache2/apache2.conf') do
  it { should be_file }
end

describe file('/etc/apache2/sites-available/myvhost.conf') do
  it { should be_file }
end
