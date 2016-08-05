db = db.getSiblingDB('rabbit');
db.createCollection("events", { capped : true, size : 5242880, max : 5000 } );
