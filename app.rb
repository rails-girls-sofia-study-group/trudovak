# encoding: UTF-8
require 'rubygems'
require 'bundler/setup'
require 'cgi'
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

get "/fullscreen/:colour/:font/:sign" do
  @sign_text = CGI.unescape params[:sign]
  @sign_colour = params[:colour]
  @sign_font = params[:font]
  @sign_link = request.url + CGI.escape(@sign_text)
  erb :sign_as_html_fullscreen
end

get "/s/:colour/:font/:sign" do
  @sign_text = CGI.unescape params[:sign]
  @sign_colour = params[:colour]
  @sign_font = params[:font]
  @sign_link = request.url 
  @flattened = params["flattened"]
  if not @flattened
    erb :sign_as_html
  else "TODO: RENDER TEXT AS IMAGE"
  end
end
