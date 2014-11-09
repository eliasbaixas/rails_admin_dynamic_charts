require 'rails_admin/version'
if Gem::Version.new(RailsAdmin::Version.to_s) < Gem::Version.new('0.6.0')
  require 'rails_admin/main_controller'
  module RailsAdmin
    class MainController < RailsAdmin::ApplicationController
    end
  end
end