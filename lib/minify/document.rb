module Minify
  class Document

    attr_reader :file

    attr_reader :options

    attr_reader :data

    @engine_initialized = false

    class << self
      attr_accessor :engine_initialized
      alias engine_initialized? engine_initialized
      attr_accessor :default_mime_type
    end

    def initialize(file, options)

      @file = file
      @options = options

      if !self.class.engine_initialized?
        initialize_engine
        self.class.engine_initialized = true
      end


      @reader = lambda { |t| File.respond_to?(:binread) ? File.binread(@file) : File.read(@file) }
      @data = @reader.call(self)

      setup
    end

    protected

    def require_document_library(name)
      require name
    end

  end
end
