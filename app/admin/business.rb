ActiveAdmin.register Business do
  index do
    column :name
    column "Contact Name" do |business|
      business.user.name
    end
    column :suite
    column :phone_num
    column :web_site
    column :discription
  end


  
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
