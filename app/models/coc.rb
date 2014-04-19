class Coc < ActiveRecord::Base
require 'CSV'
	
	def self.import(file)
		CSV.foreach(file.path, headers: true) do |row|
		
			coc_hash = row.to_hash
			coc = Coc.where(id: coc_hash["id"])
		
			if coc.count==1
				coc.first.update_attributes(coc_hash)
			else
				Coc.create!(coc_hash)
			end
		end
	end	
end
