class MessagesController < ApplicationController
  def show
    @messages = Array(session[:messages])
    render "messages/show"
  end

  def create
    @messages = Array(session[:messages])
    @messages << params.merge("timestamp" => Time.now)
    redirect_to "/messages"
  end
end
