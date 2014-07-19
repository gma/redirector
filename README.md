redirector
==========

A simple Rack application to forward all HTTP requests to a separate
site hosted on another domain.

If you've set your DNS up so that you're pointing multiple domains at a
single server, this project probably isn't what you want (and you should
checkout [Rack::ForceDomain][] instead).

[Rack::ForceDomain]: https://github.com/cwninja/rack-force_domain

Usage
-----

Set the HTTP scheme and domain to send your requests to with an
environment variable:

    $ SCHEME_AND_DOMAIN=http://example.com rackup config.ru

Inspired by [an example][] on StackOverflow.

[an example]: http://stackoverflow.com/questions/10683549/how-do-i-implement-a-redirects-only-rack-based-heroku-application

Deployment
----------

You could run it anywhere, but I created redirector to forward requests
to an old Heroku app (that served my old domain) to a new app (that ran
the same code, but served a new domain).

If you're using Heroku too, all you need to do is push the code to the
Heroku app that you're retiring, and then set the environment variable.
