Enketo Core Performance Monitor
===========

An app that continuously monitors Enketo Core's loading performance in PhantomJS for a set of benchmark XForms. It posts results to a Graphite server.

## Live Results

<img src="http://performance.enketo.org/render?from=-3months&until=now&width=600&height=750&_salt=1427818287.236&hideLegend=false&title=Enketo%20Core%20Render%20Performance%201&vtitle=milliseconds&target=core.widgets.render&target=core.ukraine.render&target=core.uganda.render&target=core.turkey.render&target=core.shop.render&target=core.haiti.render&target=core.iraq.render&target=core.drc.render&target=core.car.render&target=core.burundi.render&target=core.bench9.render&target=core.bench8.render&target=core.bench7.render&target=core.bench3.render&target=core.bench2.render&target=core.bench11.render&_uniq=0.3582709750626236" />

<img src="http://performance.enketo.org/render?from=-3months&until=now&width=600&height=750&_salt=1427818490.919&hideLegend=false&title=Enketo%20Core%20Render%20Performance%202&vtitle=milliseconds&target=core.bench1.render&target=core.bench10.render&target=core.bench12.render&target=core.bench4.render&target=core.bench5.render&target=core.bench6.render&target=core.sdiprofile.render&_uniq=0.5987276150844991" />

<img src="http://performance.enketo.org/render?from=-3months&until=now&width=600&height=750&_salt=1427812570.922&hideLegend=false&title=Enketo%20Core%20Validation%20Performance%201&vtitle=milliseconds&target=core.bench2.validate&target=core.bench3.validate&target=core.bench4.validate&target=core.bench5.validate&target=core.bench7.validate&target=core.bench8.validate&target=core.haiti.validate&target=core.sdiprofile.validate&target=core.widgets.validate&target=core.turkey.validate&_uniq=0.09886326431296766" />

<img src="http://performance.enketo.org/render?from=-3months&until=now&width=600&height=750&_salt=1427812702.648&hideLegend=false&title=Enketo%20Core%20Validation%20Performance%202&vtitle=milliseconds&target=core.bench9.validate&target=core.bench10.validate&target=core.drc.validate&_uniq=0.6410806442145258" />

Notes:

* For all 4 graphs: Between 05/04/2015 and 05/25/2015 `npm update` failed which meant the javascript built file was not updated.

## Setup

1. Install graphite server and configure (after many failures I finally settled on these retentions with the default average aggregation: 1h:1d,1d:5y,7d:10y)
2. Install phantomjs, node (v0.10), bower, and grunt-cli
3. Install build-essential `apt-get install build-essential`
3. git clone enketo-core incl git submodules and build with `npm install && bower install && grunt`
4. create empty `temp` folder in enketo-core
6. git clone this app as a sibling of enketo-core and run 'npm install'
7. configure in [config.json](./config.json)
8. test by running `/path/to/enketo-core-performance-monitor/benchmark -f widgets.xml`
9. setup cron job for `/path/to/enketo-core-performance-monitor/benchmark -a` every **hour** with the above retention. cronjob frequency = smallest retention frequency
10. set up [post-commit hook](https://gist.github.com/MartijnR/38621b556356111e87a2) - run with pm2 or forever - to always keep enketo-core up-to-date and rebuild using a [shell script](https://gist.github.com/MartijnR/716fd51f2c57adb91995).
11. drop any additional forms you would to include in [/forms](./forms).



