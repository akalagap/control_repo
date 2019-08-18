node default {
  file { '/root/README':
    ensure  => file,
    content => $fqdn,
    owner   => 'root'
  }
}

node 'master.puppet.vm' {
  include role::master_server

  file { '/root/README':
    ensure  => file,
    content => "You are now logged into ${fqdn}",
    owner   => 'root'
  }
}

node 'web.puppet.vm' {
  include role::app_server
}

node 'db.puppet.vm' {
  include role::db_server
}
