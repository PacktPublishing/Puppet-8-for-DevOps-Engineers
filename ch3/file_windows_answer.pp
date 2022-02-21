file { 'c:\inetpub\wwwroot':
  ensure       => 'directory',
  recurse      => true,
  purge        => true,
  recurselimit => '1'
}

file { 'c:\inetpub\wwwroot\page':
  ensure       => 'file',
  source       => 'nfsshare1:\\publish\page.html',
  validate_cmd => 'c:\program files\httpvalidator\httpvlidate.exe'
}

file { 'c:\program files\httpvalidator\httpvlidate.exe':
  target  => 'c:\Users\david\Desktop',
  replace => true
}
