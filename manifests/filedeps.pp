
class citrix::filedeps inherits citrix {

      host { "$hostname":
            ip => "127.0.0.1",
            host_aliases => [ "$fqdn", 'localhost', 'localhost.localdomain' ]
      }

      host { "$fqdn":
            ip => "$ipaddress",
            host_aliases => "$hostname", 
      }

 file { [ "/etc/polkit-1/", "/etc/polkit-1/localauthority", "/etc/polkit-1/localauthority/30-site.d" ]:
    ensure   => directory,
    owner    => root,
    group    => root,
    mode     => 755,
  }

   file { '/etc/polkit-1/localauthority/30-site.d/20-no-show-proxy-dialog.pkla' :
        ensure => 'file',
        path => '/etc/polkit-1/localauthority/30-site.d/20-no-show-proxy-dialog.pkla',
        owner    => root,
        group    => root,
        mode     => 755,
        source   => "puppet:///modules/citrix/dialog.pkla",
   }
}
