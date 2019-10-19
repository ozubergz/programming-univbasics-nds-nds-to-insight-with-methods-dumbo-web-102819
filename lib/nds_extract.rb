require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  result = {}
  row_index = 0
  while row_index < nds.length do
    director_name = nds[row_index][:name]
    director_movies = nds[row_index][:movies]
    
    grand_total = gross_for_director(director_movies)

    result[director_name] = grand_total

    row_index += 1
  end
  
  result
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input

def gross_for_director(director_data)
  row_index = 0
  collect_total = 0
  
  while row_index < director_data.length do
    collect_total += director_data[row_index][:worldwide_gross]
    row_index += 1
  end
  
  collect_total
end
