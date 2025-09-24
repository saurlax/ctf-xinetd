#!/bin/sh
echo $FLAG > /flag;
xinetd -dontfork;
