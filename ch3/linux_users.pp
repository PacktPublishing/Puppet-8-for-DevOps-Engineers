user {
  ['exampleappdev','exampleapptest','exampleappprod']:
  gid => 'exampleapp'
}

User['exampleappprod'] {
  purge_ssh_keys => true
}

group { 'exampleapp':
  ensure => 'present'
}

resources  { 'user':
  purge              => true,
  unless_system_user => true,
  noop               => true
}
