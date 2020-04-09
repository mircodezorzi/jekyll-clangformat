#frozen_string_literal: true

module Jekyll
  class ClangFormat < Liquid::Tag

    def initialize(tag_name, markup, tokens)
      @has_clangformat = `which clang-format > /dev/null 2>&1`
      @input = markup.split(' ')[0]
      super
    end

    def render(context)
      if @has_clangformat
        output = `clang-format <<< "#{context[@input]}"`
        Liquid::Template.parse("{% highlight c++ %}#{output}{% endhighlight %}").render(context)
      else
        Liquid::Template.parse("{% highlight c++ %}#{@input}{% endhighlight %}").render(context)
      end
    end

  end
end

Liquid::Template.register_tag('clangformat', Jekyll::ClangFormat)
