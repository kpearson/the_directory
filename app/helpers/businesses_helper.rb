module BusinessesHelper
  def edit_business_link(business)
      if business.user == current_user
		link_to "Edit", edit_business_path(business)
	  end
  end
end
