# This file manages Puppet module dependencies.
#
# It works a lot like Bundler. We provide some core modules by
# default. This ensures at least the ability to construct a basic
# environment.

def github(name, version, options = nil)
  options ||= {}
  options[:repo] ||= "boxen/puppet-#{name}"
  mod name, version, :github_tarball => options[:repo]
end

# Includes many of our custom types and providers, as well as global
# config. Required.

github "boxen",             "3.0.2", :repo => "bd808/puppet-boxen"
github "property_list_key", "0.1.0"

# Core modules for a basic development environment. You can replace
# some/most of these if you want, but it's not recommended.

github "dnsmasq",    "1.0.0"
github "git",        "1.8.3", :repo => "bd808/puppet-git"
github "homebrew",   "1.4.6", :repo => "bd808/puppet-homebrew"
github "inifile",    "1.0.0", :repo => "puppetlabs/puppetlabs-inifile"
github "openssl",    "1.0.0"
github "repository", "2.2.0"
github "stdlib",     "4.1.0", :repo => "puppetlabs/puppetlabs-stdlib"
github "sudo",       "1.0.0"
github "xquartz",    "1.1.0"

# Optional/custom modules. There are tons available at
# https://github.com/boxen.

github "adium",       "1.1.1", :repo => "dieterdemeyer/puppet-adium"
github "bettertouchtool", "1.0.0", :repo => "lucadegasperi/puppet-bettertouchtool"
github "chrome",      "1.1.1"
github "dockutil",    "0.1.2", :repo => "grahamgilbert/puppet-dockutil"
github "dropbox",     "1.1.1"
github "firefox",     "1.1.1"
github "geektool",    "1.0.0", :repo => "bd808/puppet-geektool"
github "gimp",        "1.0.0"
github "googledrive", "1.0.2"
github "growl",       "1.0.4", :repo => "petems/puppet-growl"
github "heroku",      "2.0.0"
github "inkscape",    "1.0.3"
github "iterm2",      "1.0.3"
github "keepassx",    "1.0.0"
github "libreoffice", "4.1.0"
github "omnigraffle", "1.2.0"
github "osx",         "1.0.5", :repo => "bd808/puppet-osx"
github "secondbar",   "1.0.1"
github "slate",       "1.0.0"
github "slimbatterymonitor", "1.0.0", :repo => "bd808/puppet-slimbatterymonitor"
github "virtualbox",  "1.0.5"
github "vlc",         "1.0.4"
