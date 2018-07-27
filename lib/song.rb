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
    song = self.new
    song.save
    song
  end

  def self.new_by_name(name)
    song = self.create
    song.name = name
    song
  end

  def self.create_by_name(name)
    song = self.create
    song.name = name
    song
  end

  def self.find_by_name(name)
    song = self.all.find { |song| song.name == name }
    song
  end

  def self.find_or_create_by_name(name)
    if !self.find_by_name(name).nil?
      self.find_by_name(name)
    else
      self.create_by_name(name)
    end
  end

  def self.alphabetical
    self.all.sort_by { |song| song.name }
  end

  def self.new_from_filename(filename)
      file = filename.collect do |row|
        data = row.split(" - ")
        artist = data[0]
        song = data[1].replace(".mp3", "")

      

  end

  def self.create_from_filename
  end

  def self.destroy_all
    @@all.clear
  end

end
