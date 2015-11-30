json.array!(@trabajadors) do |trabajador|
  json.extract! trabajador, :id, :rut, :nombres, :apellidopaterno, :apellidomaterno, :fechanacimineto, :estadocivil, :sexo, :celular, :correo, :cargo
  json.url trabajador_url(trabajador, format: :json)
end
