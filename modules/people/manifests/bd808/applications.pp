class people::bd808::applications {
  include bettertouchtool
  include dockutil
  include dropbox
  include geektool
  include googledrive
  include growl
  include heroku
  include limechat
  include monolingual
  include omnigraffle::pro
  include onyx
  include pckeyboardhack
  include pckeyboardhack::login_item
  include secondbar
  include skype
  include slate
  include slimbatterymonitor
  include thunderbird
  include vagrant

  pckeyboardhack::bind { 'remap capslock to ESC':
    mappings => { 'capslock' => 53 }
  }
}
