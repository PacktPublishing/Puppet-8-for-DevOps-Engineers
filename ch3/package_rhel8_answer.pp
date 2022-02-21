package { 'activerecord':
  ensure  => '> 7',
  provide => 'gem'
}

package { 'cowsay':
  ensure => 'latest'
}

package { 'fun games':
  ensure => '2005-xp',
  name   => 'pinball'
}
