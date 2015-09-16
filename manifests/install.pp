
class citrix::install inherits citrix {

    package { $java : 
           ensure =>  '1.7.0.79-2.5.5.4.el6',
   }

   package { $packages :
           ensure => 'installed',
           install_options => ['--nogpgcheck'],
   }
}
