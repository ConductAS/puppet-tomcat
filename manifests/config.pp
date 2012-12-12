class tomcat::config(
  $version    = hiera('tomcat_version'),
  $home       = hiera('tomcat_home'),
  $conf_dir   = hiera('tomcat_conf_dir'),
  $roles      = hiera('tomcat_roles'),
  $users      = hiera('tomcat_users'),
  $autodeploy = hiera('tomcat_autodeploy'),
  $jdbc_pgsql = undef,
  ) {
  file {
    "${conf_dir}/tomcat-users.xml":
      ensure  => present,
      content => template('tomcat/tomcat-users.xml.erb');

    "${conf_dir}/server.xml":
      ensure  => present,
      content => template('tomcat/server.xml.erb');

    "${conf_dir}/context.xml":
      ensure  => present,
      content => template('tomcat/context.xml.erb');
  }
}
