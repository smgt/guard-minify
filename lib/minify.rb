module Minify

  # GoogleClosureCompiler - js
  # UglifyJS - js
  # YUICompressor - js

  @default_engine = :uglify_js
  @engines = Hash.new { |h,k| h[k] = [] }

  def self.new(file, options={})
    if file.is_a?(String)
      file = File.open(file, "r")
    end
    if options[:engine]
      engine = options[:engine]
      options.delete(:engine)
    else
      engine = @default_engine
    end
    @engines[engine].new(file, options)
  end

  def self.register klass, ident
    @engines[ident] = klass
  end

  require 'minify/closure-compiler'
  register ClosureCompiler, :google_closure_compiler

  require 'minify/yui-compressor'
  register YUICompressor, :yui_compressor

  require 'minify/uglify-js'
  register UglifyJS, :uglify_js

end
