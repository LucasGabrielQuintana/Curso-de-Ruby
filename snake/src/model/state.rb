module Model 
    #Representación del Estado de la aplicación
    class Coord < Strucu.new(:row, :col)
    end

    class Food < Coord
    end

    class Snake < Struct.new(:positions)
    end

    class Grid < Struct.new(:rows, :cols)
    end

    class State < Struct.new(:snake, :food, :grid)
    end

    def self.initial_state
        Model::State.new(
            Model::Snake.new(),
            Model::Food.new(),
            Model::Grid.new()
        )
    end
    
end