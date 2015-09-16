
class citrix::params {

      $version = '5.6.7'
      $java = 'java-1.7.0-openjdk'

       case $::osfamily {
       'RedHat': {
          case $::operatingsystemmajrelease 
          { 
           '6' : {

           $packages = [ 'postgresql', 'postgresql-server', 'postgresql-jdbc', 'postgresql-devel', 'redhat-lsb-core', 'ImageMagick', 'openmotif', 'XenDesktopVDA']
                 $citrix_services = [ 'ctxvda' ]
        }

       }
    }
    default: {
      fail("This ${module_name} module is not supported on a ${::osfamily} based system.")
    }
  }

}
