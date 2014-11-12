# service.pp

class haveged::service {

	if !($haveged::service_ensure in [ 'running', 'stopped' ]) {

		fail('service_ensure parameter must be running or stopped')
	}

	if $haveged::service_manage == true {

		service { $haveged::service_name:

			enable => $haveged::service_enable,
			ensure => $haveged::service_ensure,
		}
	}
}
