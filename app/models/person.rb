class Person < ApplicationRecord
	require 'csv'

	def self.import(file)
		CSV.foreach(file.path, headers: true) do |row|
			Person.create! row.to_hash
		end
	end
end
