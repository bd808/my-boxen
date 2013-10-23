require boxen::environment
require homebrew

Exec {
  group       => 'staff',
  logoutput   => on_failure,
  user        => $boxen_user,

  path => [
    "${boxen::config::home}/rbenv/shims",
    "${boxen::config::home}/rbenv/bin",
    "${boxen::config::home}/rbenv/plugins/ruby-build/bin",
    "/usr/local/bin",
    '/usr/bin',
    '/bin',
    '/usr/sbin',
    '/sbin'
  ],

  environment => [
    "HOMEBREW_CACHE=${homebrew::config::cachedir}",
    "HOME=/Users/${::boxen_user}"
  ]
}

File {
  group => 'staff',
  owner => $boxen_user
}

Package {
  provider => homebrew,
  require  => Class['homebrew']
}

Repository {
  provider => git,
  extra    => [
    '--recurse-submodules'
  ],
  require  => File["${boxen::config::bindir}/boxen-git-credential"],
  config   => {
    'credential.helper' => "${boxen::config::bindir}/boxen-git-credential"
  }
}

Service {
  provider => ghlaunchd
}

Homebrew::Formula <| |> -> Package <| |>

node default {
  # core modules, needed for most things
  include dnsmasq
  include git

  # common apps
  include adium
  include apache
  include chrome
  include firefox
  include gimp
  include homebrew
  include inkscape
  include iterm2::stable
  include keepassx
  include libreoffice
  include virtualbox
  include vlc
  include xquartz

  # fail if FDE is not enabled
  if $::root_encrypted == 'no' {
    fail('Please enable full disk encryption and try again')
  }

  # homebrew additions
  package { 'aspell':
    before => Package['vim'],
  }

  package {
    [
      'coreutils',
      'curl',
      'gnu-sed',
      'gnupg',
      'mercurial',
      'python',
      'readline',
      'subversion',
      'tmux',
      'vim',
      'wget',
      'xz',
    ]:
      ensure => latest,
  }

}
