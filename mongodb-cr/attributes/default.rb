default['mongodb']['dbconfig_file'] = '/etc/mongod.conf'
default['mongodb']['config']['logpath'] = '/var/log/mongo/mongod.log'
default['mongodb']['config']['dbpath'] = '/var/lib/mongo'
default['mongodb']['sysconfig_file'] = '/etc/default/mongod'
default['mongodb']['default_init_name'] = 'mongod'
default['mongodb']['instance_name'] = 'mongod'
default[:mongodb][:sysconfig]['DAEMON_OPTS'] = "--config #{node[:mongodb][:dbconfig_file]}"
default[:mongodb][:sysconfig]['CONFIGFILE'] = node[:mongodb][:dbconfig_file]
