class Band
 
	attr_accessor :name, :location
 
end

class Immortal < Band
 
	def album
		return "At The Heart Of Winter"
	end
 
end

class Darkthrone < Band
 
	def album
		return "A Blaze In The Northern Sky"
	end
 
end

class AuraNoir < Band
 
	def album
		return "Dreams Like Deserts"
	end
 
end

immortal_band = Immortal.new
immortal_band.name= "Immortal"
immortal_band.location= "Bergen"
i_bandname = immortal_band.name
i_bandlocation = immortal_band.location

darkthrone_band = Darkthrone.new
darkthrone_band.name= "Darkthrone"
darkthrone_band.location= "Oslo"
d_bandname = darkthrone_band.name
d_bandlocation = darkthrone_band.location

auranoir_band = AuraNoir.new
auranoir_band.name= "Aura Noir"
auranoir_band.location= "Oslo"
a_bandname = auranoir_band.name
a_bandlocation = auranoir_band.location

puts "Norwegian Metal Bands: Name, City, Album"
puts "#{i_bandname} from #{i_bandlocation} | #{immortal_band.album}",
"#{d_bandname} from #{d_bandlocation} | #{darkthrone_band.album}",
"#{a_bandname} from #{a_bandlocation} | #{auranoir_band.album}"

