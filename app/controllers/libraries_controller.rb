class LibrariesController < ApplicationController

	def index
		@libraries = Library.all

		render :index
	end
end
