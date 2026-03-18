/// entidades: user, movie, series, genre, actor, director 
// conexões: watched(propriedade rating), acted_in, directed, in_genre

///////////////////////////////////////////////

////////// ENTIDADES

// CRIAÇÃO DO NÓ USER
MERGE (u1:User{name:'Ana Julia' }) 
MERGE (u2:User{name:'Gustavo'}) 
MERGE (u3:User{name:'Luiza'}) 
MERGE (u4:User{name:'Bernado'}) 
MERGE (u5:User{name:'Beatriz'}) 
MERGE (u6:User{name:'Carlos'}) 
MERGE (u7:User{name:'Patricia'}) 
MERGE (u8:User{name:'Lucas'}) 
MERGE (u9:User{name:'Helena'}) 
MERGE (u10:User{name:'Murilo'}) 

// CRIAÇÃO DO NÓ MOVIE
MERGE (m1:Movie{id: 1, title: 'Titanic', year: '1997'});
MERGE (m2:Movie{id: 2, title: 'Inception', year: '2010'});
MERGE (m3:Movie{id: 3, title: 'Ainda estou aqui', year: '2024'});
MERGE (m4:Movie{id: 4, title: 'The Dark Knight', year: '2005'});
MERGE (m5:Movie{id: 5, title: 'Barbie', year: '2023'});
MERGE (m6:Movie{id: 6, title: 'Captain America Civil War', year: '2016'});
MERGE (m7:Movie{id: 7, title: 'Wicked', year: '2024'});
MERGE (m8:Movie{id: 8, title: 'Lilo & Stitch', year: '2002'});
MERGE (m9:Movie{id: 9, title: 'Scream', year: '1996'});
MERGE (m10:Movie{id: 10, title: 'The Conjuring', year: '2013'});

// CRIAÇÃO DO NÓ SERIES
MERGE (s1:Series{id: 1, title: 'Friends', year: '1994', seasons:10});
MERGE (s2:Series{id: 2, title: 'Brookly 99', year: '2013', seasons: 8});
MERGE (s3:Series{id: 3, title: 'Game of Thrones', year: '2011', seasons: 8});
MERGE (s4:Series{id: 4, title: 'Reacher', year: '2022', seasons:3});
MERGE (s5:Series{id: 5, title: 'Bridgerton', year: '2020', seasons: 4});
MERGE (s6:Series{id: 6, title: 'Daisy Jones & The Six', year: '2023', seasons:1});
MERGE (s7:Series{id: 7, title: 'Dark', year: '2017', seasons: 3});
MERGE (s8:Series{id: 8, title: 'Stranger Things', year: '2016', seasons: 5});
MERGE (s9:Series{id: 9, title: 'Invencible', year: '2021', seasons: 4});
MERGE (s10:Series{id: 10, title: 'The Falcon and The Winter Soldier', year: '2021', seasons: 1});

// CRIAÇÃO DO NÓ GENRE
MERGE (g1:Genre {name:'Sci-Fi'});
MERGE (g2:Genre {name:'Drama'});
MERGE (g3:Genre {name:'Action'});
MERGE (g4:Genre {name:'Romance'});
MERGE (g5:Genre {name:'Comedy'});
MERGE (g6:Genre {name:'Musical'});
MERGE (g7:Genre {name:'Thriller'});
MERGE (g8:Genre {name:'Horror'});
MERGE (g9:Genre {name:'Animation'});
MERGE (g10:Genre {name:'Fantasy'});

// CRIAÇÃO DO NÓ ACTOR
MERGE (a1:Actor{name:'Leonardo DiCaprio'})
MERGE (a2:Actor{name:'Courtney Cox'})
MERGE (a3:Actor{name:'Anthony Mackie'})
MERGE (a4:Actor{name:'Fernanda Torres'})
MERGE (a5:Actor{name:'Andy Samberg'})
MERGE (a6:Actor{name:'Margot Robbie'})
MERGE (a7:Actor{name:'Cillian Murphy'})
MERGE (a8:Actor{name:'Emilia Clarke'})
MERGE (a9:Actor{name:'Jonathan Bailey'})
MERGE (a10:Actor{name:'Millie Bobby Brown'})

// CRIAÇÃO DO NÓ DIRECTOR
MERGE (d1:Director{name:'Christopher Nolan'})
MERGE (d2:Director{name:'Greta Gerwig'})
MERGE (d3:Director{name:'Walter Salles'})
MERGE (d4:Director{name:'Chris Sanders'})
MERGE (d5:Director{name:'Baran bo Odar'})
MERGE (d6:Director{name:'Wes Craven'})
MERGE (d7:Director{name:'Anthony Russo'})
MERGE (d8:Director{name:'The Duffer Brothers'})
MERGE (d9:Director{name:'Jon M. Chu'})
MERGE (d10:Director{name:'James Cameron'})


////////////////////////////////////////////////////////

//// CONEXÕES 

/// MATCH
/// match users 
MATCH (u1:User{name:'Ana Julia'})
MATCH (u2:User{name:'Gustavo'}) 
MATCH (u3:User{name:'Luiza'}) 
MATCH (u4:User{name:'Bernado'}) 
MATCH (u5:User{name:'Beatriz'}) 
MATCH (u6:User{name:'Carlos'}) 
MATCH (u7:User{name:'Patricia'}) 
MATCH (u8:User{name:'Lucas'}) 
MATCH (u9:User{name:'Helena'}) 
MATCH (u10:User{name:'Murilo'}) 

//// match series 
MATCH (s1:Series{title:'Bridgerton'})
MATCH (s2:Series{title:'Daisy Jones & The Six'})
MATCH (s3:Series{title:'The Falcon and The Winter Soldier'})
MATCH (s4:Series{title:'Brookly 99'})
MATCH (s5:Series{title:'Reacher'})
MATCH (s6:Series{title:'Stranger Things'})
MATCH (s7:Series{title:'Invencible'})
MATCH (s8:Series{title:'Game of Thrones'})
MATCH (s9:Series{title:'Friends'})
MATCH (s10:Series{title:'Dark'})

//// match movies
MATCH (m1:Movie{title:'Titanic'})
MATCH (m2:Movie{title:'Inception'})
MATCH (m3:Movie{title:'Ainda estou aqui'})
MATCH (m4:Movie{title:'The Dark Knight'})
MATCH (m5:Movie{title:'Barbie'})
MATCH (m6:Movie{title:'Captain America Civil War'})
MATCH (m7:Movie{title:'Wicked'})
MATCH (m8:Movie{title:'Lilo & Stitch'})
MATCH (m9:Movie{title:'Scream'})
MATCH (m10:Movie{title:'The Conjuring'})

// match direcotor
MATCH (d1:Director{name:'Christopher Nolan'})
MATCH (d2:Director{name:'Greta Gerwig'})
MATCH (d3:Director{name:'Walter Salles'})
MATCH (d4:Director{name:'Chris Sanders'})
MATCH (d5:Director{name:'Baran bo Odar'})
MATCH (d6:Director{name:'Wes Craven'})
MATCH (d7:Director{name:'Anthony Russo'})
MATCH (d8:Director{name:'The Duffer Brothers'})
MATCH (d9:Director{name:'Jon M. Chu'})
MATCH (d10:Director{name:'James Cameron'})

// match genre
MATCH (g1:Genre {name:'Sci-Fi'})
MATCH (g2:Genre {name:'Drama'})
MATCH (g3:Genre {name:'Action'})
MATCH (g4:Genre {name:'Romance'})
MATCH (g5:Genre {name:'Comedy'})
MATCH (g6:Genre {name:'Musical'})
MATCH (g7:Genre {name:'Thriller'})
MATCH (g8:Genre {name:'Horror'})
MATCH (g9:Genre {name:'Animation'})
MATCH (g10:Genre {name:'Fantasy'})

// RELACIONAMENTO WATCHED SERIES

//// ANA JULIA
MERGE (u1)-[:WATCHED{rating: 10}]-(s9)
MERGE (u2)-[:WATCHED{rating: 10}]-(s4)

//// GUSTAVO
MERGE (u2)-[:WATCHED{rating: 8}]-(s8)
MERGE (u2)-[:WATCHED{rating: 6}]-(s2)
MERGE (u2)-[:WATCHED{rating: 10}]-(s7)
MERGE (u2)-[:WATCHED{rating: 8}]-(s3)

//// LUIZA
MERGE (u3)-[:WATCHED{rating: 9}]-(s1)
MERGE (u3)-[:WATCHED{rating: 10}]-(s2)
MERGE (u3)-[:WATCHED{rating: 7}]-(s3)

///// BERNADO
MERGE (u4)-[:WATCHED{rating: 10}]-(s4)
MERGE (u4)-[:WATCHED{rating: 9}]-(s5)
MERGE (u4)-[:WATCHED{rating: 4}]-(s1)
MERGE (u4)-[:WATCHED{rating: 10}]-(s2)

/////// BEATRIZ 
MERGE (u5)-[:WATCHED{rating: 10}]-(s1)
MERGE (u5)-[:WATCHED{rating: 9}]-(s2)
MERGE (u5)-[:WATCHED{rating: 10}]-(s3)
MERGE (u5)-[:WATCHED{rating: 10}]-(s4)
MERGE (u5)-[:WATCHED{rating: 7}]-(s5)
MERGE (u5)-[:WATCHED{rating: 8}]-(s6)
MERGE (u5)-[:WATCHED{rating: 10}]-(s7)
MERGE (u5)-[:WATCHED{rating: 8}]-(s8)
MERGE (u5)-[:WATCHED{rating: 10}]-(s9)
MERGE (u5)-[:WATCHED{rating: 8}]-(s10)

///// CARLOS
MERGE (u6)-[:WATCHED{rating: 8}]-(s1)
MERGE (u6)-[:WATCHED{rating: 9}]-(s3)
MERGE (u6)-[:WATCHED{rating: 10}]-(s7)

/////// PATRICIA
MERGE (u7)-[:WATCHED{rating: 8}]-(s1)
MERGE (u7)-[:WATCHED{rating: 9}]-(s5)
MERGE (u7)-[:WATCHED{rating: 9}]-(s6)
MERGE (u7)-[:WATCHED{rating: 9}]-(s8)
MERGE (u7)-[:WATCHED{rating: 10}]-(s10)

/// LUCAS 
MERGE (u8)-[:WATCHED{rating: 8}]-(s1)
MERGE (u8)-[:WATCHED{rating: 4}]-(s6)
MERGE (u8)-[:WATCHED{rating: 8}]-(s8)
MERGE (u8)-[:WATCHED{rating: 10}]-(s9)

////// HELENA
MERGE (u9)-[:WATCHED{rating: 5}]-(s2)
MERGE (u9)-[:WATCHED{rating: 10}]-(s3)
MERGE (u9)-[:WATCHED{rating: 8}]-(s10)

////// MURILO
MERGE (u10)-[:WATCHED{rating: 8}]-(s1)
MERGE (u10)-[:WATCHED{rating: 6}]-(s5)
MERGE (u10)-[:WATCHED{rating: 10}]-(s6)
MERGE (u10)-[:WATCHED{rating: 9}]-(s7)
MERGE (u10)-[:WATCHED{rating: 10}]-(s8)

// RELACIONAMENTO WATCHED MOVIES 

//////// ANA JULIA 
MERGE (u1)-[:WATCHED{rating: 9}]-(m7)
MERGE (u1)-[:WATCHED{rating: 10}]-(m8)

///////////// GUSTAVO 
MERGE (u2)-[:WATCHED{rating: 8}]-(m2)
MERGE (u2)-[:WATCHED{rating: 10}]-(m3)
MERGE (u2)-[:WATCHED{rating: 10}]-(m4)
MERGE (u2)-[:WATCHED{rating: 6}]-(m9)

////////// LUIZA 
MERGE (u3)-[:WATCHED{rating: 10}]-(m9)
MERGE (u3)-[:WATCHED{rating: 10}]-(m10)
MERGE (u3)-[:WATCHED{rating: 10}]-(m5)
MERGE (u3)-[:WATCHED{rating: 10}]-(m6)


///////// BERNADO 
MERGE (u4)-[:WATCHED{rating: 10}]-(m1)
MERGE (u4)-[:WATCHED{rating: 4}]-(m4)
MERGE (u4)-[:WATCHED{rating: 5}]-(m5)


/////// BEATRIZ 
MERGE (u5)-[:WATCHED{rating: 8}]-(m2)
MERGE (u5)-[:WATCHED{rating: 10}]-(m3)
MERGE (u5)-[:WATCHED{rating: 9}]-(m6)
MERGE (u5)-[:WATCHED{rating: 10}]-(m5)
MERGE (u5)-[:WATCHED{rating: 10}]-(m7)
MERGE (u5)-[:WATCHED{rating: 10}]-(m9)
MERGE (u5)-[:WATCHED{rating: 9}]-(m8)
MERGE (u5)-[:WATCHED{rating: 8}]-(m4)

//////// CARLOS
MERGE (u6)-[:WATCHED{rating: 7}]-(m3)
MERGE (u6)-[:WATCHED{rating: 10}]-(m4)
MERGE (u6)-[:WATCHED{rating: 10}]-(m10)


//////// PATRICIA 
MERGE (u7)-[:WATCHED{rating: 9}]-(m1)
MERGE (u7)-[:WATCHED{rating: 7}]-(m4)
MERGE (u7)-[:WATCHED{rating: 8}]-(m6)
MERGE (u7)-[:WATCHED{rating: 7}]-(m9)
MERGE (u7)-[:WATCHED{rating: 2}]-(m10)

////// LUCAS 
MERGE (u8)-[:WATCHED{rating: 10}]-(m2)
MERGE (u8)-[:WATCHED{rating: 6}]-(m1)
MERGE (u8)-[:WATCHED{rating: 8}]-(m5)
MERGE (u8)-[:WATCHED{rating: 5}]-(m7)
MERGE (u8)-[:WATCHED{rating: 10}]-(m8)

//////// HELENA 
MERGE (u9)-[:WATCHED{rating: 10}]-(m3)
MERGE (u9)-[:WATCHED{rating: 7}]-(m1)
MERGE (u9)-[:WATCHED{rating: 9}]-(m6)
MERGE (u9)-[:WATCHED{rating: 10}]-(m9)

///////// MURILO 
MERGE (u10)-[:WATCHED{rating: 10}]-(m3)
MERGE (u10)-[:WATCHED{rating: 9}]-(m4)
MERGE (u10)-[:WATCHED{rating: 8}]-(m8)
MERGE (u10)-[:WATCHED{rating: 10}]-(m9)
MERGE (u10)-[:WATCHED{rating: 8}]-(m10)

// RELACIONAMENTO DIRECTED
MERGE (d1)-[:DIRECTED]->(m2)
MERGE (d1)-[:DIRECTED]->(m4)

MERGE (d2)-[:DIRECTED]->(m5)

MERGE (d3)-[:DIRECTED]->(m3)

MERGE (d4)-[:DIRECTED]->(m8)

MERGE (d5)-[:DIRECTED]->(s10)

MERGE (d6)-[:DIRECTED]->(m9)

MERGE (d7)-[:DIRECTED]->(m6)

MERGE (d8)-[:DIRECTED]->(s6)

MERGE (d9)-[:DIRECTED]->(m7)

MERGE (d10)-[:DIRECTED]->(m1)


// RELACIONAMENTO IN_GENRE
MERGE (m1)-[:IN_GENRE]->(g2)
MERGE (m1)-[:IN_GENRE]->(g4)

MERGE (m2)-[:IN_GENRE]->(g1)
MERGE (m2)-[:IN_GENRE]->(g3)

MERGE (m3)-[:IN_GENRE]->(g2)

MERGE (m4)-[:IN_GENRE]->(g3)
MERGE (m4)-[:IN_GENRE]->(g7)

MERGE (m5)-[:IN_GENRE]->(g5)

MERGE (m6)-[:IN_GENRE]->(g1)
MERGE (m6)-[:IN_GENRE]->(g3)

MERGE (m7)-[:IN_GENRE]->(g10)
MERGE (m7)-[:IN_GENRE]->(g2)
MERGE (m7)-[:IN_GENRE]->(g4)
MERGE (m7)-[:IN_GENRE]->(g6)

MERGE (m8)-[:IN_GENRE]->(g1)
MERGE (m8)-[:IN_GENRE]->(g5)
MERGE (m8)-[:IN_GENRE]->(g9)

MERGE (m9)-[:IN_GENRE]->(g8)

MERGE (m10)-[:IN_GENRE]->(g8)
MERGE (m10)-[:IN_GENRE]->(g7)

MERGE (s1)-[:IN_GENRE]->(g2)
MERGE (s1)-[:IN_GENRE]->(g4)

MERGE (s2)-[:IN_GENRE]->(g2)
MERGE (s2)-[:IN_GENRE]->(g6)

MERGE (s3)-[:IN_GENRE]->(g1)
MERGE (s3)-[:IN_GENRE]->(g2)
MERGE (s3)-[:IN_GENRE]->(g3)

MERGE (s4)-[:IN_GENRE]->(g5)

MERGE (s5)-[:IN_GENRE]->(g2)
MERGE (s5)-[:IN_GENRE]->(g3)
MERGE (s5)-[:IN_GENRE]->(g7)

MERGE (s6)-[:IN_GENRE]->(g10)
MERGE (s6)-[:IN_GENRE]->(g1)
MERGE (s6)-[:IN_GENRE]->(g2)
MERGE (s6)-[:IN_GENRE]->(g8)

MERGE (s7)-[:IN_GENRE]->(g9)
MERGE (s7)-[:IN_GENRE]->(g1)
MERGE (s7)-[:IN_GENRE]->(g2)
MERGE (s7)-[:IN_GENRE]->(g3)

MERGE (s8)-[:IN_GENRE]->(g2)
MERGE (s8)-[:IN_GENRE]->(g3)
MERGE (s8)-[:IN_GENRE]->(g10)

MERGE (s9)-[:IN_GENRE]->(g5)

MERGE (s10)-[:IN_GENRE]->(g1)
MERGE (s10)-[:IN_GENRE]->(g7)