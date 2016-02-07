require 'rubygems'
require 'gosu'

class Scene < Gosu::Window
  MAP_X = 640
  MAP_Y = 480


  def initialize
    super(MAP_X, MAP_Y, false)

    self.caption = 'Gosu BDG'
  end

  def update; end

  def draw; end
end

window = Scene.new
window.show