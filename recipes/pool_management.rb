#
# Cookbook Name:: cookbook_qubell_iis
# Recipe:: pool_management 
#
# Copyright 2014, QUBELL
#
# All rights reserved - Do Not Redistribute
#

include_recipe "cookbook_qubell_iis"

if ( node[:cookbook_qubell_iis][:pool_name].empty?)
  node.set[:cookbook_qubell_iis][:pool_name] = nil
end
if (node[:cookbook_qubell_iis][:pool][:pool_username].empty?)
  node.set[:cookbook_qubell_iis][:pool][:pool_username]=nil
end
if (node[:cookbook_qubell_iis][:pool][:pool_password].empty?)
  node.set[:cookbook_qubell_iis][:pool][:pool_password]=nil
end

iis_pool "#{node[:cookbook_qubell_iis][:pool_name]}" do
  runtime_version node[:cookbook_qubell_iis][:pool][:runtime_version]
  worker_idle_timeout node[:cookbook_qubell_iis][:pool][:worker_idle_timeout]
  private_mem node[:cookbook_qubell_iis][:pool][:private_mem]
  max_proc node[:cookbook_qubell_iis][:pool][:max_proc]
  thirty_two_bit node[:cookbook_qubell_iis][:pool][:thirty_two_bit]
  pool_username node[:cookbook_qubell_iis][:pool][:pool_username]
  pool_password node[:cookbook_qubell_iis][:pool][:pool_password]
  action :"#{node[:cookbook_qubell_iis][:pool][:action]}"
end
