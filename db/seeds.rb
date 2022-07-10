puts "creando ofertas..."

Oferta.destroy_all
Empresa.destroy_all

Genero.create([
  { nombre: "Masculino" },
  { nombre: "Femenino" },
  { nombre: "Otro" },
  { nombre: "Prefiero no especificarlo" },
])

Modalidad.create([
  { nombre: "Remoto" },
  { nombre: "Mixto" },
  { nombre: "Presencial" },
])

Region.create([
  { nombre: "Región de Arica y Parinacota" },
  { nombre: "Región de Tarapacá" },
  { nombre: "Región de Antofagasta" },
  { nombre: "Región de Atacama" },
  { nombre: "Región de Coquimbo" },
  { nombre: "Región de Valparaíso" },
  { nombre: "Región del Libertador General Bernardo OHiggins" },
  { nombre: "Región del Maule" },
  { nombre: "Región del Ñuble" },
  { nombre: "Región del Biobío" },
  { nombre: "Región de La Araucanía" },
  { nombre: "Región de Los Ríos" },
  { nombre: "Región de Los Lagos" },
  { nombre: "Región de Aysén del G. Carlos Ibañez del Campo" },
  { nombre: "Región de Magallanes y de la Antártica Chilena" },
  { nombre: "Región Metropolitana de Santiago" },
])

Empresa.create(
  [
    {
      rut: "11111111-1",
      email: "admin@aiep.cl",
      password: 123456,
      razon_social: "AIEP",
      representante: "Ana",
      direccion: "Calle Falsa 321",
      telefono: 888888888,
    },
    {
      rut: "22222222-2",
      email: "admin@inacap.cl",
      password: 123456,
      razon_social: "Inacap",
      representante: "Juan",
      direccion: "Avenida Falsa 321",
      telefono: 999999999,
    },

  ]
)

Persona.create(
  [
    {
      rut: "33333333-1",
      email: "usuario@uno.cl",
      password: 123456,
      nombre: "Usuario1",
      fnac: "1988-04-25",
      genero_id: 2,
      telefono: 888888888,
      curriculum: "cv.pdf",
    },
    {
      rut: "44444444-1",
      email: "usuario@dos.cl",
      password: 123456,
      nombre: "Usuario2",
      fnac: "1998-04-05",
      genero_id: 1,
      telefono: 888888888,
      curriculum: "cv.docx",
    },

  ]
)

5.times do
  Oferta.create(
    [
      {
        cargo: "Programador",
        descripcion: "Requerimos a estudiantes que necesiten realizar su practica para desarrollar un e-commerce",
        cant_vacantes: 20,
        salario_min: 1100000,
        salario_max: 1500000,
		    modalidad_trabajo: "Mixto",
		    region_id: 11,
        fecha_inicio: "2022-07-04 17:55:01",
      },
      {
        cargo: "Informático",
        descripcion: "Estamos buscando interesados en desarrollar y mantener nuestro ERP",
        cant_vacantes: 6,
        salario_min: 800000,
        salario_max: 900000,
        modalidad_trabajo: "Presencial",
        region_id: 11,
        fecha_inicio: "2022-06-03 17:55:01",
      },
      {
        cargo: "Maquetador Web Angular",
        descripcion: "Precisamos incorporar a nuestro equipo 2 Maquetadores web con experiencia en Angular",
        cant_vacantes: 6,
        salario_min: 600000,
        salario_max: 50000,
        modalidad_trabajo: "Remoto",
        region_id: 11,
        fecha_inicio: "2022-05-02 17:55:01",
      },
      {
        cargo: "Técnico de Apoyo",
        descripcion: "Busco personal para el apoyo en el desarrollo de aplicaciónes web trabajando en equipo y bajo presión",
        cant_vacantes: 8,
        salario_min: 500000,
        salario_max: 700000,
        modalidad_trabajo: "Remoto",
        region_id: 11,
        fecha_inicio: "2022-04-01 17:55:01",
      },
      {
        cargo: "Diseñador",
        descripcion: "Se buscan front-end developer para realizar interfaces moviles a tiempo completo.",
        cant_vacantes: 5,
        salario_min: 350000,
        salario_max: 550000,
        modalidad_trabajo: "Mixto",
        region_id: 11,
        fecha_inicio: "2022-03-30 17:55:01",
      }

    ]
  )


end

puts "finalizado!!!"
