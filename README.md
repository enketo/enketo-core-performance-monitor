Enketo Core Performance Monitor
===========

An app that continuously monitors Enketo Core's loading performance in PhantomJS for a set of benchmark XForms. It posts results to a Graphite server.

## Setup

1. Install graphite server
2. Install phantomjs, node (v0.10), bower, and grunt-cli
3. Install libxml and libxstl with `apt-get install libxml2-dev libxslt1-dev`
3. git clone enketo-core and build with `npm install && bower install && grunt`
4. create empty `temp` folder in enketo-core
6. git clone this app as a sibling of enketo-core and run 'npm install'
7. configure in [config.json](./config.json)
8. test by running `./benchmark -f bench2.xml`
9. setup cron job for `./benchmark -a`
5. set up post-commit hook to always keep enketo-core up-to-date and rebuild (using the enketo-core/update.sh script e.g.)


## Live Results

<img src="http://45.55.149.61//render?from=-1weeks&until=now&width=600&height=600&_salt=1426887918.062&title=Enketo%20Core%20Render%20Performance&lineMode=connected&vtitle=milliseconds&target=core.bench12.render&target=core.bench1.render&target=core.bench10.render&target=core.bench11.render&target=core.bench2.render&target=core.bench3.render&target=core.bench4.render&target=core.bench5.render&target=core.bench6.render&target=core.bench7.render&target=core.bench8.render&target=core.bench9.render&target=core.sdiprofile.render&target=core.widgets.render&hideLegend=false&fontName=Sans&_uniq=0.2874870419036597"/>
