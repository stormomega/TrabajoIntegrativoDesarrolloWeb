class Direccion < ActiveRecord::Base
  belongs_to :trabajador

  validates :trabajador, presence: true, uniqueness: true, length: {in:5..25, too_short: 'Tiene que tener al menos 5 caracteres', too_long: 'MAximo de 25 caracteres'},
format: {with: /([A-Za-z0-9\-\ \_ ]+)/, message: "Tu username puede sólo contenter letras, números y guiones"}

   validates :calle, presence: true
   validates :numero, presence: true
   validates :comuna, presence: true
   validates :comuna, presence: true
   validates :region, presence: true 
   validates :pais, presence: true
   scope :recientes, ->{order("created_at desc")}
end
