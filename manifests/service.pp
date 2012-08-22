class tomcat::service(
  $service = hiera('tomcat_service'),
  ) {
  service {
    $service:
      ensure     => running,
      hasstatus  => true,
      hasrestart => true,
      subscribe  => Class['tomcat::config'];
  }
}
