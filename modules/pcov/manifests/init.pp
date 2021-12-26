# A Chassis extension to install and configure PCOV on your Chassis server
class pcov (
	$config,
	$path        = '/vagrant/extensions/pcov',
	$php_version  = $config[php],
) {

	if ( ! empty( $config[disabled_extensions] ) and 'chassis/pcov' in $config[disabled_extensions] ) {
		$package = absent
		$file    = absent
	} else {
		$package = latest
		$file    = 'present'
	}
	package { "php${php_version}-pcov":
		ensure  => $package,
		require => Package["php${php_version}-fpm", "php${php_version}-cli"],
		notify  => Service["php${php_version}-fpm"],
	}
}
