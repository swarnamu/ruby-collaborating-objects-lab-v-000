class Song
    attr_accessor :name, :artist

    def initialize(name)
      @name = name
    end

    def save
		@@all << self
	end

	def songs
		@songs
	end

	def add_song(song)
		@songs << song
	end

	def self.find_or_create_by_name(name)
		@@all.each  do |artist|
			if artist.name == name
				return artist
			else
				return self.new(name)
			end
		end
	end

	def self.all
		@@all
	end

end
