name             "tomcat-user-instance"
maintainer       "Nathan Mische"
maintainer_email "nmische@gmail.com"
license          "Apache 2.0"
description      "Installs a user instance of tomcat6 in the vagarnt project folder."
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.0.2"

%w{ ubuntu }.each do |os|
  supports os
end

depends "tomcat"
