# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include grafana::config
class grafana::config {
  file { 'grafana.ini':
    ensure  => 'file',
    content => "[server]\nprotocol = HTTP\nhttp_port = ${grafana::port}",
    *       => $grafana::file_options,
  }
}
