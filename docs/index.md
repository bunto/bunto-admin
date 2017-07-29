---
title: Documentation
permalink: /
description: A Bunto plugin that provides users with a traditional CMS-style graphical interface to author content and administer Bunto sites. The project is divided into two parts. A Ruby-based HTTP API that handles Bunto and filesystem operations, and a Javascript-based front end, built on that API.
---

## Installation

Refer to [Install Plugins](https://buntowaf.tk/docs/plugins/#installing-a-plugin) in Bunto docs and install the `bunto-admin` plugin as you would normally by adding `bunto-admin` to the `:bunto_plugins` group in your `Gemfile` (or) to the `gems` list in your `_config.yml`.

## Usage

1. Start Bunto as you would normally (`bundle exec bunto serve`)
2. Navigate to `http://localhost:4000/admin` to access the administrative interface

## Contributing

Bug reports and pull requests are welcome on GitHub at <https://github.com/{{ site.github.repository_nwo }}/>.

## Improve this page

Found a mistake? See something that can be made better? These docs are open source.
Please help: <https://github.com/{{ site.github.repository_nwo }}/edit/master/docs/{{ page.path }}>.
