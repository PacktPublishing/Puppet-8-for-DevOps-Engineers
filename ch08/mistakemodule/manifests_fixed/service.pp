# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include mistakemodule::service
class mistakemodule::service {
  service { 'mistake':
    ensure => 'present',
    enable => true,
  }
}
