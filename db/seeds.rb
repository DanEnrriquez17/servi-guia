# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'open-uri'
puts "Destruyendo las bases de datos"
Resena.destroy_all
Proveedor.destroy_all

# Proveedor seeds
puts "Creando la base de datos de proveedores"
dionisio = Proveedor.create!(
  nombre: "Dionisio",
  tipo_de_servicio: "Lavado de autos",
  horario: "Lunes a Viernes de 9am a 6pm",
  zona: "Residencial Natura",
  costo: 90.00,
  telefono: "55-4469-5941",
  calificacion: 4.9,
  recomendaciones: 10
)
dionisio_img = URI.open("https://res.cloudinary.com/djmnbuel1/image/upload/v1696960374/Servi%20guia/car-wash_ynjioi.png")
dionisio.avatar.attach(io: dionisio_img, filename: "dionisio.png", content_type: "image/png")

# Reseñas seeds
puts "Creando la base de datos de reseñas"
resena1 = dionisio.resenas.create!(
  nombre: "Daniel Enrriquez",
  review: "Muy buen servicio del señor Dionisio, deja el coche muy limpio y hace bien su trabajo",
  calificacion: 4.9,
  fecha: Date.today
)
resena1archivo = URI.open("https://res.cloudinary.com/djmnbuel1/image/upload/v1696960919/Servi%20guia/20221106_101651_ipgwn3.jpg")
resena1.photos.attach(io: resena1archivo, filename: "resena1.jpg", content_type: "image/jpg")
