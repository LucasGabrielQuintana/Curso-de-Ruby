require "ruby2d"

module View
    class Ruby2dView
    
        def initialize
            @pixel_size = 50
        end

        def render(state)
            extend Ruby2D::DSL
            set(title: "Snake", 
            width: @pixel_size * state.grid.cols, 
            height: @pixel_size * state.grid.rows)
            show
        end
    end
end