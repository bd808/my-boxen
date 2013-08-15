class people::bd808::osx_settings {
  # configure osx settings
  include osx::software_update

  class { 'osx::airdrop::all_interfaces': ensure => 'absent' }

  include osx::airport::require_password_for_computer_to_computer_networks

  class { 'osx::appearance::colors':
    main      => 'graphite',
    highlight => 'purple',
  }

  class { 'osx::dock::style': style => '2D', }
  include osx::dock::hidden_app_dimming
  include osx::dock::disable_launch_animation
  class { 'osx::dock::icon_size': size => 32, }

  include osx::dialogs::auto_expanding_print_dialog
  include osx::dialogs::auto_expanding_save_dialog
  include osx::dialogs::file_view_mode

  include osx::finder::disable_change_file_extension_warning
  include osx::finder::disable_emptying_trash_warning
  class {'osx::finder::show_external_hard_drives_on_desktop':
    enable => false,
  }
  class {'osx::finder::show_mounted_servers_on_desktop':
    enable => false,
  }
  class {'osx::finder::show_removable_media_on_desktop':
    enable => false,
  }
  include osx::finder::unhide_library

  include osx::global::disable_autocorrect
  include osx::global::disable_remote_control_ir_receiver
  class { 'osx::global::natural_mouse_scrolling': enabled => false, }

  class { 'osx::keyboard::control_access':
    mode => 'all_controls_including_dropdowns',
  }
  class { 'osx::network::dsstores': ensure => absent, }

  class { 'osx::system::app_quarantine': ensure => absent, }

}
