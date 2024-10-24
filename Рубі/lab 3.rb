
n = 12 
ba = [3, 6, 11, 5, 6, 7, 6, 5] 
al = [10, 6, 9, 5, 6, 9, 5]     


all_orders = ba + al
visited_clients = []
all_orders.each do |client|
  visited_clients << client unless visited_clients.include?(client)
end

visited_clients_count = visited_clients.size

non_alcoholic_count = ba.size

non_alcoholic_clients = []
ba.each do |client|
  non_alcoholic_clients << client unless non_alcoholic_clients.include?(client)
end
non_alcoholic_clients_count = non_alcoholic_clients.size


alcoholic_count = al.size


alcoholic_clients = []
al.each do |client|
  alcoholic_clients << client unless alcoholic_clients.include?(client)
end
alcoholic_clients_count = alcoholic_clients.size

both_orders_clients = []
non_alcoholic_clients.each do |client|
  both_orders_clients << client if alcoholic_clients.include?(client)
end
both_orders_clients_count = both_orders_clients.size

not_visited_clients = []
(1..n).each do |client|
  not_visited_clients << client unless visited_clients.include?(client)
end
not_visited_clients_count = not_visited_clients.size


puts "1.Загальний список замовлень та загальну кількість замовлень: #{all_orders} / #{all_orders.size}"
puts "2.Список та кількість клієнтів, що сьогодні відвідали кафе: #{visited_clients}/ #{visited_clients_count}"
puts "3.Кількість безалкогольних замовлень: #{non_alcoholic_count}"
puts "4.Кількість та список клієнтів (без повторень), що робили «безалкогольні» замовлення.
: #{non_alcoholic_clients}/#{non_alcoholic_clients_count}"
puts "5.Кількість алкогольних замовлень: #{alcoholic_count}"
puts "6.Кількість та список клієнтів (без повторень), що робили «алкогольні» замовлення: #{alcoholic_clients}/#{alcoholic_clients_count}"
puts "7.Кількість та список клієнтів, що робили обидва типи замовлень.: #{both_orders_clients}/#{both_orders_clients_count}"
puts "8.Кількість та список постійних клієнтів, що сьогодні не відвідували кафе: #{not_visited_clients}/#{not_visited_clients_count}"

