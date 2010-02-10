module Renderers
  class Markdown
    def self.render_content(content)
      require 'rubygems'
      require 'bluecloth'
      BlueCloth.new(content).to_html
    end
  end
end
