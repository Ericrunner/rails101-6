class Account::GroupsController < ApplicationController
  before_action :authenticate_user!, only:[:index]
  def index
    @groups=current_user.participated_groups
  end
end
