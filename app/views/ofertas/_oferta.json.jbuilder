json.extract! oferta, :id, :cargo, :descripcion, :cant_vacantes, :salario_min, :salario_max, :fecha_inicio, :modalidad_id, :created_at, :updated_at
json.url oferta_url(oferta, format: :json)
