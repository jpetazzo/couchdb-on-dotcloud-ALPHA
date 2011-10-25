CouchDB On DotCloud (ALPHA)
===========================

This is an **ALPHA** (i.e., not production-ready) CouchDB stack for DotCloud.


How It Works
------------

Since the CouchDB build is very long, it downloads a pre-built CouchDB from S3.
The build is not totally DotCloud-compliant (it uses all the default build
options, instead of trying to setup the logs/data/etc. directories in the
proper place).

Again: **don't use this for production!**

Proper CouchDB support will come soon.


How To Use It (Standalone)
--------------------------

Just use our (un)patented Clone-And-DotCloud-Push method::

  git clone git://github.com/jpetazzo/couchdb-on-dotcloud-ALPHA.git
  dotcloud push sofa couchdb-on-dotcloud-ALPHA

At the end of the push, the URL to CouchDB will be shown.
You can append ``/_utils`` to go to the Futon management interface.


How To Use It (In Your App)
---------------------------

Add the ``dotcloud.yml`` supplied here to your own ``dotcloud.yml``,
and copy the ``couchdb`` directory to your repository as well. Push as
usual. Rejoice (but remember not to put any important stuff into
your CouchDB yet).


Authentication
--------------

By default, there is **NO** authentication. Anyone knowing its URL
can acccess your CouchDB. You can setup authentication yourself if
you need to. And of course, when CouchDB will be officially supported,
authentication will be pre-configured by default, like for other
DotCloud-supported database stacks.
