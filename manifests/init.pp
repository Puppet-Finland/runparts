# == Class: runparts
#
# This class installs run-parts to allow convenient loading of configuration 
# fragments from a directory. This can be used in other Puppet modules.
#
# == Parameters
#
# None at the moment
#
# == Examples
#
# include runparts
#
# == Authors
#
# Samuli Seppänen <samuli.seppanen@gmail.com>
# Samuli Seppänen <samuli@openvpn.net>
#
# == License
#
# BSD-lisence
# See file LICENSE for details
#
class runparts {

# Rationale for this is explained in init.pp of the sshd module
if hiera('manage_runparts', 'true') != 'false' {

    # Installation of runparts is highly OS-specific, hence we use separate 
    # subclasses to do it.
    case $::osfamily {
        'Suse': { include runparts::suse }
        'RedHat': { include runparts::generic }
        'Debian': { include runparts::generic }
        default: { include runparts::generic }
    }
}
}
