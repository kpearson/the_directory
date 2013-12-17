ActiveAdmin.register Business do
  filter :name
  filter :suite
  filter :phone_num
  filter :web_site
  filter :description
  
  # index do
  #   column :name
  #   column "Contact Name" do |business|
  #     business.user.name
  #   end
  #   column :suite
  #   column :phone_num
  #   column :web_site
  #   column :discription
  #   default_actions
  # end
  
  form do |f|
      f.inputs "Details" do
        f.input :name
      end
    #   f.inputs do
    #      f.has_many :categories, new_record: true do |ff|
    #         ff.input :name
    #     end
    #   end
      
    #   f.inputs do
    #     f.has_many :businesses_categories, new_records: true, allow_destroy: false do |ff|
    #         ff.input :category
    #     end
    #   end
      
      f.actions
  end
  
  show do |business|
     attributes_table do
        row :name
        row :suite
     end
     panel 'Categories' do
        table_for business.categories do
          column :id
          column :name
        end
     end
     active_admin_comments
  end
  
  # controller do 
  #     before_filter :authorize_user
      
  #     def authorize_user
  #       if current_admin_user.moderator?
  #         return
  #       elsif current_admin_user.category_maintainer?
  #         return
  #       end
  #       raise CanCan::AccessDenied 
  #     end
  # end
  
 permit_params :name
  
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
