default[:cookbook_qubell_iis][:pool][:name]=nil if node[:cookbook_qubell_iis][:pool][:name].empty 
default[:cookbook_qubell_iis][:pool][:runtime_version]="v4.0"
default[:cookbook_qubell_iis][:pool][:worker_idle_timeout]="00:00:00"
default[:cookbook_qubell_iis][:pool][:private_mem]="1600000"
default[:cookbook_qubell_iis][:pool][:max_proc]="0"
default[:cookbook_qubell_iis][:pool][:thirty_two_bit]=false
default[:cookbook_qubell_iis][:pool][:pool_username]=nil if node[:cookbook_qubell_iis][:pool][:pool_username].empty?
default[:cookbook_qubell_iis][:pool][:pool_password]=nil if node[:cookbook_qubell_iis][:pool][:pool_password].empty?

default[:cookbook_qubell_iis][:site][:name]=nil if node[:cookbook_qubell_iis][:site][:name].empty?
default[:cookbook_qubell_iis][:site][:product_id]=nil if node[:cookbook_qubell_iis][:site][:product_id].empty?
default[:cookbook_qubell_iis][:site][:site_id]=nil if node[:cookbook_qubell_iis][:site][:site_id].empty?
default[:cookbook_qubell_iis][:site][:path]="C:\www"
default[:cookbook_qubell_iis][:site][:protocol] = "http"
default[:cookbook_qubell_iis][:site][:port] = 80
default[:cookbook_qubell_iis][:site][:host_header]=nil if node[:cookbook_qubell_iis][:site][:host_header].empty?
default[:cookbook_qubell_iis][:site][:options]=nil if node[:cookbook_qubell_iis][:site][:options].empty?
default[:cookbook_qubell_iis][:site][:bindings]=nil if node[:cookbook_qubell_iis][:site][:options].empty?
default[:cookbook_qubell_iis][:site][:application_pool]=nil if node[:cookbook_qubell_iis][:site][:application_pool].empty?
default[:cookbook_qubell_iis][:site][:options]= nil if node[:cookbook_qubell_iis][:site][:options].empty?
default[:cookbook_qubell_iis][:site][:action] = [:add, :start]
