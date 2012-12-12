class tomcat::packages(
  $version = hiera('tomcat_version'),
  ) {
  $packagelist = ["tomcat${version}", "tomcat${version}-admin", "tomcat${version}-user",
    'libapache2-mod-jk', 'libtcnative-1 ']

  package {
    $packagelist:
      ensure => installed;
  }
}
