require "minify"

def file
  File.dirname(__FILE__) + "/test.js"
end

describe Minify, "js" do

  it "uglify.js should be the default engine" do
    minify = Minify.new(file)
    minify.class.should eq(Minify::UglifyJS)
  end

  it "uglify.js returns valid js" do
    minified = "var myModule={myProperty:\"someValue\",myConfig:{useCaching:!0,language:\"en\"},myMethod:function(){console.log(\"I can haz functionality?\")},myMethod2:function(){console.log(\"Caching is:\"+this.myConfig.useCaching?\"enabled\":\"disabled\")},myMethod3:function(e){typeof e==\"object\"&&(this.myConfig=e,console.log(this.myConfig.language))}};myModule.myMethod(),myModule.myMethod2(),myModule.myMethod3({language:\"fr\",useCaching:!1});"
    minify = Minify.new(file, :engine => :uglify_js)
    minify.render().should eq(minified)
  end

  it "should be of the class uglify" do
    minify = Minify.new(file)
    minify.class.should eq(Minify::UglifyJS)
  end

  it "closure compiler should return valid js" do
    minified = "var myModule={myProperty:\"someValue\",myConfig:{useCaching:!0,language:\"en\"},myMethod:function(){console.log(\"I can haz functionality?\")},myMethod2:function(){console.log(\"Caching is:\"+this.myConfig.useCaching?\"enabled\":\"disabled\")},myMethod3:function(a){\"object\"==typeof a&&(this.myConfig=a,console.log(this.myConfig.language))}};myModule.myMethod();myModule.myMethod2();myModule.myMethod3({language:\"fr\",useCaching:!1});\n"
    minify = Minify.new(file, :engine => :google_closure_compiler)
    minify.render().should eq(minified)
  end

  it "should be of the class google closure compiler" do
    minify = Minify.new(file, :engine => :google_closure_compiler)
    minify.class.should eq(Minify::ClosureCompiler)
  end

  it "yui compressor returns valid js" do
    minified = "var myModule={myProperty:\"someValue\",myConfig:{useCaching:true,language:\"en\"},myMethod:function(){console.log(\"I can haz functionality?\")},myMethod2:function(){console.log(\"Caching is:\"+(this.myConfig.useCaching)?\"enabled\":\"disabled\")},myMethod3:function(newConfig){if(typeof newConfig==\"object\"){this.myConfig=newConfig;console.log(this.myConfig.language)}}};myModule.myMethod();myModule.myMethod2();myModule.myMethod3({language:\"fr\",useCaching:false});"
    minify = Minify.new(file, :engine => :yui_compressor)
    minify.render().should eq(minified)
  end
end
