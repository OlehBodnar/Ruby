
n = 12  
ba = [3, 6, 11, 5, 6, 7, 6, 5]  
al = [10, 6, 9, 5, 6, 9, 5]     

all_orders = []
visited_clients = []
non_alcoholic_clients = []
alcoholic_clients = []
both_orders_clients = []
not_visited_clients = []


for order in ba
  all_orders << order
end

for order in al
  all_orders << order
end

for order in all_orders
  visited_clients << order unless visited_clients.include?(order)
end


non_alcoholic_count = 0
for order in ba
  non_alcoholic_count += 1
end

for order in ba
  non_alcoholic_clients << order unless non_alcoholic_clients.include?(order)
end

alcoholic_count = 0
for order in al
  alcoholic_count += 1
end

for order in al
  alcoholic_clients << order unless alcoholic_clients.include?(order)
end

for client in non_alcoholic_clients
  both_orders_clients << client if alcoholic_clients.include?(client)
end

for client in 1..n
  not_visited_clients << client unless visited_clients.include?(client)
end


p "1.Загальний список замовлень та загальну кількість замовлень: #{all_orders} / #{all_orders.size}"
p "2.Список та кількість клієнтів, що сьогодні відвідали кафе: #{visited_clients}/ #{visited_clients_count}"
p "3.Кількість безалкогольних замовлень: #{non_alcoholic_count}"
p "4.Кількість та список клієнтів (без повторень), що робили «безалкогольні» замовлення.
: #{non_alcoholic_clients}/#{non_alcoholic_clients_count}"
p "5.Кількість алкогольних замовлень: #{alcoholic_count}"
p "6.Кількість та список клієнтів (без повторень), що робили «алкогольні» замовлення: #{alcoholic_clients}/#{alcoholic_clients_count}"
p "7.Кількість та список клієнтів, що робили обидва типи замовлень.: #{both_orders_clients}/#{both_orders_clients_count}"
p "8.Кількість та список постійних клієнтів, що сьогодні не відвідували кафе: #{not_visited_clients}/#{not_visited_clients_count}"
