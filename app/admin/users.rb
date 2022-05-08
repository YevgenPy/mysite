ActiveAdmin.register User do
  permit_params do
    permitted = [:email, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at, :role, :first_name, :last_name, :utf8, :_method, :authenticity_token, :locale]
    permitted << :other if params[:action] == 'create' && current_user.admin?
  end
  
end
