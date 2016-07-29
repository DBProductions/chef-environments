begin
CREATE (php:`Language` {name: "PHP"})
CREATE (python:`Language` {name: "Python"})
CREATE (ruby:`Language` {name: "Ruby"})
CREATE (erlang:`Language` {name: "Erlang"})
CREATE (elixir:`Language` {name: "Elixir"})
CREATE (haskell:`Language` {name: "Haskell"})
CREATE (go:`Language` {name: "Go"})
CREATE (java:`Language` {name: "Java"})
CREATE (scala:`Language` {name: "Scala"})
CREATE (grouvy:`Language` {name: "Groovy"})
CREATE (javascript:`Language` {name: "JavaScript"})
CREATE (c_sharp:`Language` {name: "C#"})
CREATE (c_plusplus:`Language` {name: "C++"})
CREATE (swift:`Language` {name: "Swift"})
;
commit

begin
CREATE (tester:`User` {email: "testen@testen.com", password: "$2a$12$CxfJgFPeSZy/euaRT4hJoek5TsK5KxGRqUKPVrQfF4J5iWHMr5Wx2", username: "Tester"})
;
commit

begin
MATCH (u:User),(l:Language)
WHERE u.username="Tester" AND l.name="Python"
CREATE (u)-[r:USE]->(l)
;
commit

begin
MATCH (u:User),(l:Language)
WHERE u.username="Tester" AND l.name="JavaScript"
CREATE (u)-[r:USE]->(l)
;
commit

begin
MATCH (u:User),(l:Language)
WHERE u.username="Tester" AND l.name="Ruby"
CREATE (u)-[r:USE]->(l)
;
commit
