# = Class: xrdp
#
# == Requires:
#
# Tested on RHEL6
#
# == Sample usage:
#
# class { 'xrdp': }
#
# == Notes:
#
# Need at least those other 3 packages installed. Otherwise, connection error.
#

class xrdp {
    package { [
        'xrdp',
        'xterm',
        'xorg-x11-fonts-Type1',
        'xorg-x11-twm',
    ]:
        ensure => installed,
    }

    service { 'xrdp':
        ensure  => running,
        enable  => true,
        require => Package['xrdp'],
    }
}
