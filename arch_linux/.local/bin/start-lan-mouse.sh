#!/bin/bash
sleep 5
exec /usr/local/bin/lan-mouse daemon > /tmp/lan-mouse.log 2>&1
