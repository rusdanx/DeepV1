#!/bin/bash

# 1. Download the Falcon Sensor package and wait until it's complete
wget https://storage.googleapis.com/falcon-sensor.appspot.com/ubuntu/7.16.16903/falcon-sensor_7.16.0-16903_amd64.deb

# 3. Change the permissions of the downloaded package
sudo chmod 777 falcon-sensor_7.16.0-16903_amd64.deb
