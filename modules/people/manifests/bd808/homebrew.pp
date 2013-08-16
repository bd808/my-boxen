class people::bd808::homebrew {
  include homebrew

  homebrew::tap { 'homebrew/dupes':
    before => [
      Package['grep'],
      Package['make'],
      Package['tidy'],
    ],
  }

  homebrew::tap { 'josegonzalez/php':
    before => [
      Package['php-build'],
      Package['phpenv'],
    ],
  }

  package { 'aspell':
    before => Package['vim'],
  }

  package {
    [
      'coreutils',
      'curl',
      'figlet',
      'gnu-sed',
      'gnupg',
      'graphviz',
      'grep',
      'ical-buddy',
      'ipv6calc',
      'libevent',
      'make',
      'par',
      'php-build',
      'phpenv',
      'python',
      'rbenv',
      'reattach-to-user-namespace',
      'ruby-build',
      'subversion',
      'tidy',
      'tmux',
      'v8',
      'vim',
      'wget',
    ]:
    ensure => 'latest',
  }
}
