# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include grafana::install
class grafana::install {
  package { 'grafana':
    source   => $grafana::download_source,
    provider => $grafana::package_provider,
    ensure   => $grafana::package_version,
  }
}
