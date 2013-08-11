class people::bd808 {
  include bettertouchtool
  include dockutil
  include dropbox
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

  # configure osx settings
  include osx::disable_app_quarantine
  include osx::no_network_dsstores
  include osx::software_update

  include osx::dock::2d
  include osx::dock::dim_hidden_apps
  class { 'osx::dock::icon_size': size => 24, }

  include osx::finder::show_external_hard_drives_on_desktop
  include osx::finder::show_mounted_servers_on_desktop
  include osx::finder::show_removable_media_on_desktop
  include osx::finder::unhide_library

  include osx::global::disable_autocorrect
  include osx::global::disable_remote_control_ir_receiver
  include osx::global::enable_keyboard_control_access
  include osx::global::expand_print_dialog
  include osx::global::expand_save_dialog
  class { 'osx::global::natural_mouse_scrolling': enabled => false, }

}
