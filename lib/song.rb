class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def self.create
    song = self.create
    self.all << song
    song
  end

  def self.new_by_name(title)
    song = self.new_by_name
    song.name = title
  end

  def self.create_by_name
    song = self.create_by_name
    song.name = title
    song
  end

  


  def save
    self.class.all << self
  end

end
