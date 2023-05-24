# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include mistakemodule
class mistakemodule {
  contain mistakemodule::install
   contain mistakemodule::config 
  contain mistakemodule::service

Class['mistakemodule::install'] -> 
Class['mistakemodule::config'] ->
Class['mistakemodule::service']
}
