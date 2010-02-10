module Renderers
  class Textile
    def self.render_content(content)
      require 'rubygems'
      require 'redcloth'
      RedCloth.new(content).to_html
    end
  end
end
