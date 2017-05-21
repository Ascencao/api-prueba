class GarageSerializer < ActiveModel::Serializer
	# Para mostrar el modelo con otro nombre en el json
	type 'Tallers'
  attributes :id, :name
  has_many :cars
end
