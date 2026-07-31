class TurboStreamsController < ApplicationController

  def index
  end

  def stream_response
  end

  def stream_redirect
    render turbo_stream: turbo_stream.action(:redirect, turbo_stream_destination_path)
  end

  def html_redirect
    redirect_to turbo_stream_destination_path
  end

  def stream_400_error
    raise ActionController::BadRequest
  end

  def stream_500_error
    raise "This is a 500 error"
  end

  def destination
  end
end