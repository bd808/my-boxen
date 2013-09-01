class people::bd808::osx_settings {
  # configure osx settings
  include osx::software_update

  class { 'osx::airdrop::all_interfaces': ensure => 'absent' }

  include osx::airport::require_password_for_computer_to_computer_networks

  class { 'osx::appearance::colors':
    main      => 'graphite',
    highlight => 'purple',
  }
  class { 'osx::appearance::sidebar_icons': size => 'small' }

  boxen::osx_defaults { 'Disable dashboard':
    user => $::boxen_user,
    key => 'mcx-disabled',
    domain => 'com.apple.dashboard',
    value => true,
  }

  class { 'osx::desktop::displayed_items':
    internal_hard_drives => false,
    external_hard_drives => false,
    mounted_servers => false,
    removable_media => false,
  }

  include osx::dialogs::auto_expanding_print_dialog
  include osx::dialogs::auto_expanding_save_dialog
  include osx::dialogs::file_view_mode

  include osx::displays::auto_brightness_adjustment

  class { 'osx::dock::autohide': ensure => 'absent' }
  include osx::dock::disable_launch_animation
  include osx::dock::hidden_app_dimming
  class { 'osx::dock::icon_size': size => 32, }
  class { 'osx::dock::magnification': ensure => 'absent' }
  class { 'osx::dock::orientation': orientation => 'right' }
  include osx::dock::pinning
  class { 'osx::dock::style': style => '2D', }

  class { 'osx::finder::animations': ensure => 'absent' }
  include osx::finder::default_file_view_mode
  include osx::finder::default_location
  include osx::finder::disable_change_file_extension_warning
  include osx::finder::disable_emptying_trash_warning
  class { 'osx::finder::file_extensions': display_all => true }
  include osx::finder::icon_arrangement
  include osx::finder::path_bar
  include osx::finder::posix_title_path
  include osx::finder::quicklook_text_selection
  class { 'osx::finder::springing': ensure => 'absent' }
  include osx::finder::status_bar
  include osx::finder::unhide_library

  include osx::firewall::auto_allow_signed_applications

  include osx::global::disable_autocorrect
  include osx::global::disable_remote_control_ir_receiver
  include osx::global::disable_slow_animations
  class { 'osx::global::natural_mouse_scrolling': enabled => false, }

  class { 'osx::keyboard::control_access':
    mode => 'all_controls_including_dropdowns',
  }

  class { 'osx::login::guest': ensure => 'absent' }
  class { 'osx::login::retries_before_hint': attempts => 99 }
  include osx::login::style

  class { 'osx::menu_bar::airplay': ensure => 'absent' }
  class { 'osx::menu_bar::date': format => 'MMM d H:mm' }
  class { 'osx::menu_bar::transparency': ensure => 'absent' }

  class { 'osx::mission_control::dashboard_visibility': ensure => 'absent' }

  class { 'osx::network::dsstores': ensure => absent, }
  include osx::network::guest

  include osx::printing::quit_when_finished

  class { 'osx::sound::ui': ensure => 'absent' }

  include osx::system::update::automatic_downloads
  include osx::system::update::schedule
  class { 'osx::system::app_quarantine': ensure => absent, }
  class { 'osx::system::crash_reporter': ensure => absent, }
  class { 'osx::system::recovery_message':
    value => 'If found, please call +1 208-608-2513',
  }
  include osx::system::restart_on_hang
  class { 'osx::system::save_documents_to_icloud_by_default':
    ensure => 'absent',
  }
  class { 'osx::system::save_windows_on_quit':
    ensure =>'absent',
  }
  include osx::system::verbose_boot

  class { 'osx::time_machine::ask_to_use_new_disks_for_backup':
    ensure => 'absent',
  }
  include osx::time_machine::unsupported_network_volumes

  include osx::touchpad::gestures::app_expose
  class { 'osx::touchpad::gestures::four_finger_horizontal_swipe':
    effect => 'switch apps',
  }
  class { 'osx::touchpad::gestures::four_finger_vertical_swipe':
    effect => 'mission control',
  }
  include osx::touchpad::gestures::launchpad
  include osx::touchpad::gestures::page_swiping
  include osx::touchpad::gestures::secondary_click
  include osx::touchpad::gestures::tap_to_click
  include osx::touchpad::gestures::three_finger_horizontal_swipe

  include osx::universal_access::assistive_device_access

  class { 'osx::windows::animations': ensure => 'absent', }
  include osx::windows::miniaturize_on_double_click
  include osx::windows::scroll_bars

}
