class TagsController < ApplicationController
  def remove
    @fabmoment = Fabmoment.find(params[:fabmoment_id])
    @tag = Tag.find(params[:id])

    @fabmoment.tags.destroy(@tag)
    redirect_to @fabmoment
    #head :ok
  end
end