require "board"

Node = {
	board = nil,
	children = nil
}

function Node:new(o, width, height)
	o = o or {}
	setmetatable(o, self)
	self.__index = self
	self.board = Board.new{width, height}
	return o
end
