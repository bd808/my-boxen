class people::bd808::applications {
  include bettertouchtool
  include dockutil
  include dropbox
  include geektool
  include googledrive
  include heroku
  include omnigraffle
  include slate

  # homebrew additions
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
