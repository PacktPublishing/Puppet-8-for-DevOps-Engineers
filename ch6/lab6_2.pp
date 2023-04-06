class lab6_2 {
  $variable = 'Class'
  $variable2 = 'Also Class'
  notify {"Answer 1 is: ${variable}":}
}

# /etc/puppetlabs/code/environments/production/manifests/site.pp
$variable = 'Global'
  notify {"Answer 2 is: ${variable}":}
  notify {"Answer 3 is: ${variable3}":}
  notify {"Answer 4 is: ${variable2}":}

node default {
  $variable  = 'Node'
  $variable3 = 'Also Node'
  include lab6_2
  notify {"Answer 5 is: ${lab6_2::variable2}":}
  notify {"Answer 6 is: ${variable2}":}
  notify {"Answer 7 is: ${variable}":}

}
  notify {"Answer 8 is: ${lab6_2::variable2}":}
