class DyesController < ApplicationController
	def index
		@dyes = Dye.order("content ASC")
	end
end
