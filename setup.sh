#!/bin/bash

cd ~
[[ ! -d ~/bashrc ]] && git clone https://github.com/dr4g0nsr/bashrc && echo "~/bashrc/exec.sh" >> ~/.bashrc && echo "Setup done!"