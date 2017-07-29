# Default Sinatra to "production" mode (surpress errors) unless
# otherwise specified by the `RACK_ENV` environmental variable.
# Must be done prior to requiring Sinatra, or we'll get a LoadError
# as it looks for sinatra/cross-origin, which is development only
ENV["RACK_ENV"] = "production" if ENV["RACK_ENV"].to_s.empty?

require "json"
require "bunto"
require "base64"
require "webrick"
require "sinatra"
require "fileutils"
require "sinatra/base"
require "sinatra/json"
require "addressable/uri"
require "sinatra/reloader"
require "sinatra/namespace"

module BuntoAdmin
  autoload :APIable,          "bunto-admin/apiable"
  autoload :DataFile,         "bunto-admin/data_file"
  autoload :Directory,        "bunto-admin/directory"
  autoload :FileHelper,       "bunto-admin/file_helper"
  autoload :PageWithoutAFile, "bunto-admin/page_without_a_file"
  autoload :PathHelper,       "bunto-admin/path_helper"
  autoload :Server,           "bunto-admin/server"
  autoload :StaticServer,     "bunto-admin/static_server"
  autoload :URLable,          "bunto-admin/urlable"
  autoload :Version,          "bunto-admin/version"

  def self.site
    @site ||= begin
      site = Bunto.sites.first
      site.future = true
      site
    end
  end
end

# Monkey Patches
require_relative "./bunto/commands/serve"
require_relative "./bunto/commands/build"

[Bunto::Page, Bunto::Document, Bunto::StaticFile, Bunto::Collection].each do |klass|
  klass.include BuntoAdmin::APIable
  klass.include BuntoAdmin::URLable
end
