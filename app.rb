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
  # redirect to("/s/#{@sign_colour}/#{URI.escape(@sign_text)}")
  
  redirect to(@sign_link)
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
  erb :sign_as_html
end