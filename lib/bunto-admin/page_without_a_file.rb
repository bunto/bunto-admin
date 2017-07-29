module BuntoAdmin
  class PageWithoutAFile < Bunto::Page
    def read_yaml(*)
      @data ||= {}
    end
  end
end
