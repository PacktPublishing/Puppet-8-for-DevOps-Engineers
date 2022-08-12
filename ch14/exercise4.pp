## puppet apply this code on the primary server to create the sub group and then run puppet agent -t
node_group { 'All client patching':
  ensure               => 'present',
  environment          => 'production',
  override_environment => 'false',
  parent               => 'PE Patch Management',
  provider             => 'https',
  rule                 => ['or',
  ['=', 'name', 'pe-node-848361-0.us-west1-a.c.davidsand.internal'],
  ['=', 'name', 'pe-compiler-848361-0.us-west1-a.c.davidsand.internal']],
}
