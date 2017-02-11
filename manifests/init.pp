# Class: secure_apache
# ===========================
#
# Full description of class secure_apache here.
#
# Parameters
# ----------
#
# * `sample parameter`
#   Explanation of what this parameter affects and what it defaults to.
#   e.g. "Specify one or more upstream ntp servers as an array."
#
class secure_apache (
  $package_name = $::secure_apache::params::package_name,
  $service_name = $::secure_apache::params::service_name,
) inherits ::secure_apache::params {

  # validate parameters here

  class { '::secure_apache::install': } ->
  class { '::secure_apache::config': } ~>
  class { '::secure_apache::service': } ->
  Class['::secure_apache']
}
