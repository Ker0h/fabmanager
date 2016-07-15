class HomepageController < ApplicationController
  def index
  	@fabmoments = Fabmoment.last(5).reverse
  end
end
