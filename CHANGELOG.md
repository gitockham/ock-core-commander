# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](http://keepachangelog.com/en/1.0.0/)
and this project adheres to [Semantic Versioning](http://semver.org/spec/v2.0.0.html).

## Unreleased

## 1.0.0 - 2019-02-11

### Changed

- All locations and commands are now assuming a Core 2.1 installation with TypeScript
- Moved all app configuration to `ecosystem.config.js` [See also](https://pm2.io/doc/en/runtime/guide/ecosystem-file/)
- A new npm dependency `dotenv` has been added. When updating from a previous  
version it is necessary to install it by executing `sudo npm install -g dotenv`  
followed by `npm link dotenv` inside the commander directory.
- When using `bip38` the password is no longer exposed in the process monitor.
- Starting the relay/forger/explorer manually is now easier:
    Relay:
    `pm2 start --only ock-core-relay`
    Forger without bip38 encryption:
    `pm2 start --only ock-core-forger`
    Forger with bip38 encryption:
    `pm2 start --only ock-core-forger -- --password ock`
    Explorer:
    `pm2 start --only ock-core-explorer`

### Removed
- Redis

## 0.2.0 - 2018-06-19

### Added
- Log level configuration via `.env`
- Host configuration via `.env`
- Port configuration via `.env`
- Database configuration via `.env`
- Vagrant Box for Ubuntu 16.04
- Vagrant Box for Ubuntu 17.10
- Vagrant Box for Ubuntu 18.04
- Vagrant Box for Debian 7.11
- Vagrant Box for Debian 8.10
- Vagrant Box for Debian 9.4

### Fixed
- Ubuntu 18.04 ntpd & timesyncd service collision
- Add `git fetch` to properly check for remote diffs
- `pm2 status` name collisions
- Directory removal issue during OCKHAM Core uninstall

### Changed
- Improved logging & installations by using tee
- Improved menu & UI flow
- Significantly reduced the amount of `sudo` requests
- Use `sed` to edit `.env` file instead of replacing the whole file

### Removed
- Container environment check

## 0.1.0 - 2018-06-14

### Added
- initial release
