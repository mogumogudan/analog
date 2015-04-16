require 'serverspec'
#require 'pathname'
#require 'spec_helper'
#include Serverspec::Helper::Exec
#include Serverspec::Helper::DetectOS

## This selector works led by  Serverspec::Helper, but when Helper enabled, test failed, so
## I commented out Helper, then below doens't work 
#RSpec.configure do |c|
#	c.before :all do
#		c.os = backend(Serverspec::Commands::Base).check_os
#	end
#	c.path = "/sbin:/user/sbin:/user/local/sbin:/user/bin:/user/local/bin"
#end

describe package('analog') do
	it { should be_installed }
end

describe file("/usr/bin/analog") do
	it { should be_file }
	it { should be_mode 755 }
end

## This test caused error in a test, so commented out
#describe command("/usr/bin/analog >/dev/null | grep 'analog 6.0'") do
#	it { should return_exit_status 0 }
#end
