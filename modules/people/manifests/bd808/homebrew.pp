class people::bd808::homebrew {
  homebrew::tap { 'homebrew/dupes': }
  ->
  homebrew::tap { 'josegonzalez/php': }
  ->
  package {
    [
      "figlet",
      "graphviz",
      "ipv6calc",
      "par",
      "php-build",
      "rbenv",
      "ruby-build",
      "tidy",
      "v8",
    ]:
      ensure => latest,
  }
}
