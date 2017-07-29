module Bunto
  module Commands
    class Serve < Command
      class << self
        def start_up_webrick(opts, destination)
          server = WEBrick::HTTPServer.new(webrick_opts(opts)).tap { |o| o.unmount("") }
          server.mount(opts["baseurl"], Servlet, destination, file_handler_opts)

          bunto_admin_monkey_patch(server)

          Bunto.logger.info "Server address:", server_address(server, opts)
          launch_browser server, opts if opts["open_url"]
          boot_or_detach server, opts
        end

        def bunto_admin_monkey_patch(server)
          server.mount "/admin", Rack::Handler::WEBrick, BuntoAdmin::StaticServer
          server.mount "/_api",  Rack::Handler::WEBrick, BuntoAdmin::Server
          Bunto.logger.warn "Auto-regeneration:", "disabled by BuntoAdmin."
          Bunto.logger.warn "", "The site will regenerate only via the Admin interface."
          Bunto.logger.info "BuntoAdmin mode:", ENV["RACK_ENV"] || "production"
        end
      end
    end
  end
end
