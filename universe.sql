CREATE TABLE galaxy (galaxy_id serial not null,
					 galaxy_name varchar(30) not null,
					 type_galaxy varchar(30),
					discovery numeric,
					color_galaxy text,
					PRIMARY KEY(galaxy_id));



CREATE TABLE star (star_id serial not null,
					 star_name varchar(30) not null,
					galaxy_id int not null ,
					 has_planet boolean,
					type_star text,
					PRIMARY KEY(star_id) ,
				  foreign key (galaxy_id) REFERENCES galaxy (galaxy_id));
				  
CREATE TABLE planet (planet_id serial not null,
					 planet_name varchar(30) not null,
					star_id int not null ,
					 has_moon boolean,
					size_planet text,
					PRIMARY KEY(planet_id) 
				 );
				  
				  

CREATE TABLE star_planet(star_id int not null,
						planet_id int not null,
						PRIMARY KEY(star_id,planet_id),
						 FOREIGN KEY(planet_id) REFERENCES planet (planet_id),
						 FOREIGN KEY(star_id) REFERENCES star (star_id) );				  
				  
 

CREATE TABLE moon(moon_id  serial not null,
			 planet_id int not null,
			 moon_name varchar(30) not null,
			 size_km numeric,
			 temperature numeric 
			,PRIMARY KEY( moon_id));					  
				  

CREATE TABLE  planet_moon(moon_id int not null,
						planet_id int not null,
						PRIMARY KEY(moon_id,planet_id),
						 FOREIGN KEY(planet_id) REFERENCES planet (planet_id),
						 FOREIGN KEY(moon_id) REFERENCES moon (moon_id) );			
				  
				  
				  	
INSERT INTO galaxy (galaxy_name,type_galaxy,discovery,color_galaxy ) VALUES ('via lactea', 'espiral', 1610,'blanco'),
							('andromeda  I','espiral', 1924,'rosa'),
							('andromeda II', 'enana esferoidal', 1943 , 'rosa'),
							('Centaurus A','lenticular', null ,'cafe-azul' ),
							(' 0402+379','eliptica', null, 'óscuro'),
							 ('Enana de Acuario','irregular',null, 'blanca');
							 
					 
							 
INSERT INTO star(galaxy_id , star_name, has_planet , type_star)	values
							(1,'kepler-438',true, 'enana amarilla'),
							(1,'Sirio', true, 'Enana blanca' ),
							(1,'Canopus',true ,'Supergigante blanco-amarilla'),
							(1,'Arturo',true,'Gigante naranja'),
							(1,'Alfa Centauri A',false,'Enana amarilla'),
							(1,'Vega',true,'Gigante blanca'),
							(1,'Rigel',true,'Supergigante azul'),
							(1,'Procyon',true ,'Supergigante azul'),
							(1,'Achernar',true ,'Gigante blanca'),
							(1,'Betelgeuse',true ,'Supergigante roja'),
							(1,'Hadar',true ,'Gigante blanca'),
							(1,'Capella',true ,'Gigante amarilla'),
							(2,'sirrah',true ,'estrella binaria'),
							(2,'mirach',true ,'gigante roja'),
							(2,'6 persei',true ,'gigante amarillo'),
							(1,'Astro Rey.', true,'es- pectral G2' ),
							(1,'kepler-22',true, 'enana amarilla');
							
 INSERT INTO planet ( planet_name,star_id  , has_moon ,size_planet) values('mercurio',16 , true,2439.7  )	,			  
				  				('venus', 16, true,6051.8 )	,
								('tierra',16 , true,6371 )	,
								('marte', 16, true, 3389.5 )	,
								('jupiter', 16, true,69911 )	,
								('saturno', 16, true, 58232)	,
								('urano', 16, true,25362 )	,
								('neptuno', 16, true,24622 )	,
								('pluton', 16, true,1188.3 )	,
								('kepler-22b ',17 , true,15290 )	,
								('Kepler-438b', 18 , false, null)	;
								
								
								
 INSERT INTO moon ( moon_name,planet_id  , temperature ,size_km) values		
								('luna', 3, null,1737.4 )	,
								('fobos',4 , null,11.267 )	,
								('deimos',4 , null,11.4 )	,
								('europa', 5, null,1560 )	,
								('Ganimedes',5 , null, 2634.1)	,
								('io', 5, null, 1821.6 )	,
								('Calisto',5 , null, 2410.3 )	,
								('S/2003 J 19',5 , null,null )	,
								('Amaltea', 5, null,83.5  )	,
								('Adrastea',5 ,null ,4.2 ),
								('Himalia', 5,null ,170 ),
								('Cilene', 5,null ,null ),
								('Filofrósine',5 ,null , null),
								('Euporia', 5, null,1 ),
								('Kallichore',5 ,null ,null ),
								('S/2010 J 2',5 ,null ,null ),
								('Tebe',5 , null,49.3 ),
								('S/2003 J 2',5 ,null ,null ),
								('Carmé', 5, null,null ),
								('S/2003 J 18',5,null ,null);
  
				  
INSERT INTO star_planet(planet_id,star_id)values(1,16),	
												(2,16),
												(3,16),
												(4,16),
												(5,16),
												(6,16),
												(7,16),	
												(8,16),
												(9,16),
												(10,17),
												(11,18);
				  
				  
 				  
				  
INSERT INTO planet_moon (planet_id,moon_id)values (3,1),	
												(4,2),
												(4,3),
												(5,4),
												(5,5),
												(5,6),
												(5,7),	
												(5,8),
												(5,9),
												(5,10),
												(5,11),
												(5,12),
 												(5,13),
												(5,14),
												(5,15),
												(5,16),
												(5,17),
												(5,18),	
												(5,19),
												(5,20);
				  
				  
				  
				  
				  
				  
				  
				  
				  
				  
				  
				  
				  
				  
				  
				  
				  
				  
				  
				  
				  
				  
				  