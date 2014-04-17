# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#
_about_body = "<h2>What is a Template?</h2><p>A template is similar to an architects’ blueprint. It is the fundamental energetic building block for everything in creation. Everything has a template be it a person, a tree, an event, a relationship or situation. Each of us as individuals has a divine template at the core of our being. From the moment of conception we develop a personal identity and our own unique perception of reality. This reality is based upon the sum total of our experiences. However some experiences leave us with illusions and limiting beliefs in our perception of reality. Hence we do not manifest and live from a place of freedom aligned with our divine template.</p><p><br></p><h2>What is Creation Template Healing?</h2><p>Creation Template Healing is a personal journey to freedom. It empowers the individual to understand the causes of the blockages and illusions which prevent them living each moment in their highest potential. This place of highest potential is our divine template.</p><p>Through identifying the roots of our limiting behavioural patterns, Creation Template provides healing tools to clear these blockages and realign to the freedom of our true self.</p><p><br></p><h2>How does Creation Template Healing work?</h2><p>The healing tools in Creation Template work with creation consciousness. The dual aspects of creation consciousness are the physical, manifested reality and the spiritual aspect, which is all knowing consciousness that holds all of life together. In Creation Template we refer to the physical aspect of the healing energy as AmmaGaia. AmmaGaia is the awakened loving consciousness of the Earth. The spiritual aspect of the healing works with Avataric consciousness. Avataric consciousness is awareness brought through divine archetypes which are aspects of divine oneness.</p><p>Creation Template healing is a way of working that allows you to embody and change your reality in a practical way. There is a fundamental change that can happen of core beliefs, for examples please see Testimonials.</p><p><br></p><h2>Why use Creation Template healing?</h2><p>Creation Template healing can be used for anything or on anyone, as everything in life has a fundamental energetic blueprint, or template. The original blueprint for an individuals highest potential is already in their energy field. Creation Template is designed to restore us to this true potential (original pristine template), assisting us to reach our highest energetic frequency. Each time we interact, reach out for an answer or start a new project, the information we rely on to do this is that of our subconscious. Our subconscious, which is the largest part of our consciousness, is often vibrating at a low energetic frequency, or has missing frequencies due to difficulties we experienced in our early stages of development. Our natural responses today are coming from this early, sometimes faulty, programming. When we experience difficulties or recurring patterns in life it is often due a missing building block, a low energetic frequency, driving our unconscious. These gaps and blockages create imbalances and disturbances in all of our bodies (mental, emotional, physical, spiritual) and the result is dysfunction in any of them. We may have come to believe our issues are just a part of who or how we are but this is just conditioning built up over time, which can be transformed.<br><br></p><p>Creation Template provides the perfect balance of healing, using earth and spiritual consciousness , that can be applied to all levels of an individuals’ being (emotional, mental, physical and spiritual issues), and to</p> "
Page.create(title: "about", body: _about_body)

Testimony.create!(person: 'mama', occupation: 'madre', content: 'ponete el poncho q hace frio')
Testimony.create!(person: 'atreyu', occupation: 'fantasia', content: 'falcoooor!!!!')
Testimony.create!(person: 'mama', occupation: 'madre', content: 'ponete el poncho q hace frio')
Testimony.create!(person: 'mama', occupation: 'madre', content: 'ponete el poncho q hace frio')
Testimony.create!(person: 'magolla', occupation: 'developer', content: 'zarpado en vim fieja!')

Workshop.create!(
title: 'Introducción a la Creación de Plantillas Taller de Sanadores 1-DAY',
description: 'Este taller ofrece una visión general del curso de Nivel 1, con una introducción al sistema de chakras (centros de energía dentro del cuerpo), las fases energéticas de desarrollo y puesta a tierra y los cables cósmicos. Durante el día usted recibirá varias sesiones de curación en estas áreas. También profundizará su capacidad de sintonizar con su intuición natural y aprenderán a usar radiestesia péndulo'
)

Workshop.create!(
title: ' Nivel 1 | Psicología Energética ',
description: ' Enseña la energética de nuestro ser (sistema de chakras, etapas de desarrollo, puesta a tierra y los cables cósmicos, masculino y femenino divino, etc), y la forma de interactuar con la conciencia de la anatomía espiritual, físico, mental y emocional. Da un instrumento práctico de diagnóstico que surge un problema y cómo sanar en nosotros mismos, los demás oa distancia.  '
)

Workshop.create!(
title: ' Nivel 2 | Potencial Puro ',
description: ' Le permite interactuar con la web de la creación, la enseñanza de cómo conectarse y tocar correas creación divina. Le enseña cómo mover la conciencia a un nivel más amplio, ilusiones limitantes claras, llegar a los puntos ciegos con un receptor sombra, mejorar nuevas plantillas con estructuras de diamantes energéticos y restaurar a su potencial puro.  '
)
Workshop.create!(
title: ' Nivel 3 | Diseño Divino ',
description: ' Se le enseña a cambiar la conciencia sin canalizar. El trabajo directo de la conciencia creación, este nivel le permite ver realmente ilusión, contraer realidades que limitan y volver al proyecto original de la luz, el designio divino, el ADN y la Mente Divina Milagro.  '
)
Workshop.create!(
title: ' Nivel 4 | Libertad ',
description: ' Se madura y despierta su propio maestro interior y esta conciencia le da la autoridad personal para sanar patrones inconscientes ocultos. Se aprende a trabajar más profundamente con las guías del alcohol, y cortar a través de la ilusión y de darle la libertad a ser realmente en el ahora.  '
)
Workshop.create!(
title: ' Level 5 | I AM ',
description: ' Utilizando las herramientas de los talleres anteriores, hay una profundización del despertar de su verdadero yo. Esta clase proporciona una profunda limpieza de la realidad consensuada y creencias colectivas que le permite abrir a abrazar la libertad, la alegría natural y el flujo de la vida.  '
)
