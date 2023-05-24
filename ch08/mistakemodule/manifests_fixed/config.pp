# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include mistakemodule::config
class mistakemodule::config {
  file { '/etc/mistakeconfig':
    ensure => file,
    content => 'This is just dummy content',
  }
}
