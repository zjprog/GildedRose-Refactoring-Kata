require "./gilded_rose"

items = [ 
  Item.new('+5 Dexterity Vest', 10, 20),
  Item.new('Aged Brie', 2, 0),
  Item.new('Elixir of the Mongoose', 5, 7),
  Item.new('Sulfuras, Hand of Ragnaros', 0, 80),
  Item.new('Sulfuras, Hand of Ragnaros', -1, 80),
  Item.new('Backstage passes to a TAFKAL80ETC concert', 15, 20),
  Item.new('Backstage passes to a TAFKAL80ETC concert', 10, 49),
  Item.new('Backstage passes to a TAFKAL80ETC concert',  5, 49)
]

stock = GildedRose.new(items)

for day in 0..30
  puts("-------- day #{day} --------");
  puts('name, sellIn, quality');
  items.each { |item| puts item.to_s }

  stock.update_quality()
end