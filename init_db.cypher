CREATE (project:Project { name:"requirements" })
RETURN project;

CREATE (module:Module { name:"database" })
RETURN module;

MATCH (project:Project), (module:Module)
WHERE project.name = 'requirements'
  AND module.name = 'database'
CREATE (project)-[r:PARENT_OF]->(module)
RETURN r;
