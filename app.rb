# encoding: UTF-8
require 'rubygems'
require 'bundler/setup'
Bundler.require(:default)

get "/" do
  "Здравей, Трудовак!"
end

get "/s/:sign" do
  params[:sign]
end