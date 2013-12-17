ActiveAdmin.register Category do

  show do |category|
    attributes_table do
      row :name
      row "Businesses" do
        category.businesses.name
      end
    end
    # default_actions
  end
  filter :name
  

   permit_params category: [:name, businesses_attributes: [:name, :id], businesses_categories_attributes: [:business_id, :id]]
   # permit_params :name

  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end
  
end
