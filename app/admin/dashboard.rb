ActiveAdmin.register_page "Dashboard" do

  menu :priority => 1, :label => proc{ I18n.t("active_admin.dashboard") }

  content :title => proc{ I18n.t("active_admin.dashboard") } do
    # div :class => "blank_slate_container", :id => "dashboard_default_message" do
    #   span :class => "blank_slate" do
    #     span I18n.t("active_admin.dashboard_welcome.welcome")
    #     small I18n.t("active_admin.dashboard_welcome.call_to_action")
    #   end
    # end

    # Here is an example of a simple dashboard with columns and panels.
    #
    columns do
      column do
        panel "Recent Posts" do
          ul do
            Post.all.map do |post|
              li link_to(post.title, admin_post_path(post))
            end
          end
        end
      end

      column do
        panel "Recent Recipes" do
          ul do
            Recipe.all.map do |recipe|
              li link_to(recipe.title, admin_recipe_path(recipe))
            end
          end
        end
      end

      column do
        panel "Recent Restaurants" do
          ul do
            Recipe.all.map do |recipe|
              li link_to(recipe.title, admin_recipe_path(recipe))
            end
          end
        end
      end
    end

    columns do
      column do
        panel "Recent Post Comments" do
          ul do
            Comment.all.map do |comment|
              li link_to(comment.content, comment.post)
            end
          end
        end
      end
    end
  end # content
end
