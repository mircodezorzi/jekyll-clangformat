#frozen_string_literal: true

module Jekyll
  class ClangFormat < Liquid::Tag

    def initialize(tag_name, markup, tokens)
      @input = markup.split(' ')[0]
      super
    end

    def render(context)
      output = `clang-format <<< "#{context[@input]}"`.strip
      Liquid::Template.parse("{% highlight c++ %}#{output}{% endhighlight %}").render(context)
    end

  end
end

Liquid::Template.register_tag('clangformat', Jekyll::ClangFormat)
