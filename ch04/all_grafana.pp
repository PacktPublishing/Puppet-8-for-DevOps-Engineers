Class {'all_grafana':
  port            => 8080,
  service_enabled => true
}

class all_grafana (
  Integer $port,
  String $download_source = 'https://dl.grafana.com/enterprise/release/grafana-enterprise-8.4.3-1.x86_64.rpm',
  Boolean $service_enabled
)
{
case $facts['os']['family'] {
  'windows': {
    $service options = {
      'logonaccount' => 'LocalSystem'
    }
    $file_options = {
      'name' => 'C:\Program Files\GrafanaLabs\grafana\conf\grafana.ini'
    }
  }
  default:  {
    $service options = ''
    $file_options = {
      'name' => '/etc/grafana/grafana.ini '
    }
  }
}

package { 'grafana':
  source => $download_source,
  *      => $package_options
}
service { 'grafana':
  ensure  => 'running',
  enable  => $service_enabled,
  require => Package['grafana'],
  *       => $service_options
}
file { 'grafana.ini':
  ensure  => 'file',
  content => "[server]\nprotocol = HTTP\nhttp_port = ${port}",
  notify  => Service['grafana'],
  require => Package['grafana'],
  *       => $file_options
}
}
