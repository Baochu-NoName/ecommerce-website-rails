ActiveAdmin.register_page "Dashboard" do
  # menu priority: 1, label: proc { I18n.t("active_admin.dashboard") }

  # content title: proc { I18n.t("active_admin.dashboard") } do
  #   div class: "blank_slate_container", id: "dashboard_default_message" do
  #     span class: "blank_slate" do
  #       span I18n.t("active_admin.dashboard_welcome.welcome")
  #       small I18n.t("active_admin.dashboard_welcome.call_to_action")
  #     end

  content product: proc{ I18n.t("active_admin.dashboard") } do
    columns do
      column do
        panel "Recent Products" do
          table_for Product.order("released_at desc").limit(5) do
            column :name do |product|
              link_to product.name, [:admin, product]
            end
            column :category do |product|
              product.category
            end
            column :brand do |product|
              product.brand
            end
            column :created_at
            column :released_at
          end
          strong (link_to "Show All Products" , :products )
        end
      end
    end
  end
    # Here is an example of a simple dashboard with columns and panels.
    #
    # columns do
    #   column do
    #     panel "Recent Posts" do
    #       ul do
    #         Post.recent(5).map do |post|
    #           li link_to(post.title, admin_post_path(post))
    #         end
    #       end
    #     end
    #   end

    #   column do
    #     panel "Info" do
    #       para "Welcome to ActiveAdmin."
    #     end
    #   end
    # end
     # content
end
