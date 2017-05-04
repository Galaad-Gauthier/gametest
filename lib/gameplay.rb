class Gameplay

  def self.map
    {
      scene_1: {
        image_path: "./data/images/scenes/1.png",
        events: {
          left: { end_scene: :scene_3 },
          right: { end_scene: :scene_2 }
        }   
      },

      scene_2: {
        image_path: "./data/images/scenes/2.png",
        character: :merchant,
        events: {
          left:  { end_scene: :scene_1 },
          right:  { end_scene: :scene_3 }
        }   
      },

      scene_3: {
        image_path: "./data/images/scenes/3.png",
        events: {
          left: { end_scene: :scene_2 },
          right: { end_scene: :scene_1 },
          forward: { end_scene: :scene_4 }
        }
      },

      scene_4: {
        image_path: "./data/images/scenes/4.png",
        events: {
          back: { end_scene: :scene_3 },
          forward: { end_scene: :scene_5 }
        }
      },

      scene_5: {
        image_path: "./data/images/scenes/5.png",
        character: :merchant_2,
        events: {
          back: { end_scene: :scene_4 }
        }
      }

    }
  end

  def self.characters
    {
      merchant: {
        image_path: "./data/characters/merchant.png",
        dialogue: :merchant,
        description: :merchant
      },

      merchant_2: {
        image_path: "./data/characters/merchant2.png"        
      },

      player: {
        image_path: "./data/characters/player.png"
      }
    }
  end

  def self.sfx
    {
      clicking: Sound.new("./data/sfx/click.wav"),
      cough: Sound.new("./data/sfx/cough.wav")
    }
  end

  def self.musics
    {
      main: Music.new("./data/musics/music_1.ogg"),
      alternate: Music.new("./data/musics/music_2.mp3")
    }
  end

  def self.menus
    {
      [[860,630], [960, 650]]  => {
        text: "Aller vers",
        action: :go_to
      },

      [[820, 670], [905,690]] => {
        text: "Regarder",
        action: :look_at
      },

      [[930, 670], [990, 690]] => {
        text: "Parler",
        action: :talk_to
      },

      [[820, 710], [900, 730]] => {
        text: "Prendre",
        action: :take
      },
      
      [[930, 710], [1000, 730]] => {
        text: "Donner",
        action: :give
      }
    }
  end

  def self.dialogues
    {
      merchant: {
        default: "Salut l'etranger, que fais-tu ici ?",
        default_sound_path: "./data/dialogues/merchant_default.ogg",
        choices: {
          
          choice_1: { 
            choice_text: "Je ne sais pas trop, pour etre honnete...",
            choice_sound_path: "./data/dialogues/merchant_choice_1.ogg",

            sentences: [
              {
                text: "J'ai plein de marchandises a te proposer !",
                sound_path: "./data/dialogues/merchant_choice_1_1.ogg",
                source: :character
              },

              {
                text: "Ah oui ? Quel type de marchandises ?",
                sound_path: "./data/dialogues/merchant_choice_1_2.ogg",
                source: :self
              },

              {
                text: "Petit curieux va, ca ne te regarde pas",
                sound_path: "./data/dialogues/merchant_choice_1_3.ogg",
                source: :character
              },

              { 
                text: "Allez, file, du balai !",
                sound_path: "./data/dialogues/merchant_choice_1_4.ogg",
                source: :character
              },

              {
                text: "Pas tres aimable...",
                sound_path: "./data/dialogues/merchant_choice_1_5.ogg",
                source: :self
              }
            ]
          },

          choice_2: {
            choice_text: "En quoi ca vous regarde ?",
            choice_sound_path: "./data/dialogues/merchant_choice_2.ogg",            

            sentences: [
              {
                text: "Tout doux mec, je veux pas d'ennuis moi",
                sound_path: "./data/dialogues/merchant_choice_2_1.ogg",
                source: :character
              }
            ]
          },

          choice_3: {
            choice_text: "Au revoir",
            choice_sound_path: "./data/dialogues/merchant_choice_3.ogg",

            sentences: [
              {
                text: "Salut l'ami !",
                sound_path: "./data/dialogues/merchant_choice_3_1.ogg",
                source: :character
              }
            ]
          }
        }

      }
    }
  end

  def self.descriptions
    {
      merchant: {
        text: "C'est un vieux marchand obese avec une veste de riche sur l'epaule",
        sound_path: "./data/descriptions/merchant.ogg"
      }
    }
  end

  def self.choices
    {
      [[175, 665], [780, 685]] => {
        choice: :choice_1
      },

      [[175, 690], [780, 720]] => {
        choice: :choice_2
      },
      
      [[175, 715], [780, 740]] => {
        choice: :choice_3
      }
    }
  end

  def self.sprites
    {
      left: { image_path: "./data/images/sprites/left_arrow.png" },
      right: { image_path: "./data/images/sprites/right_arrow.png" },
      forward: { image_path: "./data/images/sprites/up_arrow.png" },
      back: { image_path: "./data/images/sprites/down_arrow.png" }
    }
  end

end