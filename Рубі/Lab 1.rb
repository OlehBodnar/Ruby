def book_cost(pages, tirazh)

  authors_fee = pages * 24.0
  design_cost = 0.3 * authors_fee
  printing_setup = pages * 1.2
  editorial_cost = authors_fee + design_cost + printing_setup
  editorial_cost_per_copy = editorial_cost / tirazh


  paper_cost = (pages * 0.16) + 3.0 
  ink_cost = pages * 0.04
  depreciation = pages * 0.08
  total_printing_cost = paper_cost + ink_cost + depreciation
  production_cost = editorial_cost_per_copy + total_printing_cost
  profit = 0.23 * production_cost
  tax = 0.3 * (production_cost + profit)
  total_cost_per_copy = production_cost + profit + tax

  return {
    "Авторський гонорар" => authors_fee,
    "Собівартість книги" => production_cost,
    "Прибуток видавництва від всього тиражу" => profit * tirazh,
    "Податок на один екземпляр" => tax,
    "Загальна вартість одного екземпляра" => total_cost_per_copy
  }
end

result = book_cost(250, 1000)

result.each do |key, value|
  puts "#{key}: #{'%.2f' % value} грн"
end




