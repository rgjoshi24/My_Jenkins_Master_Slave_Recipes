#
# Cookbook:: ChefRally_Jenkins_Master
# Recipe:: slave
#
# Copyright:: 2018, Student Name, All Rights Reserved.

include_recipe 'java'

jenkins_jnlp_slave 'smoke' do
  description     'Run high-level integration tests'
  remote_fs       '/tmp/jenkins/slaves/smoke'
  service_name    'jenkins-slave-smoke'
  executors       5
  usage_mode      'exclusive'
  availability    'demand'
  in_demand_delay 1
  idle_delay      3
  labels          %w(runner fast)
  user           'jenkins-smoke'
  group          'jenkins-smoke'
end
