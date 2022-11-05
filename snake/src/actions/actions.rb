module Actions
    def self.move_snake(state)
        next_direction = state.next_direction
        next_position = calc_next_position(state)
        # verificar que la siguiente casilla sea valida
        if position_is_valid?(state, next_position)
            move_snake_to(state, next_position)
        else
            end_game(state)
        end
        # Si no es valida -> terminamos el juego
        # si es valida -> movemos la serpiente
    end

    private

    def self.calc_next_position(state)
        curr_position = state.snake.positions.first
        
        case state.next_direction
            when Model::Direction::UP 
                # decrementar fila
                

                new_position = Model::Coord.new(curr_position.row - 1, curr_position.col)
            when Model::Direction::RIGHT
                # incrementar columna
                new_position = Model::Coord.new(curr_position.row, curr_position.col + 1)
            when Model::Direction::DOWN
                # incrementar fila
                new_position = Model::Coord.new(curr_position.row + 1, curr_position.col)
            when Model::Direction::LEFT
                # decrementar column
                new_position = Model::Coord.new(curr_position.row, curr_position.col - 1)
        end
    end
    def self.position_is_valid?(state, position)
        #verificar que este en la grilla
        is_invalid = ((position.row >= state.grid.rows || position.row < 0) || (position.col >= state.grid.cols || position.col < 0))

        return false if is_invalid
        #verificar que no este superponiendo a la serpiente

        return !(state.snake.positions.include? position)
    end

    def self.move_snake_to(state, next_position)
        #[]
        #[(1,1)]
        new_position = [next_position] + state.snake.positions[0...-1]
        state.snake.positions = new_position
        state
    end

    def self.end_game(game)
        state.game_finished = true
        state
    end

end