# == Class secure_apache::install
#
# This class is called from secure_apache for install.
#
class secure_apache::install {

  package { $::secure_apache::package_name:
    ensure => present,
  }
}
