class tomcat(
  $version    = hiera('tomcat_version'),
  $home       = hiera('tomcat_home'),
  $service    = hiera('tomcat_service'),
  $roles      = hiera('tomcat_roles'),
  $jdbc_pgsql = undef,
  ) {
  class {
    'tomcat::packages':
      version => $version;

    'tomcat::config':
      version    => $version,
      home       => $home,
      roles      => $roles,
      jdbc_pgsql => $jdbc_pgsql;

    'tomcat::service':
      service => $service;
  }
  Class['tomcat::packages'] -> Class['tomcat::config']
  Class['tomcat::config'] -> Class['tomcat::service']
}
