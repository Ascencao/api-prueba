class CarSerializer < ActiveModel::Serializer
  attributes :id, :color
  # Para mostrar el nombre del campo con otro nombre en el json
 	attribute :model, key: 'modelo'
end
