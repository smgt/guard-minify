require "minify/document"

module Minify
  class ClosureCompiler < Document

    def self.engine_initialized?
      defined? ::Closure
    end

    def initialize_engine
      require_document_library 'closure-compiler'
    end

    def setup
      @engine = Closure::Compiler.new(@options)
    end

    def render
      @engine.compile(@data)
    end

  end
end
