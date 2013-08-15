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
      Package['phpenv'],
      Package['php-build'],
    ],
  }

  package {
    [
      'figlet',
      'graphviz',
      'ipv6calc',
      'par',
      'php-build',
      'phpenv',
      'rbenv',
      'ruby-build',
      'v8',
      'grep',
      'make',
      'tidy',
    ]:
    ensure => 'latest',
  }
}
