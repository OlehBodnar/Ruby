def round_results(result_hash, decimal_places)
  result_hash.transform_values { |value| value.round(decimal_places) }

end

area = gets.chomp.to_f
puts "Введіть метраж: #{area} "



puts "Введіть матеріали (панельний, цегляний, композит): "
material = gets.chomp
  
   puts material_index = case material.downcase
                   when "панельний", "бетон"
                     300
                   when "цегляний", "цегла"
                     500
                   when "композитний", "композит"
                     800
                   else
                     raise "Невірно введено матеріал"
                   end


  cost_of_materials = area * material_index

  puts "Введіть поверх: "
floor = gets.chomp.to_i
   p floor_coefficient = if [1, 2, 8, 9].include?(floor)
                        1.1
                      elsif [3,4,5,6,7].include?(floor)
                        1.4
                      else
                        raise "Невірно введено поверх"
                      end

  puts "Введіть район (центр, спальний, приміський): "
district = gets.chomp
   p district_coefficient = case district.downcase
                         when "центр"
                           1.7
                         when "спальний"
                           1.4
                         when "приміський"
                           1.15
                         else
                           raise "Невірно введено район"
                         end


 placement_cost = cost_of_materials * floor_coefficient * district_coefficient


  puts "Введіть стиль (хайтех, ексклюзів, індивідуал, стандарт): "
style = gets.chomp
 p style_coefficient = case style.downcase
                      when "хайтех"
                        2.0
                      when "ексклюзів"
                        1.7
                      when "індивідуал"
                        1.5
                      when "стандарт"
                        1.05
                      else
                        raise "Невірно введено стиль"
                      end

  developer_profit = placement_cost * style_coefficient
  
  


  puts "Введіть категорію (елітна, бюджетна, пільгова): "
category = gets.chomp
   p category_coefficient = case category.downcase
                         when "елітна"
                           1.75
                         when "бюджетна"
                           1.5
                         when "пільгова"
                           1.07
                         else
                           raise "Невірно введено категорію"
                         end


  total_cost = developer_profit *category_coefficient


result = {
  "Собівартість (СВ)" => cost_of_materials,
  "Вартість забудовника (ПЗ)" => developer_profit,
  "Загальна вартість (ЗВ)" => total_cost
}


rounded_result = round_results(result, 2)


rounded_result.each do |key, value|
  puts "#{key}: #{value} грн"
end


 











