require "minify/document"

module Minify
  class YUICompressor < Document

    def self.engine_initialized?
      defined? ::YUI
    end

    def initialize_engine
      require_document_library 'yui/compressor'
    end

    def setup
      @engine = YUI::JavaScriptCompressor.new(@options)
    end

    def render
      @engine.compress(@data)
    end

  end
end
