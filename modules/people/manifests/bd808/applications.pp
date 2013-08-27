class people::bd808::applications {
  include bettertouchtool
  include dockutil
  include dropbox
  include geektool
  include googledrive
  include growl_fork
  include heroku
  include omnigraffle::pro
  include secondbar
  include slate
  include slimbatterymonitor

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
