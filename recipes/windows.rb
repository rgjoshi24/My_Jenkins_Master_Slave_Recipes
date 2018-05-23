#
# Cookbook:: ChefRally_Jenkins_Master
# Recipe:: windows
#
# Copyright:: 2018, Student Name, All Rights Reserved.
node.default['java']['windows']['url'] = "https://s3.us-east-2.amazonaws.com/windows-oracle-java/jdk-8u171-windows-x64.exe"
node.default['java']['windows']['checksum'] = '841b20e904b7f46fe7c8ce88bd35148e9663c750c8336286d0eb05a0a5b203f4'
node.default['java']['windows']['package_name'] = 'Java(TM) SE Development Kit 8 (64-bit)'
include_recipe 'java::windows'

node.default['java']['home'] = 'C:\Program Files\Java\jdk1.8.0_171'

jenkins_windows_slave 'mywinslave' do
  remote_fs 'C:/Windows/Temp'
  user       '.\Administrator'
  password   ')6xEXgq3c78'
end
