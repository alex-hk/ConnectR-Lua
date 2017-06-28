Board = {
	width = 7,
	height = 6,
	board = {}
}

function Board:initBoard ()
	for row = 1, self.height do
		self.board[row] = {}

		for col = 1, self.width do
			self.board[row][col] = 0
		end
	end
end

function Board:new(o, width, height)
	o = o or {}
	setmetatable(o, self)
	self.__index = self
	self.width = width or 7
	self.height = height or 6
	print(string.format("Attempting to initialize board with width %d and height %d", self.width, self.height))
	self.board:initBoard()
	print(self.board)
	return o
end
