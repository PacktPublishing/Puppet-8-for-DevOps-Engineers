class lab6_1 {
  contain lab6_1::install
  contain lab6_1::config
  contain lab6_1::service

  Class['lab6_1::install'] -> Class['lab6_1::config'] ~> Class['lab6_1::service']

}

class lab6_1::install {
  package { 'httpd':
    ensure => 'latest',
  }

  package { 'exampleapp':
    ensure  => 'latest',
    require => Package['httpd'],
  }
}

class lab6_1::config {
## Remember that autorequires on file user and group means it will automatically
## Detect dependancies between users, groups and files/directories so there is no
## need to declare

  file { '/etc/exampleapp/exampleapp.conf':
    ensure => file,
    owner  => 'exampleuser',
    group  => 'examplegroup',
  }

  file { '/etc/exampleapp':
    ensure => directory,
	owner  => 'exampleuser',
    group  => 'examplegroup',
  }
  
  user { 'exampleuser':
    ensure => present,
	gid    => 'examplegroup',
  }
  
  group { 'examplegroup':
    ensure => present,
  }
}

class lab6_1::service {
  service { 'httpd':
    ensure => 'running',
    notify => Service['exampleapp'],
  }

  service { 'exampleapp':
    ensure   => 'running',
  }
}

include lab6_1
