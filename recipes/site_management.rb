#
# Cookbook Name:: cookbook_qubell_iis
# Recipe:: site_management 
#
# Copyright 2014, QUBELL
#
# All rights reserved - Do Not Redistribute
#

include_recipe "cookbook_qubell_iis"


if node[:cookbook_qubell_iis][:site_name].empty? 
  node.set[:cookbook_qubell_iis][:site_name]=nil
end
if node[:cookbook_qubell_iis][:site][:host_header].empty?
  node.set[:cookbook_qubell_iis][:site][:host_header]=nil
end
if node[:cookbook_qubell_iis][:site][:bindings].empty?
  node.set[:cookbook_qubell_iis][:site][:bindings]=nil
end
if node[:cookbook_qubell_iis][:site][:application_pool].empty?
  node.set[:cookbook_qubell_iis][:site][:application_pool]=nil
end
if node[:cookbook_qubell_iis][:site][:options].empty? 
  node.set[:cookbook_qubell_iis][:site][:options]=nil
end

directory "#{node[:cookbook_qubell_iis][:site][:path]}" do
  recursive true
  owner node[:current_user]
  mode '755'
  action :create
end

iis_site "#{node[:cookbook_qubell_iis][:site_name]}" do
  site_id node[:cookbook_qubell_iis][:site][:site_id]
  path node[:cookbook_qubell_iis][:site][:path]
  protocol node[:cookbook_qubell_iis][:site][:protocol]
  port node[:cookbook_qubell_iis][:site][:port]
  host_header node[:cookbook_qubell_iis][:site][:host_header]
  options node[:cookbook_qubell_iis][:site][:options]
  bindings node[:cookbook_qubell_iis][:site][:bindings]
  application_pool node[:cookbook_qubell_iis][:site][:application_pool]
  options node[:cookbook_qubell_iis][:site][:options]
  action node[:cookbook_qubell_iis][:site][:action]
end
