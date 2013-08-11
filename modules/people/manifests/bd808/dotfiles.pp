class people::bd808::dotfiles {
  $my_dotfiles ="/Users/${::luser}/.dotfiles"

  repository { $my_dotfiles:
    source   => 'git@bitbucket.org:bd808/dotfiles.git',
  }

  exec {"Install dotfiles":
    command => './install',
    cwd => $my_dotfiles,
    require => Repository[$my_dotfiles],
  }
}
