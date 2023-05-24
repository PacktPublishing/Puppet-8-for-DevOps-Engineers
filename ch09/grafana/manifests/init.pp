# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
# Class {'all_grafana_data_types':
#   port             => 8080,
#   service_enabled  => true,
#   file_options     => { name  => '/etc/grafana/grafana.ini',
#                         mode  => 0550,
#                         user  => 'grafana',
#                         group => 'root'
#                       },
#   grafana_password =>  'secretpassword'
# }
# @param port
#   The port for Grafana service to run on
# @param service_enabled
#   If the grafana service should be enabled
# @param file_options
#   The name of the configuration file and optionally file parameters
# @option [String] name
#   The full path of the configuration file
# @option [Integer[4]] mode
#   The mode to apply to the file
# @option [String] user
#   The user to own the file
# @option [String] group
#   The group to own the file
# @param grafana_password
#   Password to be used with grafana
# @param download_source
#  The source to download the installation package from
class grafana (
  Integer   $port,
  Boolean   $service_enabled,
  Sensitive $grafana_password,
  String    $download_source,
  Struct[{
      name  => String,
      mode  => String,
      owner => String,
      group => String,
  }] $file_options,
  Enum['gem','yum','windows'] $package_provider,
  String $package_version,
) {
  contain grafana::install
  contain grafana::config
  contain grafana::service

  Class['grafana::install']
  -> Class['grafana::config']
  ~> Class['grafana::service']
}
