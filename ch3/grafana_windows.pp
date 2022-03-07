package { 'grafana':
  source => 'https://dl.grafana.com/oss/release/grafana-8.4.3.windows-amd64.msi'
}
service { 'grafana':
  ensure       => 'running',
  enable       => 'true',
  logonaccount => 'LocalSystem',
  require      => Package['grafana']
}
file { 'C:\Program Files\GrafanaLabs\grafana\conf\grafana.ini':
  ensure  => 'file',
  content => '[server]\nprotocol = HTTP\nhttp_port = 8080',
  notify  => Service['grafana'],
  require => Package['grafana']
}
