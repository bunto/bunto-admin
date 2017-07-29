[![Gem Version](https://img.shields.io/gem/v/bunto-admin.svg)](https://rubygems.org/gems/bunto-admin)
[![Build Status](https://travis-ci.org/bunto/bunto-admin.svg?branch=master)](https://travis-ci.org/bunto/bunto-admin)
[![Build status](https://ci.appveyor.com/api/projects/status/ciih4n6v0yfa5pvm/branch/master?svg=true)](https://ci.appveyor.com/project/SuriyaaKudoIsc/bunto-admin/branch/master)
[![Coverage Status](https://coveralls.io/repos/github/bunto/bunto-admin/badge.svg?branch=master)](https://coveralls.io/github/bunto/bunto-admin?branch=master)
[![NPM Dependencies](https://david-dm.org/bunto/bunto-admin.svg)](https://david-dm.org/bunto/bunto-admin)

A Bunto plugin that provides users with a traditional CMS-style graphical interface to author content and administer Bunto sites. The project is divided into two parts. A Ruby-based HTTP API that handles Bunto and filesystem operations, and a Javascript-based front end, built on that API.

## Installation

Refer to the [installing plugins](https://buntowaf.tk/docs/plugins/#installing-a-plugin) section of Bunto's documentation and install the `bunto-admin` plugin as you would any other plugin. Here's the short version:

1. Add the following to your site's Gemfile:

    ```ruby
    gem 'bunto-admin', group: :bunto_plugins
    ```

2. Run `bundle install`

## Usage

1. Start Bunto as you would normally (`bundle exec bunto serve`)
2. Navigate to `http://localhost:4000/admin` to access the administrative interface

## Options

Bunto Admin related options can be specified in `_config.yml`
under a key called `bunto_admin`. Currently it has only one option `hidden_links`
which is for hiding unwanted links on the sidebar. The following keys under `hidden_links` can be used in order to hide default links;

```yaml
bunto_admin:
  hidden_links:
    - posts
    - pages
    - staticfiles
    - datafiles
    - configuration
```

## Contributing

Interested in contributing to Bunto Admin? We’d love your help. Bunto Admin is an open source project, built one contribution at a time by users like you. See [the contributing instructions](.github/CONTRIBUTING.md), and [the development docs](https://bunto.github.io/bunto-admin/development/) for more information.

## Looking for a hosted version?

Bunto Admin is intended to be run on your computer alongside your local Bunto installation. If you're looking for a hosted version, we'd recommend checking out [Siteleaf](https://www.siteleaf.com/) a hosted Bunto editor with deep GitHub integration (whom we'd also like to thank for inspiring parts of Bunto Admin itself!).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
