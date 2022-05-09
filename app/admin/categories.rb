ActiveAdmin.register Category do
  permit_params do
    permitted = [:name, :description, :ancestry, :user_id,:utf8, :_method, :locale]
    permitted << :other if params[:action] == 'create' && current_user.admin?
    permitted
  end
  
end
