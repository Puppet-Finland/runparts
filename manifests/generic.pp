# == Class runparts::generic
#
# Install runparts from a package in the operating system repositories
#
class runparts::generic {

    include runparts::params

    package { 'runparts-runparts':
        name => $runparts::params::runparts_package,
		ensure => present,
	}
}
