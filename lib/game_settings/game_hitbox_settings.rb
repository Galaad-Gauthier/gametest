module GameSettings
  class GameHitboxSettings

    def self.directions
      {
        left: {
          x1_position: 0, 
          y1_position: 0, 
          x2_position: 80, 
          y2_position: 600
        }, 

        right: {
          x1_position: 720, 
          y1_position: 0, 
          x2_position: 800, 
          y2_position: 600
        },

        forward: {
          x1_position: 165, 
          y1_position: 165, 
          x2_position: 600, 
          y2_position: 400
        }, 

        back: {
          x1_position: 160, 
          y1_position: 485, 
          x2_position: 650, 
          y2_position: 580
        }
      }
    end

    def self.menu_items
      {
        go_to: {
          x1_position: 860,
          y1_position: 630,
          x2_position: 960,
          y2_position: 650
        },

        look_at: {
          x1_position: 820,
          y1_position: 670,
          x2_position: 905,
          y2_position: 690
        },
        
        talk_to: {
          x1_position: 930,
          y1_position: 670,
          x2_position: 990,
          y2_position: 690
        },

        take: {
          x1_position: 820,
          y1_position: 710,
          x2_position: 900,
          y2_position: 730
        },

        give: {
          x1_position: 930,
          y1_position: 710,
          x2_position: 1000,
          y2_position: 730
        }
      }
    end

    def self.choices
      {
        choice_1: {
          x1_position: 175,
          x2_position: 780,
          y1_position: 665,
          y2_position: 685
        },

        choice_2: {
          x1_position: 175,
          x2_position: 780,
          y1_position: 690,
          y2_position: 720
        },

        choice_3: {
          x1_position: 175,
          x2_position: 780,
          y1_position: 715,
          y2_position: 740
        }
      }
    end

  end
end