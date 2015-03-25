Enketo Core Performance Monitor
===========

An app that continuously monitors Enketo Core's loading performance in PhantomJS for a set of benchmark XForms. It posts results to a Graphite server.

## Setup

1. Install graphite server
2. Install phantomjs, node (v0.10), bower, and grunt-cli
3. Install libxml and libxstl with `apt-get install libxml2-dev libxslt1-dev`
3. git clone enketo-core incl git submodules and build with `npm install && bower install && grunt`
4. create empty `temp` folder in enketo-core
6. git clone this app as a sibling of enketo-core and run 'npm install'
7. configure in [config.json](./config.json)
8. test by running `/path/to/benchmark -f bench2.xml`
9. setup cron job for `/path/to/benchmark -a`
10. set up [post-commit hook](https://gist.github.com/MartijnR/38621b556356111e87a2) - run with pm2 or forever - to always keep enketo-core up-to-date and rebuild using a [shell script](https://gist.github.com/MartijnR/716fd51f2c57adb91995).


## Live Results

<img src="http://performance.enketo.org//render?from=-24days&until=now&width=600&height=600&_salt=1426893692.136&title=Enketo%20Core%20Render%20Performance&lineMode=connected&vtitle=milliseconds&hideLegend=false&fontName=Sans&target=core.bench12.render&target=core.bench1.render&target=core.bench10.render&target=core.bench11.render&target=core.bench2.render&target=core.bench3.render&target=core.bench4.render&target=core.bench5.render&target=core.bench6.render&target=core.bench7.render&target=core.bench8.render&target=core.bench9.render&target=core.sdiprofile.render&target=core.widgets.render&_uniq=0.3311821629758924"/>

<img src="http://performance.enketo.org//render?from=-2weeks&until=now&width=600&height=600&_salt=1427299382.09&vtitle=milliseconds&title=Enketo%20Core%20Validation%20Performance%201&hideLegend=false&lineMode=connected&logBase=&target=core.widgets.validate&target=core.sdiprofile.validate&target=core.bench2.validate&target=core.bench3.validate&target=core.bench4.validate&target=core.bench5.validate&target=core.bench7.validate&target=core.bench8.validate&_uniq=0.5083600645884871"/>

<img src="http://performance.enketo.org//render?from=-2weeks&until=now&width=600&height=600&_salt=1427299389.335&vtitle=milliseconds&title=Enketo%20Core%20Validation%20Performance%202&hideLegend=false&lineMode=connected&logBase=&target=core.bench10.validate&target=core.bench9.validate&_uniq=0.6034161155112088"/>
