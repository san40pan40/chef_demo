template "#{node.nginx.dir}/sites-available/default.conf" do
  source 'default.conf.erb'
  mode '0644'
  notifies :reload, 'service[nginx]', :delayed
end

nginx_site 'default.conf'
