module Behaviours
  UNIT = 1

  module Movements
    def action
      case @priority
      when 1 then forward
      when 2 then back
      when 3 then up
      when 4 then down
      end
    end

    def forward
      @x += UNIT
    end

    def back
      @x -= UNIT
    end

    def up
      @y -= UNIT
    end

    def down
      @y += UNIT
    end
  end
end
