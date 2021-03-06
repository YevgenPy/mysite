ActiveAdmin.register Post do

  permit_params do
    permitted = [:name, :description, :category_id, :user_id,:utf8, :_method, :locale]
    permitted << :other if params[:action] == 'create' && current_user.admin?
    permitted
  end
  
end
