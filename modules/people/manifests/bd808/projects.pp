class people::bd808::projects {
  include dnsmasq

  # DNS wildcard for MediaWiki-Vagrant default IP address
  dnsmasq::address { 'vm':
    ipaddr => '10.11.12.13'
  }
}
