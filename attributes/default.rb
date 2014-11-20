default[:cookbook_qubell_iis][:pool_name] = "" 
default[:cookbook_qubell_iis][:pool][:runtime_version]="4.0"
default[:cookbook_qubell_iis][:pool][:worker_idle_timeout]="00:00:00"
default[:cookbook_qubell_iis][:pool][:private_mem]=1600000
default[:cookbook_qubell_iis][:pool][:max_proc]=0
default[:cookbook_qubell_iis][:pool][:thirty_two_bit]=:false
default[:cookbook_qubell_iis][:pool][:pool_username]=""
default[:cookbook_qubell_iis][:pool][:pool_password]=""

default[:cookbook_qubell_iis][:site_name]=""
default[:cookbook_qubell_iis][:site][:site_id]=nil
default[:cookbook_qubell_iis][:site][:path]="C:\\inetpub\\wwwroot\\#{node[:cookbook_qubell_iis][:site_name]}"
default[:cookbook_qubell_iis][:site][:protocol] = :http
default[:cookbook_qubell_iis][:site][:port] = 80
default[:cookbook_qubell_iis][:site][:host_header]=""
default[:cookbook_qubell_iis][:site][:options]=""
default[:cookbook_qubell_iis][:site][:bindings]="http://*:80"
default[:cookbook_qubell_iis][:site][:application_pool]=""
default[:cookbook_qubell_iis][:site][:options]=""
default[:cookbook_qubell_iis][:site][:action] = ["add", "start"]

default[:cookbook_qubell_iis][:application_name]="/"
default[:cookbook_qubell_iis][:app][:application_pool]=""
default[:cookbook_qubell_iis][:app][:path]="C:\\inetpub\\wwwroot\\#{node[:cookbook_qubell_iis][:site_name]}"
default[:cookbook_qubell_iis][:app][:protocol]="http"
default[:cookbook_qubell_iis][:app][:action]="create"
