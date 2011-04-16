class WebsiteController < ApplicationController
  def index
  end

  def presentation
  end
  
  def join
  end
  
  def news
  end
  
  def give
  end
  
  def contact
  end
  
  def press
  end
  
  def photos
  end
  
  def a_day_there
  end
  
  def credits
  end
  
  def get_news
    begin
      logger.info "CALLING TUMBLR: #{TUMBLR_API_URL + "?num=#{params[:num]}"}"
      res = Curl::Easy.http_get(TUMBLR_API_URL + "?num=#{params[:num]}")
      @news = Hash.from_xml(res.body_str)["tumblr"]["posts"]
    rescue Exception => e
      logger.info "ERROR FETCHING STUFF FROM TUMBLR: #{e.class} -- #{e.backtrace.to_yaml}"
      @news = []
    end
    render :partial => "/website/all_news"
  end
end
