# == Class secure_apache::params
#
# This class is meant to be called from secure_apache.
# It sets variables according to platform.
#
class secure_apache::params {
  case $::osfamily {
    'Debian': {
      $package_name = 'secure_apache'
      $service_name = 'secure_apache'
    }
    'RedHat', 'Amazon': {
      $package_name = 'secure_apache'
      $service_name = 'secure_apache'
    }
    default: {
      fail("${::operatingsystem} not supported")
    }
  }
}
