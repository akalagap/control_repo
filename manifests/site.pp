node default {
  file { '/root/README':
    ensure  => file,
    content => 'Hello World',
    owner   => 'root'
  }
}

node 'master.puppet.vm' {
  include role::master_server
}

node 'web.puppet.vm' {
  include role::app_server
}

node 'db.puppet.vm' {
  include role::db_server
}
