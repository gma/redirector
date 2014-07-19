redirector
==========

A simple Rack application to forward all HTTP requests to a site to a
new domain.

Set the HTTP scheme and domain to send your requests to with an
environment variable:

    $ SCHEME_AND_DOMAIN=http://example.com rackup config.ru

Inspired by [an example][] on StackOverflow.

[an example]: http://stackoverflow.com/questions/10683549/how-do-i-implement-a-redirects-only-rack-based-heroku-application
