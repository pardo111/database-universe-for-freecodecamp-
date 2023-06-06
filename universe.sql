CREATE DATABASE universe;

CREATE TABLE galaxy (galaxy_id serial not null,
					 name varchar(30) not null UNIQUE,
					 type_galaxy varchar(30),
					discovery numeric,
					color_galaxy text,
					PRIMARY KEY(galaxy_id));



CREATE TABLE star (star_id serial not null,
					  name varchar(30) not null UNIQUE,
					galaxy_id int not null ,
					 has_planet boolean,
					type_star text,
					PRIMARY KEY(star_id) ,
				  foreign key (galaxy_id) REFERENCES galaxy (galaxy_id));
				  
CREATE TABLE planet (planet_id serial not null,
					  name varchar(30) not null UNIQUE,
					star_id int not null ,
					 has_moon boolean,
					size_planet text,
					PRIMARY KEY(planet_id) 
				 );
				  
				  

 




CREATE TABLE star_planet(
							name varchar(30),
						 star_planet_id varchar(1) UNIQUE,
						star_id int not null,
						planet_id int not null UNIQUE,
						PRIMARY KEY(  star_planet_id ),
						FOREIGN KEY(planet_id) REFERENCES planet (planet_id),
						FOREIGN KEY(star_id) REFERENCES star (star_id) );				  
				  
 

CREATE TABLE moon(moon_id  serial not null,
			 planet_id int not null,
			  name varchar(30) not null UNIQUE,
			 size_km numeric,
			 temperature numeric 
			,PRIMARY KEY( moon_id));					  
				  

CREATE TABLE  planet_moon( planet_moon_id  varchar(1) UNIQUE,
						name varchar(30),
						moon_id int not null UNIQUE,
						planet_id int not null,
						PRIMARY KEY(  planet_moon_id ),
						FOREIGN KEY(planet_id) REFERENCES planet (planet_id),
						FOREIGN KEY(moon_id) REFERENCES moon (moon_id) );			
				  
				  
				  	
INSERT INTO galaxy ( name,type_galaxy,discovery,color_galaxy ) VALUES ('via lactea', 'espiral', 1610,'blanco'),
							('andromeda  I','espiral', 1924,'rosa'),
							('andromeda II', 'enana esferoidal', 1943 , 'rosa'),
							('Centaurus A','lenticular', null ,'cafe-azul' ),
							(' 0402+379','eliptica', null, 'óscuro'),
							 ('Enana de Acuario','irregular',null, 'blanca');
							 
					 
							 
INSERT INTO star(galaxy_id ,  name, has_planet , type_star)	values
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
							(1,'kepler-22',true, 'enana amarilla'),
							(1,'Lich1', true ,'pulsar');
							
 INSERT INTO planet (  name,star_id  , has_moon ,size_planet) values('mercurio',16 , true,2439.7  )	,			  
				  				('venus', 16, true,6051.8 )	,
								('tierra',16 , true,6371 )	,
								('marte', 16, true, 3389.5 )	,
								('jupiter', 16, true,69911 )	,
								('saturno', 16, true, 58232)	,
								('urano', 16, true,25362 )	,
								('neptuno', 16, true,24622 )	,
								('pluton', 16, true,1188.3 )	,
								('kepler-22b ',17 , true,15290 )	,
								('Kepler-438b', 18 , false, null),
								('draugr', 18, false,null)	;
								
								
								
 INSERT INTO moon (  name,planet_id  , temperature ,size_km) values		
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
  
				  
INSERT INTO star_planet( star_planet_id,planet_id,star_id)values('a',1,16),	
												('b',2,16),
												('c',3,16),
												('d',4,16),
												('e',5,16),
												('f',6,16),
												('g',7,16),	
												('h',8,16),
												('i',9,16),
												('j',10,17),
												('k',11,17);
				  
				  
 				  
				  
INSERT INTO planet_moon ( planet_moon_id, planet_id,moon_id)values ('a',3,1),	
												('b',4,2),
												('c',4,3),
												('d',5,4),
												('e',5,5),
												('f',5,6),
												('g',5,7),	
												('h',5,8),
												('i',5,9),
												('j',5,10),
												('k',5,11),
												('l',5,12),
 												('m',5,13),
												('n',5,14),
												('o',5,15),
												('p',5,16),
												('q',5,17),
												('r',5,18),	
												('s',5,19),
												('t',5,20);
				  
				  
				  
				  
				  
				  
				  
				  
				  
				  
				  
				  
				  