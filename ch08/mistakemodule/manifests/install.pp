# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include mistakemodule::install
class mistakemodule::install {
  package { 'mistake':
    ensure => 'latest'
  }
}
