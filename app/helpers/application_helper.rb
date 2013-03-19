module ApplicationHelper
  def title(page_title)
    content_for(:title) { page_title }
  end


  def yield_for(content_sym, default)
    output = content_for(content_sym)
    output = default if output.blank?
    output
  end

  def description(page_description)
    content = ''
    content = page_description if page_description.present?
    content_for(:description) { content }
  end

  def has_content_for(sym)
    output = content_for(sym)
    output.present?
  end


  RECIPE_CATEGORIES = {
    'paleo' => 'paleo',
    'appetizers' => 'appetizers',
    'sides' => 'sides',
    'mains' => 'mains',
    'breakfast' => 'breakfast',
    'sweets' => 'sweets',
    'snacks' => 'snacks',
    'vegetarian' => 'vegetarian',
    'sauces' => 'sauces',
    'soups' => 'soups'
  }

  RESTAURANT_CATEGORIES = {
    'seafood' => 'seafood'
  }

  def analytics_tag
    script = <<-END
      <script type="text/javascript">

        var _gaq = _gaq || [];
        _gaq.push(['_setAccount', 'UA-39182302-1']);
        _gaq.push(['_trackPageview']);

        (function() {
          var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
          ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
          var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
        })();

      </script>
    END
    script.html_safe
  end
end
