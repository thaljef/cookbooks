name             'pinto'
maintainer       'Alexey Melezhik'
maintainer_email 'melezhik@gmail.com'
license          'All rights reserved'
description      'Installs/Configures pinto'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'
depends          'cpanminus'


%w{ debian centos }.each do |os|
  supports os
end

