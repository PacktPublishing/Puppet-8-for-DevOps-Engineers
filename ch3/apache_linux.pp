package { 'httpd':}

service { 'httpd':
  ensure  => 'running',
  enable  => 'true',
  require => package['httpd']
}

file { '/var/www/html/index.html ':
  ensure  => 'file',
  content => '<html>\n<head>\n</head>\n<body>\n  <h1>Hello World<h1>\n</body>\n</html>',
  notify  => Service['httpd'],
  require => Package['httpd']
}

file { '/etc/httpd/conf/httpd.conf ':
  ensure       => 'file',
  source       => 'https://raw.githubusercontent.com/PacktPublishing/Puppet-7-for-DevOps-Engineering/main/ch3/httpd.conf',
  notify       => Service['httpd'],
  require      => Package['httpd'],
  validate_cmd => '/usr/sbin/apache2 -t -f %'
}
