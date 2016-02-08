require 'rubygems'
require 'gosu'

require_relative '../models/hero'

class Scene < Gosu::Window
  MAP_X = 640 # Store constants in a json config file.
  MAP_Y = 480

  def initialize
    super(MAP_X, MAP_Y, false)
    self.caption = 'Gosu BDG'

    @hero = Hero.new(self)
  end

  def update
    @hero.perform
  end

  def draw
    @hero.draw
  end

  def button_down(id)
    if id == Gosu::KbEscape
      close
    end

    case id
    when Gosu::KbRight then @hero.priority = 1
    when Gosu::KbLeft  then @hero.priority = 2
    when Gosu::KbUp    then @hero.priority = 3
    when Gosu::KbDown  then @hero.priority = 4
    end

    @hero.perform
  end

  def button_up(id)
    if id != 0
      @hero.priority = 0
    end
  end
end

window = Scene.new
window.show