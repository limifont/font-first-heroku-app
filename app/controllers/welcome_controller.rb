class WelcomeController < ApplicationController
  def index
    # BAD way - slow response time
    # @animals = Animal.all
    # BEST PRACTICE - fast response time
    @animals = Animal.paginate(page: params[:page], :per_page => 10)
  end


end
