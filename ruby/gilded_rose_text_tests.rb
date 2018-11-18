require './gilded_rose'

items = [
  Item.new('+5 Dexterity Vest', 10, 20),
  Item.new('Aged Brie', 2, 0),
  Item.new('Elixir of the Mongoose', 5, 7),
  Item.new('Sulfuras, Hand of Ragnaros', 0, 80),
  Item.new('Sulfuras, Hand of Ragnaros', -1, 80),
  Item.new('Backstage passes to a TAFKAL80ETC concert', 15, 20),
  Item.new('Backstage passes to a TAFKAL80ETC concert', 10, 49),
  Item.new('Backstage passes to a TAFKAL80ETC concert', 5, 49),
  # This Conjured item does not work properly yet
  # Item.new('Conjured Mana Cake', 3, 6)
]

stock = GildedRose.new(items)

for day in 0..30
  puts("--------------------- day #{day} ---------------------")
  puts('name, sellIn, quality')
  items.each { |item| puts item.to_s }

  stock.update_quality
end

# Conjured Items

conjured_items = [Item.new('Conjured Mana Cake', 3, 6)]
stock2 = GildedRose.new(conjured_items)

for day in 0..6
  STDERR.puts("--------------------- day #{day} ---------------------")
  STDERR.puts('name, sellIn, quality')
  conjured_items.each { |item| STDERR.puts item.to_s }

  stock2.update_quality
end