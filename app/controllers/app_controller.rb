class AuthenticatedController < ActionController
    before_action :authenticate_user!
end