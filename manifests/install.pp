# install.pp

class haveged::install {

	package { $haveged::package_name:

		ensure => $haveged::package_ensure,
	}
}