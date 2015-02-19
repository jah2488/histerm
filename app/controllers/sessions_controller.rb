class SessionsController < ApplicationController
  def show
    @session = Session.where(slug: params[:slug]).first || session_not_found
  end
end
