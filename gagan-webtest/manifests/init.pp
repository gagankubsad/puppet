package { 'httpd':
ensure => 'present',
}
service {'httpd':
ensure=> 'running',
enable=> true,
require=> Package['httpd'],
}


file { '/var/www/html/index.html':
  content => 'welcome',
  ensure => 'present',
}
