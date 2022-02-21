file { '/etc/sudoers.d':
  ensure  => 'directory',
  recurse => true,
  purge   => true,
}

file { '/etc/sudoers.d/mongodb':
  ensure       => 'file',
  content      => 'robin All=(ALL) NOPASSWD: su – mongo',
  validate_cmd => '/sbin/visudo -c',
  owner        => 'root',
  group        => 'root',
  mode         => '0660'
}

file { '/opt/mongodb/mongos':
  target => '/home/robin/mongos',
}
