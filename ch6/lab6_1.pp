class lab6_1 {
  include lab6_1::install,lab6_1::config,lab6_1::service
}

class lab6_1::install {
  package { 'httpd':
    ensure => 'latest',
  }

  package { 'exampleapp':
    ensure => 'latest',
  }
}

class lab6_1::config {
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
    ensure   => 'running',
  }

  service { 'exampleapp':
    ensure   => 'running',
  }
}

include lab6_1
