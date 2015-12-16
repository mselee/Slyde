class SlidesController < ApplicationController
  def index
    @comments = Comment.all
  end
end
