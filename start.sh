export MIX_ENV=prod
export PORT=4795

echo "Stopping old copy of app, if any..."

_build/prod/rel/hw06/bin/hw06 stop || true

echo "Starting app..."

# Start to run in background from shell.
#_build/prod/rel/memory/bin/memory start

# Foreground for testing and for systemd
_build/prod/rel/hw06/bin/hw06 foreground

# TODO: Add a cron rule or systemd service file
#       to start your app on system boot.
