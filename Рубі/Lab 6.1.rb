def create_goods_hash(arr)
  goods_hash = Hash.new(0) 

  arr.each do |item|
    goods, count = item.split('-')
    goods = goods.to_sym  
    goods_hash[goods] += count.to_i 
  end

  goods_hash
end

goods_list = ['Milk-10', 'Milk-20', 'Sugar-10','Sugar-10']

result = create_goods_hash(goods_list)
puts result
