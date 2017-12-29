module GameMusic
  class Base

    attr_reader :key

    DEFAULT_MUSIC_KEY = :main.freeze

    def initialize(key=DEFAULT_MUSIC_KEY)
      @key = key
    end

    def update(new_key)
      puts "testo"
      new_key ||= DEFAULT_MUSIC_KEY
      music_changed = @key != new_key
      
      if music_changed
        @key = new_key
        play
      end 
    end

    def play
      puts "PLAY"
      music.tap do |m|
        m.loop = true
        m.play
      end
    end

    private

    def game_musics
      @game_musics ||= Gameplay.musics
    end

    def music
      Music.new(game_musics[@key][:music_path])
    end

  end
end