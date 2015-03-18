Enketo Core Perfomance Monitor
===========

An app that continuously monitors the loading performance in PhantomJS of a set of benchmark XForms and posts results to a Graphite server.

## Setup

1. Install graphite server
2. Install phantomjs and add to PATH 
2. git clone enketo-core
4. create empty `temp` folder in enketo-core
3. set up post-commit hook to always keep enketo-core up-to-date and rebuild
4. git clone this app as a sibling of enketo-core:
   ___
     |__ enketo-core
     |__ enketo-core-performance monitor
5. configure in [config.json](./config.json)
6. test by running `./benchmark -f bench2.xml`
7. setup cron job for `./benchmark -a`
