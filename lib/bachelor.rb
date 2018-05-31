require 'pry'

def get_first_name_of_season_winner(data, season)
  # code here

  data.each do |season_number, season_data|
    if season_number == season
      season_data.each do |contestant|
        if contestant["status"] == "Winner"
       return winner_first_name = contestant["name"].split(" ").shift
        end
      end
    end
  end
end


def get_contestant_name(data, occupation)
  # code here

  data.each do |season_number, season_data|
    season_data.each do |contestant|
      if contestant["occupation"] == occupation
       return occupant = contestant["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  hometown_count = 0
  data.each do |season_number, season_data|
    season_data.each do |contestant|
      if contestant["hometown"] == hometown
        hometown_count += 1
        
      end
    end
  end
  hometown_count
end

def get_occupation(data, hometown)
  # code here
  data.each do |season_number, season_data|
    season_data.each do |contestant|
      if contestant["hometown"] == hometown
        return contestant["occupation"]
    
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  age = []
  data.each do |season_number, season_data|
    if season_number == season
      season_data.each do |contestant|
        contestant.collect do |attribute, value|
          if attribute == "age"
            age << value.to_f
          end
        end  
      end
    end 
  end
  (age.inject {|sum, el| sum + el } / age.size).round
end
