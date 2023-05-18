Class {'all_grafana_data_types':
  port             => 8080,
  service_enabled  => true,
  file_options     => { name  => '/etc/grafana/grafana.ini',
                        mode  => 0550,
                        user  => 'grafana',
                        group => 'root'
                      },
  grafana_password =>  'secretpassword'
}

class all_grafana_data_types (
  Integer $port,
  String $download_source = 'https://dl.grafana.com/enterprise/release/grafana-enterprise-8.4.3-1.x86_64.rpm',
  Boolean $service_enabled,
  Struct[{name           => String,
          Optional[mode] => Integer[4],
          Optional[user] => String,
          Optional[group] => String }] $file_options,
  Sensitive $grafana_password
)
{
case $facts['os']['family'] {
  'windows': {
    $service options = {
      'logonaccount' => 'LocalSystem'
    }
  }
  default:  {
    $service options = ''
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
