
phpserver = search(:node, "layers:php-app").first

Chef::Log.info("********** The app's URL is '#{node['deploy']['php_training']['scm']['repository']}' **********")
Chef::Log.info("** PrivateIP : '#{node['opsworks']['layers']['php-app']['instances']['refresherday4nodeobjects']['private_ip']}' **")

file "/tmp/ip_addresses" do
  content "#{phpserver[:ip]}"
  mode 0644
  action :create
end