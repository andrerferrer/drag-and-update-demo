puts "Clean DB"

puts %{
   ___________________    . , ; .
  (___________________|~~~~~X.;' .
                        ' `" ' `
              TNT
}

User.destroy_all
Category.destroy_all
Article.destroy_all


puts "Create users"
User.create! email: "player@one.com", password: '123456'
User.create! email: "player@two.com", password: '123456'

puts 'Create categories'
Category.create! title: 'Category one'
Category.create! title: 'Category two'

puts "Create articles"
Article.create! title: "one article", body: 'With a nice body', user: User.first, category: Category.first
Article.create! title: "Another article", body: 'With another nice body', user: User.second, category: Category.second
