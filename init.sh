#!/bin/bash

apt update && apt install vim mc apache2 -y
echo "Hello world from $(hostname)<br><table><tr><td>Public hostname: </td><td>$(curl http://169.254.169.254/latest/meta-data/public-hostname)</td></tr><tr><td>Public IP: </td><td>$(curl http://169.254.169.254/latest/meta-data/public-ipv4)</td></tr><tr><td>Availability zone: </td><td>$(curl http://169.254.169.254/latest/meta-data/placement/availability-zone)</td></tr></table></body</html>" > /var/www/html/index.html