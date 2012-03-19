define apt::ppa($key, $ppa="ppa", $ensure = present) {
  apt::key { $key:
    ensure => $ensure,
  }
  apt::sources_list {"${name}-${ppa}-${lsbdistcodename}":
    ensure => $ensure,
    content => template("apt/ppa-list.erb"),
  }
}
