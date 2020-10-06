class HomeController < ApplicationController
  # what follows is called a filter, describes where common content can
  # be used
  before_action :common_content, only: %i[index team]

  def common_content
    @name = 'Rina Fleisch'
  end

  def index; end

  def team; end
end
