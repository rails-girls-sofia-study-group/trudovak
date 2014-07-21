# encoding: UTF-8
require 'rubygems'
require 'bundler/setup'
Bundler.require(:default)

get "/" do
  "Здравей, Трудовак!"
end

get "/s/:sign" do
  @sign_text = params[:sign]
  erb :sign_as_html
end