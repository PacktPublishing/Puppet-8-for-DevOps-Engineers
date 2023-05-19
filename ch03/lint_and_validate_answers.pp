package { "example":
# When variables are not mixed with tect only use single quotes
#package { 'example':
  ensure   => ['0.5.6'], 
# Extra spacing at end of line
#  ensure   => ['0.5.6'],
  provider  => 'gem',
# => are not aligned it should be taken as two spaces from the longest paramter name to line up all the arrows
#  provider => 'gem', 
}

file { '/Users/david.sandilands/code/Puppet-7-for-DevOps-Engineering/ch3'
# Missing the : at end of line this can also be spotted as the coloring no longer looks right
#file { '/Users/david.sandilands/code/Puppet-7-for-DevOps-Engineering/ch3': 
  ensure => 'directory',
  mode   => '0755',
}
