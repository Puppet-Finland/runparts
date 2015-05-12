# == Class: runparts::params
#
# Install runparts from a package in the operating system repositories
#
class runparts::install inherits runparts::params {

    package { 'runparts-runparts':
        ensure   => present,
        name => $::runparts::params::runparts_package,
    }
}
