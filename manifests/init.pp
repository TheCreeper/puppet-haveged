# init.pp

class haveged (

	$package_ensure = latest,
	$package_name = 'haveged',

	$service_manage = true,
	$service_enable = true,
	$service_ensure = running,
	$service_name = 'haveged',

) {

	validate_string($package_ensure)
	validate_string($package_name)

	validate_bool($service_manage)
	validate_bool($service_enable)
	validate_string($service_ensure)
	validate_string($service_name)

	class{ 'bitlbee::install': }->
	class{ 'bitlbee::service': }
}