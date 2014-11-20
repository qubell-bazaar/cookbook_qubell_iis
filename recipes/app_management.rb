#
# Cookbook Name:: cookbook_qubell_iis
# Recipe:: app_management 
#
# Copyright 2014, QUBELL
#
# All rights reserved - Do Not Redistribute
#

include_recipe "cookbook_qubell_iis"

directory "#{node[:cookbook_qubell_iis][:app][:path]}" do
  recursive true
  owner node[:current_user]
  mode '755'
  action :create
end

iis_app "#{node[:cookbook_qubell_iis][:site_name]}" do
  path node[:cookbook_qubell_iis][:application_name]
  application_pool node[:cookbook_qubell_iis][:app][:application_pool]
  physical_path node[:cookbook_qubell_iis][:app][:path]
  enabled_protocols node[:cookbook_qubell_iis][:app][:protocol]
  action node[:cookbook_qubell_iis][:app][:action]
end
