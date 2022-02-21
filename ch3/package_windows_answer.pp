package { 'Ruby dev kit':
  source          => 'c:\tmp\rubyinstaller-devkit-3.1.1.1-1-x64.exe',
  install_options => ['/VERYSILENT']
}

package { 'activerecord':
  ensure   => '> 7 <9',
  provider => 'gem'
}
