require 'faker'

puts " Menus creation ......"


10.times do 
    Menu.create!({
        date: Faker::Date.between(from: '2021-02-01', to: '2021-02-26')
    }); 
    p '.'
end

p 'OK.'
p "menus creation complete ..."