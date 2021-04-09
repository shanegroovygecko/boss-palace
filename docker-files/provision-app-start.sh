#!/bin/bash


sudo service apache2 restart
service mysql restart

# this would have kept the server running if we had passed
# in a command from the command line.
#exec "$@";

while true; do sleep 1000; done

# Keep the server running with this final command
exec /bin/bash;
