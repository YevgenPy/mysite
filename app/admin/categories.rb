ActiveAdmin.register Category do
  permit_params do
    permitted = [:name, :description, :ancestry, :user_id]
    permitted << :other if params[:action] == 'create' && current_user.admin?
    permitted
  end
  
end
