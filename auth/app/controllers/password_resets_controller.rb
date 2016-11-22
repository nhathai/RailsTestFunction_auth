class PasswordResetsController < ApplicationController
  def new
  end

  def create
    redirect_to :root, :notice => "Email sent with password instructions"
  end
end
