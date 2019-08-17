node default {
  file { '/root/README':
    ensure  => file,
    content => 'Hello World',
    owner   => 'root'
  }
}

node master_server{
  include role::master_server
}
