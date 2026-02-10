#!/bin/sh

nucleus_config=$HOME/dotfiles/.config/nucleus-shell/config/configuration.json

if [ $(jq ".bar.enabled" $nucleus_config) = "true" ]; then
	jq --indent 4 ".bar.enabled = false" "$nucleus_config" >/tmp/configuration.json && mv /tmp/configuration.json "$nucleus_config"
else
	jq --indent 4 ".bar.enabled = true" "$nucleus_config" >/tmp/configuration.json && mv /tmp/configuration.json "$nucleus_config"
fi
