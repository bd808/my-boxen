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

github "boxen",      "3.0.1"

# Core modules for a basic development environment. You can replace
# some/most of these if you want, but it's not recommended.

#github "autoconf",   "1.0.0"
github "dnsmasq",    "1.0.0"
#github "gcc",        "2.0.1"
github "git",        "1.2.5"
github "homebrew",   "1.4.1", :repo => "bd808/puppet-homebrew"
#github "hub",        "1.0.3"
github "inifile",    "1.0.0", :repo => "puppetlabs/puppetlabs-inifile"
#github "nginx",      "1.4.2"
#github "nodejs",     "3.2.9"
github "openssl",    "1.0.0"
github "repository", "2.2.0"
#github "ruby",       "6.3.0"
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
github "heroku",      "2.0.0"
github "iterm2",      "1.0.3"
github "keepassx",    "1.0.0"
github "libreoffice", "4.0.4"
github "omnigraffle", "1.2.0"
github "osx",         "1.6.0"
github "slate",       "1.0.0"
github "virtualbox",  "1.0.5"
github "vlc",         "1.0.4"
