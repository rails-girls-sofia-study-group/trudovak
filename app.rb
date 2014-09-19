# encoding: UTF-8
require 'rubygems'
require 'bundler/setup'
require 'cgi'
require'./utils'
Bundler.require(:default)

get "/" do
  erb :index
end

post "/s/" do
  @sign_text = params[:sign]
  @sign_colour = params[:colour]
  @sign_font = params[:font]
  @sign_link = request.url + @sign_colour + "/" + @sign_font  + "/" + CGI.escape(@sign_text)
  @flattened = params[:flattened]
  if (params[:flattened])
    @sign_link_flattened = @sign_link + "?flattened=" + params[:flattened].to_s
    redirect to (@sign_link_flattened)
  else
    redirect to(@sign_link) 
  end
end


get "/s/:colour/:font/:sign*" do
  @sign_text = CGI.unescape params[:sign]
  @sign_text = removeExtraSpace(@sign_text)
  @sign_colour = params[:colour]
  @sign_font = params[:font]
  @sign_link = request.url 
  @flattened = params["flattened"]

   # creates different css classes for different length of sign text

  if @sign_text.to_s.length < 35
    @sign_text_length = "short"
  elsif @sign_text.length > 100
    @sign_text_length = "long"
  else 
    @sign_text_length = "medium"
  end

  @fullscreen = params["fullscreen"]
  if @fullscreen
    erb :sign_as_html_fullscreen
  elsif not @flattened
    erb :sign_as_html
  else "TODO: RENDER TEXT AS IMAGE"
  end
end

