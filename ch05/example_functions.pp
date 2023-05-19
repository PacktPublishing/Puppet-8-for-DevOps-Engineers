Class {'example_functions':
  user_prefix => 'user',
  user_number => 5
}


class example_functions (
  String $user_prefix,
  Integer $user_number
)
{
  $lowercase_prefix = $user_prefix.lowercase()
  $users_to_create = range("${lowercase_prefix}0","${lowercase_prefix}${user_number}")
  user { "${users_to_create}": }

  warning("getvar('os.windows.product_name','linux') ")

  if $facts['os.family'] == 'windows' {
    $audit_files = split($facts['path'], /;/)
  } else {
    $audit_files = split($facts['path'], /:/)
  }
  files { "$audit_files" :
    audit => true
  }
}
