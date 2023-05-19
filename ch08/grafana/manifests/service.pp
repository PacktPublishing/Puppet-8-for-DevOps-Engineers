# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include grafana::service
class grafana::service {
  service { 'grafana':
    ensure  => 'running',
    enable  => $grafana::service_enabled,
    require => Package['grafana'],
  }
}
