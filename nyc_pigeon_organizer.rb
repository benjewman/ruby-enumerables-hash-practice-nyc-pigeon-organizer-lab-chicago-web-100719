def nyc_pigeon_organizer(data)
  solution_hash = {}
  
  data.each do |category, detail|
    detail.each do |thing, name_array|
      name_array.each do |name|
          solution_hash[name] = {:color => [], :gender => [], :lives => []}
      end
    end
  end
  
  x = solution_hash.keys
  data[:color].each do |the_color, pigeon|
    pigeon.each do |name|
      x.each do |the_name|
        if name == the_name
          solution_hash[the_name][:color].push(the_color.to_s)
        end
      end
    end
  end
  
  data[:gender].each do |the_gender, pigeon|
    pigeon.each do |name|
      x.each do |the_name|
        if name == the_name
          solution_hash[the_name][:gender].push(the_gender.to_s)
        end
      end
    end
  end
  
  data[:lives].each do |location, pigeon|
    pigeon.each do |name|
      x.each do |the_name|
        if name == the_name
          solution_hash[the_name][:lives].push(location)
        end
      end
    end
  end
  
  return solution_hash
end
