class MessagesController < ApplicationController
  def show
    @messages = session[:messages] ||= []
    render "messages/show"
  end

  def create
    @messages = session[:messages] ||= []
    @messages << params.merge("timestamp" => Time.now)
    redirect_to "/messages"
  end
end
