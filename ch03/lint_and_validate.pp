package { "example":
  ensure   => ['0.5.6'], 
  provider  => 'gem',
}

file { '/Users/david.sandilands/code/Puppet-7-for-DevOps-Engineering/ch3'
  ensure => 'directory',
  mode   => '0755',
}
