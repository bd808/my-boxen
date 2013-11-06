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

  package {
    [
      'figlet',
      'graphviz',
      'grep',
      'ical-buddy',
      'ipv6calc',
      'libevent',
      'make',
      'mobile-shell',
      'par',
      'php-build',
      'phpenv',
      'rbenv',
      'reattach-to-user-namespace',
      'ruby-build',
      'tidy',
      'v8',
    ]:
    ensure => 'latest',
  }

  # pacakges needed to build a local php with php-build
  package {
    [
      'autoconf',
      'freetype',
      'gettext',
      'gmp',
      'icu4c',
      'jpeg',
      'libpng',
      'mcrypt',
      'openssl',
      'zlib',
    ]:
    ensure => 'latest',
  }
}
