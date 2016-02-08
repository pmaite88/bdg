require_relative '../behaviours/movements'  # Change this.

class Hero
  include Behaviours::Movements

  attr_reader :x, :y
  attr_writer :priority

  DIR = File.dirname __FILE__

  def initialize(window)
    @x = 640 / 2  # Store constants in a json config file.
    @y = 480 / 2

    @hero = Gosu::Image.new(window, "#{DIR}/../media/hero.png", false)
  end

  def perform
    action
  end

  def draw
    @hero.draw(x, y, 0)
  end
end