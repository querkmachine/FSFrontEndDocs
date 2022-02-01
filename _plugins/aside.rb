module Jekyll
  class AsideBlock < Liquid::Block
    VARIABLE_SYNTAX = %r! (?<params>.*)
    !x.freeze
    
    def initialize(name, params, tokens)
      super
      matched = params.strip.match(VARIABLE_SYNTAX)
      if matched
        @type = matched["params"].strip
      end
    end

    def render(context)
      @text = super
      
      # Write the output HTML string
      <<~ASIDE
        <aside class="aside aside--#{@type}">
          #{@text}
        </aside>
      ASIDE
    end
    
  end
end

Liquid::Template.register_tag('aside', Jekyll::AsideBlock)