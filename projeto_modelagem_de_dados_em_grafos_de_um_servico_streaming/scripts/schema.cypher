// Para garantir que não existam ids duplicados
CREATE CONSTRAINT user_id_unique FOR (u:User) REQUIRE u.id IS UNIQUE;
CREATE CONSTRAINT movie_id_unique FOR (m:Movie) REQUIRE m.id IS UNIQUE;
CREATE CONSTRAINT actor_id_unique FOR (a:Actor) REQUIRE a.id IS UNIQUE;