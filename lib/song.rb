class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def self.create
    song = self.create
    song
  end

  def self.new_by_name
    song = self.new_by_name

  def save
    self.class.all << self
  end

end
