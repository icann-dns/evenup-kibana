# == Class: kibana::service
#
# This class manages the kibana service
#
#
# === Authors
#
# * Justin Lambert <mailto:jlambert@letsevenup.com>
#
class kibana::service (
  $service_provider = $::kibana::service_provider 
) {
  service { 'kibana':
    ensure   => running,
    enable   => true,
    provider => $service_provider,
  }

}
