class HomeController < ApplicationController
  # what follows is called a filter, describes where common content can
  # be used
  before_action :common_content, only: %i[index team]

  def common_content
    @hero_name = Faker::Superhero.name
    @hero_power = Faker::Superhero.power
    @hero_title = Faker::Job.title
    @hero_job = Faker::Company.bs.titleize
    @hero_saying = Faker::TvShows::DrWho.quote

    rnd_set = rand(1..2)
    @set = if rnd_set == 1
             'set1'
           else
             'set2'
           end

    bk_set = rand(1..2)
    @bg_set = if bk_set == 1
                'bg1'
              else
                'bg2'
              end

    @avatar = Faker::Avatar.image(slug: @hero_name, size: '300x300', format: 'png', set: @set, bgset: @bg_set)
  end

  def index; end

  def team; end
end
