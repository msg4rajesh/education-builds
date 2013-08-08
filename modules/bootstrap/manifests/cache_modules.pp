class bootstrap::cache_modules(
  $cache_dir = '/usr/src/forge',
) {
  Bootstrap::Forge {
    cache_dir => $cache_dir,
  }

  file { $cache_dir:
    ensure => directory,
  }

  # These are the modules needed by the Fundamentals course

  bootstrap::forge { 'camptocamp-augeasfacter': 
    version => '0.1.0',
  }
  bootstrap::forge { 'domcleal-augeasproviders': 
    version => '0.7.0',
  }
  bootstrap::forge { 'cprice404-inifile': 
    version => '0.10.3',
  }
  bootstrap::forge { 'razorsedge-vmwaretools': 
    version => '4.4.1',
  }
  bootstrap::forge { 'hunner-wordpress': 
    version => '0.3.0',
  }
  bootstrap::forge { 'puppetlabs-mysql': 
    version => '0.6.1',
  }
  bootstrap::forge { 'puppetlabs-apache': 
    version => '0.6.0',
  }
  bootstrap::forge { 'thias-vsftpd': 
    version => '0.1.2',
  }
  bootstrap::forge { 'puppetlabs-firewall': 
    version => '0.3.1',
  }
  #  bootstrap::forge { 'saz-sudo': 
  # version => '2.2.0',
  #}
  bootstrap::forge { 'puppetlabs-vcsrepo': 
    version => '0.1.2',
  }

  # These are the additional modules needed by the Advanced course
  # puppetlabs-mysql is also needed
  bootstrap::forge { 'zack-haproxy': 
    version => '0.2.0',
  }
  bootstrap::forge { 'zack-irc': 
    version => '0.0.6',
  }
  bootstrap::forge { 'hunner-charybdis': 
    version => '0.2.0',
  }
  bootstrap::forge { 'puppetlabs-puppetdb': }
  bootstrap::forge { 'puppetlabs-apt': 
    version => '1.1.0',
  }
  bootstrap::forge { 'puppetlabs-postgresql': 
    version => '2.3.0',
  }
  bootstrap::forge { 'puppetlabs-pe_gem': 
    version => '0.0.1',
  }
  

  # These are the additional modules needed by the extending puppet using ruby course
  # puppetlabs-mysql and puppetlabs-apache are also needed

}