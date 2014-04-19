class Placement < ActiveRecord::Base
	require 'CSV'
	
	def self.import(file)
		CSV.foreach(file.path, headers: true) do |row|
		
			placement_hash = row.to_hash
			placement = Placement.where(id: placement_hash["id"])
		
			if placement.count==1
				placement.first.update_attributes(placement_hash)
			else
				Placement.create!(placement_hash)
			end
		end
	end	
end
