##coding with Jon
#def get_first_name_of_season_winner
#season_data = data{season}
#season_data.find do [ season ]
   #####REMEMBER .UNIQ FOR.....SOMETHING?  ACCORDING TO JON
##.find returns something truthy or falsey.  If truthy, puts value




#  winner["name"] = bachelor[season].find do | contestant |
def get_first_name_of_season_winner(data, season)
  winner = data[season].find do | contestant |
    contestant["status"] == "Winner"
  end 
  winner = winner["name"].split
  winner = winner[0]
end

##flatten turns array of arrays into a single array
def all_contestants(data)
  data.values.flatten
end

##HOW TO COMBINE ARRAYS?  -- FLATTEN! 

  #name = data[season].find do | season, contestant |
    #contestant["season"]["occupation"] == occupation
def get_contestant_name(data, occupation)
  correct_contestant = all_contestants(data).find do | contestant |
    occupation == contestant["occupation"]
  end
  correct_contestant["name"]
end
  
##alternate
## def get_contestant_name(data, occupation)
 # all_contestants(data).reduce(0) do |acc, contestant |
  #  if (contestant["hometown"] == hometown)
  #    ac + 1 
  #  else
   #   acc
  #  end
  #  end


def count_contestants_by_hometown(data, hometown)
  # code here
  all_contestants(data).count do | contestant |
    hometown == contestant["hometown"]
  end
end

def get_occupation(data, hometown)
  # code here
  # # occupation == contestant["occupation"]
  homegirl = all_contestants(data).find do | contestant |
    contestant["hometown"] == hometown
  end
    homegirl["occupation"]
end

def get_average_age_for_season(data, season)
  # code here
end
