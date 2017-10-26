#
# Cookbook:: postgresql
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

package 'postgresql-server' do
	notifies :run, 'execute[postregsql-init]'
end

execute 'postregsql-init' do
	command 'postregsql-setup initdb'
	action :nothing
end

service 'postregsql' do 
	action [:enable, :start]
end 
