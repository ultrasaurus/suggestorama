class VotesController < ApplicationController
  def create
    Topic.find(params[:topic_id]).votes.create
    redirect_to topics_path
  end
end
