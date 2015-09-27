require 'pry'

class IndexController < ApplicationController

	@@json_files_location = '/public/events/'

	def index
	  #render :file => 'public/index.html' and return
		events_directory = Dir.pwd.to_s + @@json_files_location

		if Dir.exists?(events_directory) then
			@event = Dir.glob(events_directory + "*.json").last

			f = File.open(@event, "r")
			file_content = f.read()
			f.close()

			@json = JSON.parse(file_content)
		end

		@event_date = DateTime.iso8601(@json['date'])
		@event_talks = @json['talks']

	  render 'index'
	end
end
