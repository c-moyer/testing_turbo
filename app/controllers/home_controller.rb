class HomeController < ApplicationController

  def index
  end

  def link_content
  end

  def form_content
    if params[:redirect] == "true"
      redirect_to view_home_form_content_path
    end
  end

  def src_content

  end

  def stream_content
    respond_to do |format|
      if params[:redirect] == "true"
        format.turbo_stream {
          render turbo_stream: turbo_stream.action(:redirect, home_link_content_path)
        }
      else
        format.turbo_stream
      end
    end
  end
end
