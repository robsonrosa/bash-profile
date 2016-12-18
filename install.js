#!/usr/bin/env node

'use strict';

const shell = require("shelljs");

install();

function install() {
  shell.exec('mv ~/.bash_profile ~/.bash_profile.bak 2>/dev/null');
  shell.exec(`cp -R "${__dirname}/dist/." ~/`);

  shell.echo(' **********************************************************************');
  shell.echo(' *   Everything is installed.                                         *');
  shell.echo(' *                                                                    *');
  shell.echo(' *   Main Commands:                                                   *');
  shell.echo(' *   - reset: reload your current bash_profile        => reset        *');
  shell.echo(' *   - change: change to desired pre-existing profile => change home  *');
  shell.echo(' *                                                                    *');
  shell.echo(' *   If this is your first time, restart your terminal                *');
  shell.echo(' *                                                                    *');
  shell.echo(' **********************************************************************');

  shell.echo('');
}