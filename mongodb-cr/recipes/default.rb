include_recipe "mongodb::10gen_repo"
include_recipe "mongodb::default"

node.default['mongodb']['config']['bind_ip'] = node[:opsworks][:instance][:private_ip]
node.default['mongodb']['config']['auth'] = true
