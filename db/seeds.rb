# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
2.times do |i|
    mes = ['Enero', 'Febrero']
    31.times do |x|
        fecha = (x + 1).to_s + "/" + (i + 1).to_s + "/" + "2020"
        valor = Random.rand(10000..30000)
        Uf.create!(fecha: fecha, valor_uf: valor)

    end
end
