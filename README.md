# &nbsp;![CUx-Daemon](https://github.com/jens-maus/cuxd/raw/master/docs/cuxd.png)

[![Release](https://img.shields.io/github/release/jens-maus/cuxd.svg)](https://github.com/jens-maus/cuxd/releases/latest)
[![Downloads](https://img.shields.io/github/downloads/jens-maus/cuxd/latest/total.svg)](https://github.com/jens-maus/cuxd/releases/latest)
[![Issues](https://img.shields.io/github/issues/jens-maus/cuxd.svg)](https://github.com/jens-maus/cuxd/issues)
[![Build Status](https://travis-ci.org/jens-maus/cuxd.svg?branch=master)](https://travis-ci.org/jens-maus/cuxd)
[![Code Climate](https://codeclimate.com/github/jens-maus/cuxd/badges/gpa.svg)](https://codeclimate.com/github/jens-maus/cuxd)
[![License](https://img.shields.io/badge/License-BSD%203--Clause-blue.svg)](https://opensource.org/licenses/BSD-3-Clause)
[![Donate](https://img.shields.io/badge/Donate-PayPal-green.svg)](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=PRZ6MMMLY44RE)

This repository hosts the CCU-Addon build environment for the CUx-Daemon (CUxD) project (http://cuxd.de) which provides a universal interface between the HomeMatic/CCU layer (ReGa HSS) and third-party external and virtual devices.

## Supported CCU Devices

An installation of the CUxD Addon is currently supported on the following CCU devices:
* HomeMatic CCU1
* HomeMatic CCU2 / YAHM / LXCCU
* RaspberryMatic

## Installation

1. Download the latest CUxD release.
2. Upload it via the HomeMatic WebUI provided Addon functionality.
3. Configure CUxD via http://homematic-ccu2/addons/cuxd

## Documentation

Documentation in form of pdf files can be downloaded from https://homematic-forum.de/forum/viewtopic.php?f=37&t=15298.

## License

The CUxD build environment as published in this Github repository is provided under the BSD license. While source code files provided with the build environment are also released under the same license, binaries files (e.g. 'cuxd', 'redir.ccc', 'index.ccc') are licensed under a properitary closed-source license and just added to this repository to allow to automatically generate release archives.

## Authors

* CUxD is developed by Uwe Langhammer (uwe111) with certain parts being previously developed by Alex Krypthul.
* Parts of the build environment for CUxD has been developed by Jens Maus.
