#!/bin/sh

wpctl set-volume @DEFAULT_SINK@ $1
volume-control
