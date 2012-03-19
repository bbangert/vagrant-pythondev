Exec { path => '/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/opt/ruby/bin/' }
include common
include apt
package { ["libevent-dev", "git-core"]: ensure => "installed" }

$package_file = "/etc/apt/sources.list.d/python_packages.list"

$packages = [
# Python versions to include, uncomment the desired versions
#
#'python2.4', 'python2.4-dev',
#'python2.5', 'python2.5-dev',
#'python2.6', 'python2.6-dev',
'python2.7', 'python2.7-dev',
#'python3.1', 'python3.1-dev',
'python3.2', 'python3.2-dev',
] # End the packages array

define install_python_package {
    case $name {
      /^(.*)-dev/: { package { $name: ensure => latest, require => Package[$1] } }
      default:     { package { $name: ensure => latest, require => File[$package_file] } }
    }
}

apt::key {"DB82666C":
    source => "http://keyserver.ubuntu.com:11371/pks/lookup?op=get&search=0x5BB92C09DB82666C"
}

apt::sources_list {"python_packages":
    ensure  => present,
    content => "deb http://ppa.launchpad.net/fkrull/deadsnakes/ubuntu lucid main",
}

install_python_package { $packages: }
