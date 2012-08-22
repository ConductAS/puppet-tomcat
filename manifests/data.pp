class tomcat::data {
  $tomcat_version    = '7'
  $tomcat_home       = "/usr/share/tomcat${tomcat_version}"
  $tomcat_service    = "tomcat${tomcat_version}"
  $tomcat_conf_dir   = "/etc/tomcat${tomcat_version}"
  $tomcat_autodeploy = 'true'

  $tomcat_roles = ['manager-gui', 'admin-gui']
  $tomcat_users = [
    { username => 'admin',  password => 'uoWei4Ah', roles => 'manager-gui,admin-gui' },
  ]
}
