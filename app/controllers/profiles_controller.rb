class ProfilesController < ApplicationController
  def show
    skip_authorization
  end
end
