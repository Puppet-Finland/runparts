#
# == Class: runparts::params
#
# Defines some variables based on the operating system
#
class runparts::params {

    case $::osfamily {
        'RedHat': {
            $runparts_package = 'crontabs'
        }
        'Debian': {
            $runparts_package = 'debianutils'
        }
        default: {
            fail("Unsupported operating system ${::osfamily}")
        }
    }
}
