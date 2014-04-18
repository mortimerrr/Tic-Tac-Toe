require 'pry'

puts "\n * * * WELCOME TO THE GAME OF TIC-TAC-TOE * * *"

class Board
	def initialize
		@board = [
			%w(. . .),
			%w(. . .),
			%w(. . .)
		]
	end

  # TODO - Add code so that the array at co-ordinate x, y is set to the value
  # of marker, unless it has already been set.
  #
	def mark(x, y, marker)	
      @board[x][y] = marker  
      # binding.pry
	end
	# TODO - Have the board return each of the possible winning combinations.
	#

	def each_winning_move
	end

	# TODO - Add code to return the board as a String, so that it appears
	# in a 3 x 3 grid
	def to_s
	  @board.map {|row| row.join(" ")}.join("\n")
	end

end

class Game
	def initialize
		@board = Board.new
		@players = [Nought, Cross]
		@turn = @players.sample
	end

	# TODO - The main game loop goes in here.
	#
	def play
		# While the game is still going on, do the following:
			puts "\n * * * PLEASE SEE THE BOARD BELOW"
			# 1. Show the board to the user
			puts @board.to_s
			# 2. Prompt for an co-ordinate on the Board that we want to target
			puts "\n * * * PLAYER #{@turn} CHOOSE YOUR CO-ORDINATES WHERE YOU WANT TO PUT YOUR SIGN"
			puts " * * * YOUR ANSWER SHOULD BE IN THE FOLLOWING FORMAT: 2, 3 "
			puts " * * * YOUR MARKER WILL BE PUT IN LINE 2, THIRD PLACE FROM LEFT"
			prompt = "> > >"
			print "#{prompt}   "
			x, y = gets.strip.chomp.split (",")
			x = x.to_i
			x = x - 1
			y = y.to_i
			y = y - 1
			# 3. Mark the board on the given square. If the input is invalid or already
			# taken, go back to 1.
			@board.mark(x, y, @turn.marker)
			puts @board.to_s
			# 4. If we've got a winner, show the board and show a congratulations method.
			# 5. Otherwise call next_turn and repeat.
			# 6. How to detect a draw?
	end

  # TODO - Return the next player's turn. I.e. not @turn but the other one.
  #
	def next_turn
	end

	# TODO - Return the winning Class if they have won, otherwise return nil.
	#
	def winner
		# Check each of the winning moves on the board, rows, cols and diagonals
		# to see if a Player has filled a row of three consequtive squares
	end
end

class Player
	def self.filled?(row)
		row == [self.marker] * 3
	end
end

class Nought < Player
	def self.marker
		'o'
	end
end

class Cross < Player
	def self.marker
		'x'
	end
end

Game.new.play

# binding.pry