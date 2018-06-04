# Docker container running headless latest Chrome on latest Debian

Most probably you will need to add the extra flag ```--no-sandbox``` to run it.

If you need to connect a remote debugger, use ```--remote-debug-address=0.0.0.0 --remote-debug-port=9222``` or so.

