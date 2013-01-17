require "minify/document"

module Minify
  class UglifyJS < Document

    def self.engine_initialized?
      defined? ::Uglifier
    end

    def initialize_engine
      require_document_library 'uglifier'
    end

    def setup
      @engine = Uglifier.new
    end

    def render
      @engine.compile(@data)
    end

  end
end
