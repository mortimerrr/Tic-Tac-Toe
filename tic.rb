class Game     # REWRITING THE CODE TO USE ATTR_ACCESSORS
	attr_accessor :board
	attr_accessor :players
	attr_accessor :turn

	def initialize
		self.board = Board.new
		self.board=(Board.new)
	end


end


# comment line 1
# comment
#
def my_method_doing_something

end

9.times do
	show_board_to_the_user
	x, y = get_user_input
	mark_board x, y
	detect_winning_move
	next_turn
end