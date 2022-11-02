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

    def calc_next_position(state)
        new_positions = state.snake.positions.first
        case state.next_direction
            when UP 
                # decrementar fila
                

                new_position = Model::Coord.new(curr_position.row - 1, curr_position.col)
            when RIGHT
                # incrementar columna
                new_position = Model::Coord.new(curr_position.row, curr_position.col + 1)
            when DOWN
                # incrementar fila
                new_position = Model::Coord.new(curr_position.row + 1, curr_position.col)
            when LEFT
                # decrementar column
                new_position = Model::Coord.new(curr_position.row, curr_position.col - 1)
        end
    end
end