# encoding: UTF-8
require 'rubygems'
require 'bundler/setup'
Bundler.require(:default)

get "/" do
  erb :index
end

post "/s/" do
  @sign_text = params[:sign]
  @sign_colour = params[:colour]
  @sign_link = request.url + @sign_text
  erb :sign_as_html
end

get "/s/:sign" do
  @sign_text = params[:sign]
  erb :sign_as_html
end