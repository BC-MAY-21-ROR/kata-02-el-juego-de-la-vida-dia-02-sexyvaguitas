
#juego de la vida


#creando clase tablero
class Board

    def initialize
        @rows = 0
        @columns = 0  
        self.getBoardSize
        @array = Array.new(@rows){ Array.new(@columns) { 0 } }
        self.printBoard
    end                               
    def getBoardSize
        1.times do
            @rows = gets.to_i
            redo if @rows <= 1
        end
        1.times do
            @columns = gets.to_i
            redo if @columns <= 1
        end
    end
    def printBoard
        @columns.times do |i|
            @rows.times do |j|
                print(" #{@array[i][j]} ")
            end
            print("\n")
        end
    end
end


#creando la classe celula
class Cell
        attr_accessor :posx, :poxy
        
    def initialize
        print   @posx 
        print   @posy 
        @posx = 0
        @posy = 0
    end

    def generatePos
        @posx = rand()
    end
end
    
board1 = Board.new
cell1 = Cell.new 4,3



#Imprimimos por pantalla este grid
=begin
columns.times do |i|
    rows.times do |j|
        print(" #{array[i][j]} ")
    end
    print("\n")
end
=end

=begin
rows.times do |i|
    columns.times do |j|
    #Revisamos la parte superior de la matriz
        if(i == 0 and j == 0 )
            array[i][j] = "a"
        elsif(i==0 and (j > 0 and j < (columns - 1)))
            array[i][j] = "b"
        #Esquina superior derecha
        elsif(i==0 and j == (columns - 1))
            array[i][j] = "c"
        #Lado izquierda sin esquinas
        elsif((i > 0 and i < (rows - 1)) and (j == 0))
            array[i][j] = "d"
        #Lado derecho sin esquinas  
        elsif((i > 0 and i < (rows - 1)) and (j > 0 and j == (columns - 1)))
            array[i][j] = "f"
        elsif((i > 0 and i < (rows - 1)) and (j > 0 and j < (columns - 1)))
            array[i][j] = "e"
        elsif(i==(rows -1) and j == 0)
            array[i][j] = "x"
        elsif(i==(rows - 1) and j < (columns -1))
            array[i][j] = "y"
        elsif(i==(rows - 1) and j == (columns -1))
            array[i][j] = "z"
        end
    end
end
=end

=begin
Any live cell with fewer than two live neighbours dies, as if by underpopulation.
Any live cell with two or three live neighbours lives on to the next generation.
Any live cell with more than three live neighbours dies, as if by overpopulation.
Any dead cell with exactly three live neighbours becomes a live cell, as if by reproduction.

These rules, which compare the behavior of the automaton to real life, can be condensed into the following:

Any live cell with two or three live neighbours survives.
Any dead cell with three live neighbours becomes a live cell.
All other live cells die in the next generation. Similarly, all other dead cells stay dead.
=end

