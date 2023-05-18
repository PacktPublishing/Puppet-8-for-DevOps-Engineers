Class {'packages_array_hash_paramters':
  package_names   => ['webrick','puma','sinatra'],
  package_options => { provider => 'gem',
                       version  => 'latest' }
}

class packages_array_hash_paramters (
  Array[string,1] $package_names,
  Hash            $package_options
)
{
  package { $package_names:
  *      => $package_options
  }
}
