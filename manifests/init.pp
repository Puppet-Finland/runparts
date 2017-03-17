# == Class: runparts
#
# This class installs run-parts to allow convenient loading of configuration 
# fragments from a directory. This can be used in other Puppet modules.
#
# == Parameters
#
# [*manage*]
#   Manage runparts using Puppet. Valid values are true (default) and false.
#
# == Examples
#
#   include ::runparts
#
# == Authors
#
# Samuli Seppänen <samuli.seppanen@gmail.com>
#
# Samuli Seppänen <samuli@openvpn.net>
#
# == License
#
# BSD-license. See file LICENSE for details.
#
class runparts
(
    Boolean $manage = true
)
{

if $manage {

    include ::runparts::install
}
}
