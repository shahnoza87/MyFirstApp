class EntriesController < ApplicationController
	def index
		@entries=Entry.all
	end

	def show
		@entry = Entry.find(params["id"])
	end
	def create
entry_params = params["entry"].permit("title", "contents")
 entry = Entry.create(entry_params)
  redirect_to(entry_path(entry))
end
end
