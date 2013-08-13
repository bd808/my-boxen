class people::bd808::homebrew {
  package {
    [
      "figlet",
      "graphviz",
      "ipv6calc",
      "par",
      "rbenv",
      "ruby-build",
      "v8",
    ]:
      ensure  => present,
  }

  homebrew::tap { 'homebrew/dupes': }

  package {
    [
      "tidy",
    ]:
      ensure  => present,
      require => Homebrew::Tap['homebrew/dupes'],
  }

  homebrew::tap { 'josegonzalez/php': }

  package {
    [
      "php-build",
      "phpenv",
    ]:
      ensure  => present,
      require => Homebrew::Tap['josegonzalez/php'],
  }
}
