# == Class secure_apache::service
#
# This class is meant to be called from secure_apache.
# It ensure the service is running.
#
class secure_apache::service {

  service { $::secure_apache::service_name:
    ensure     => running,
    enable     => true,
    hasstatus  => true,
    hasrestart => true,
  }
}
