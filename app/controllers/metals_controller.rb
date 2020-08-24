require 'httparty'
class MetalsController < ApplicationController

  def index
    response = HTTParty.get("https://metals-api.com/api/latest?access_key=#{Rails.application.credentials.metal_key}&base=SAR&symbols=XAU,XAG")
    render :json => {success: true, key: Rails.application.credentials.metal_key, response: response}
  end

end
