# guard-minify

## About

Compress your Javascript uglifier, Google closure-compiler or YUI-compressor and your CSS with YUI-compressor.

## Install

Install the gem:   

`$ gem install guard-minify`

Add it to your Gemfile:   

```ruby
group :development do
  gem 'guard-minify'
end
```

Add minify to your Guardfile by running this command:   

`$ guard init minify`

## Usage

Please read [ Guard usage doc ]( https://github.com/guard/guard#readme )

## Guardfile

Guard::Minify can be adapted to all kind of projects.

Typical Rails 3 app (default generated Guardfile)

guard 'minify', :input => 'app/assets/javascript', :output => "public/javascripts", :extension => ".min.js"
guard 'minify', :input => 'app/asses/css', :output => 'public/css', :extension => ".min.css"

Please [read Guard]( https://github.com/guard/guard#readme ) doc for more information about the Guardfile DSL.

## Options

```
...
```

## License
(The MIT License)

Copyright (c) 2012 Simon Gate

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the 'Software'), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
