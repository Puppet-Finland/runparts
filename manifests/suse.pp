# == Class runparts::suse
#
# For SuSE-based distros we install the run-parts script taken from CentOS 6 and 
# stored on the Puppet server.
#
class runparts::suse {
    file { 'runparts-run-parts':
        name => '/usr/bin/run-parts',
        source => 'puppet:///runparts/run-parts',
        ensure => present,
        owner => root,
        group => root,
        mode => 755,
    }
}
