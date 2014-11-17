#
# Cookbook Name:: cookbook_qubell_iis
# Recipe:: default
#
# Copyright 2014, QUBELL
#
# All rights reserved - Do Not Redistribute
#

windows_features=["NetFx4","NetFx3"]
windows_features.each do |f|
  windows_feature f do
    action :install
    all true
  end
end

powershell_script "Install Web-Asp-Net45" do
  flags "-ExecutionPolicy Unrestricted"
  code <<-EOH
    Add-WindowsFeature  Web-Asp-Net45
  EOH
end

include_recipe "iis"
include_recipe "iis::mod_aspnet"
include_recipe "iis::mod_isapi"
include_recipe "iis::mod_logging"
include_recipe "iis::mod_auth_basic"
include_recipe "iis::mod_tracing"
include_recipe "iis::mod_security"
include_recipe "iis::mod_auth_windows"
include_recipe "iis::mod_management"
include_recipe "iis::mod_security"
include_recipe "iis::mod_compress_dynamic"
include_recipe "iis::mod_compress_static"
include_recipe "iis::mod_iis6_metabase_compat"

powershell_script "disable_firewall" do
  flags "-ExecutionPolicy Unrestricted"
  code <<-EOH
    netsh advfirewall set allprofiles state off
  EOH
end

directory "#{Chef::Config[:node_path]}" do
  mode "0775"
  action :create
  recursive true
  owner node['current_user']
end
