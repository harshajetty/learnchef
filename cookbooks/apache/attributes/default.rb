default[:apache][:sites][:harshajetty2] = { "port" => 80, "domain" => "harshajetty2.mylabserver.com" }
default[:apache][:sites][:harshajetty2b] = { "port" => 80, "domain" => "harshajetty2b.mylabserver.com" }
default[:apache][:sites][:harshajetty3] = { "port" => 80, "domain" => "harshajetty3.mylabserver.com" }

 case node["platform"]
 when "centos"
       default["apache"]["package"] = "httpd"
 when "ubuntu"
      default["apache"]["package"] = "apache2"
 end
