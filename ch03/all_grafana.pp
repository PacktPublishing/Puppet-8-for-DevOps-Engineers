case $facts['os']['family'] {
  'windows': {
    $package_options = {
      'source' => 'https://dl.grafana.com/oss/release/grafana-8.4.3.windows-amd64.msi'
    }
    $service options = {
      'logonaccount' => 'LocalSystem'
    }
    $file_options = {
      'name' => 'C:\Program Files\GrafanaLabs\grafana\conf\grafana.ini'
    }
  }
  default:  {
    $package_options = {
      'source' => 'https://dl.grafana.com/enterprise/release/grafana-enterprise-8.4.3-1.x86_64.rpm'
    }
    $service options = ''
    $file_options = {
      'name' => '/etc/grafana/grafana.ini '
    }
  }
}

package { 'grafana':
  * => $package_options
}
service { 'grafana':
  ensure  => 'running',
  enable  => 'true',
  require => Package['grafana'],
  *       => $service_options
}
file { 'grafana.ini':
  ensure  => 'file',
  content => '[server]\nprotocol = HTTP\nhttp_port = 8080',
  notify  => Service['grafana'],
  require => Package['grafana'],
  *       => $file_options
}
