node default {
  # This is where you can declare classes for all nodes.
  # Example:
  include docker
  class { 'hdm':
    hostname => $facts['hostname'],
    version  => '1.0.1',
  }
  file { '/var/tmp/secret_example':
    content => lookup('secret::example', undef, undef, 'Not yet set'),
  }
  class { 'hiera':
    hiera_version   => '5',
    hiera5_defaults => {
      'datadir'   => 'data',
      'data_hash' => 'yaml_data',
    },
    hierarchy       => [
      'name'        => 'Example yaml',
      'paths'       => ['nodes/%{trusted.certname}.eyaml', 'os/%{facts.os.family}.eyaml', 'common.yaml'],
      'lookup_key'  => 'eyaml_lookup_key',
      'options'     => {
        'pkcs7_private_key' => '/etc/puppetlabs/puppet/keys/private_key.pkcs7.pem',
        'pkcs7_public_key'  => '/etc/puppetlabs/puppet/keys/public_key.pkcs7.pem',
      }
    ],
    eyaml           => true,
  }
}
