var config = { 
	_id: "myrepl", 
	members: [
	    { 
	        _id : 0, 
	        host : "192.168.10.5:27017" 
	    },
	    { 
	        _id : 1, 
	        host : "192.168.10.6:27017" 
	    }
	]
};
rs.initiate(config);
