class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create
    song = self.create
    self.all << song
    song
  end

  def self.new_by_name(title)
    song = self.new_by_name
    song.name = title
    song
  end

  def self.create_by_name
    song = self.create_by_name
    song.name = title
    song
  end

  def self.find_by_name
    song = self.find_by_name
    song.name = title
    song
  end

  def self.find_or_create_by_name
    result = self.find_by_name(title)
    if result
      result
    else
      self.create_by_name(title)
    end
  end

  def self.alphabetical
    sorted = self.all.sort_by {|song| song.name}
    sorted
  end

  def self.new_from_filename(filename)
    @@all = filename.split(" - ")
    @@all[1] = @@all[1].chomp(".mp3")
    song = self.new
    song.name = @@all[1]
    song.artist_name = @@all[0]
    song
  end

  def self.create_from_filename(filename)
    result = self.new_from_filename
    song = self.create
    song.name = result.name
    song.artist_name = result.artist_name
    song
  end

  def self.destroy_all
    self.all.clear
  end
end 




end
