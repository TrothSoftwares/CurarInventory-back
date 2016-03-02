class SessionsController < Devise::SessionsController
  respond_to :json

   # POST /api/users/sign_in
   def create
     respond_to do |format|
       format.json do
         self.resource = warden.authenticate!(auth_options)
         data = {
           user_id: resource.id,
           token: resource.authentication_token,
           email: resource.email
         }
         render json: data, status: :created

       end
     end
   end
end
