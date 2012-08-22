class tomcat(
  $version = hiera('tomcat_version'),
  $home    = hiera('tomcat_home'),
  $service = hiera('tomcat_service'),
  ) {
  class {
    'tomcat::packages':
      version => $version;

    'tomcat::config':
      version => $version,
      home    => $home;

    'tomcat::service':
      service => $service;
  }
  Class['tomcat::packages'] -> Class['tomcat::config']
  Class['tomcat::config'] -> Class['tomcat::service']
}
