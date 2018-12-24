#! /bin/bash

echo "Adding avsm's ppa"
sudo add-apt-repository ppa:avsm/ppa -y

echo "Updating package lists"
sudo apt-get update

echo "Installing deps"
sudo apt-get install libgirepository1.0-dev libglib2.0-0 opam -y
