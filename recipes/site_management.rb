#
# Cookbook Name:: cookbook_qubell_iis
# Recipe:: pool_management 
#
# Copyright 2014, QUBELL
#
# All rights reserved - Do Not Redistribute
#

include_recipe "cookbook_qubell_iis"

iis_site "#{node[:cookbook_qubell_iis][:site][:name]}" do
  product_id node[:cookbook_qubell_iis][:site][:product_id]
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
