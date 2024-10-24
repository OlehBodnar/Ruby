def process_text(input)
  string_length = input.length

  uppercase_count = input.scan(/[A-Z]/).count
  lowercase_count = input.scan(/[a-z]/).count
  digit_count = input.scan(/\d/).count

  words = input.split
  sorted_words = words.sort_by(&:length)
  capitalized_words = sorted_words.map(&:capitalize)
  suspicious_words = words.select { |word| word.match?(/[A-Za-z]/) && word.match?(/\d/) }
  new_text = words.sort_by { |word| -word.length }.join(" ")
  {
    "1.Розмір рядка" => string_length,
    "2.Кількість заголовних букв" => uppercase_count,
    "3.Кількість прописних букв" => lowercase_count,
    "4.Кількість цифр" => digit_count,
    "5..Впорядкований масив слів за зростанням довжини" => capitalized_words,
    "6.Слова, підозрілі на абревіатуру" => suspicious_words,
    "7.Новий текст за спаданням довжини" => new_text
  }
end

puts "Введіть текстовий рядок:"
input = gets.chomp

result = process_text(input)


puts "\nРезультати:"
result.each do |key, value|
  puts "#{key}: #{value}"
end
