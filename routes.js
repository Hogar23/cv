var app = require('./app');
var db = require('./db');




app.get('/', function(req, res){
  res.sendfile('index.html');

});


function loggedIn(req, res, next) {


    if (req.session.user){
        next();//res.redirect('home');
    }else{
          var st ={
            stats: "notloged"
          }

        res.status(401).send(st);
    }
}


app.get('/projects', function(req, res){



		
/*	db.models.Projects.findAll().then(function (projects) {
  	res.json(projects);
  })*/
console.log(req.query.uid)

if(req.query.uid !=0 ){

	db.models.Projects.find({
		where:{id_project:req.query.uid},
	      include: [{
	        model: db.models.Description
	      }]
	}).then(function(project) {
	        project = project.toJSON();

          if(req.session.user){
              project.ses='1';
              
          }else{
              project.ses='0';
              
          }
            res.json(project)
           
	    
	    
	});

}else{

	db.models.Projects.findAll({
	  
	}).then(function(project) {
         
            res.json(project)
	});
	
}

});

app.get('/page', function(req, res){

console.log(req.session.user);

  	db.models.Pages.find({
		where:{id_page:req.query.page}
	   
	}).then(function(page) {

    page = page.toJSON();



    if(req.session.user){
        page.ses='1';
        
    }else{
        page.ses='0';
        
    }
	    res.json(page)
	    
	});
});



app.post('/page',loggedIn, function(req, res){

db.models.Pages.find({ where: {id_page: req.body.data.uid} }).then(function(page) {
  if (page) { // if the record exists in the db
    page.updateAttributes({
      description: req.body.data.edit
    }).then(function() {
      console.log('Editovano')
    });
  }
})
})

app.post('/projects',loggedIn, function(req, res){

db.models.Description.find({ where: {id_description: req.body.data.uid} }).then(function(description) {
  if (description) { // if the record exists in the db
    description.updateAttributes({
      description: req.body.data.edit
    }).then(function() {
      console.log('Editovan projekat')
    });
  }
})
})

app.get('/login', function (req, res) {



  db.models.Users.find({where: {username: req.query.username, pass:req.query.password}})
  .then(function (user) {


    if(!user){

    
 
      //res.send({ error: "err" });
      res.status(500);
    }else{

      var hour = 3600000
      req.session.cookie.expires = new Date(Date.now() + hour)
      req.session.cookie.maxAge = hour
      var user_id = user.id_user
      req.session.user = {};
      req.session.user.id = user_id;
      req.session.user.name = user.username;
      req.session.user.genderr = user.gender
      res.json(req.session.user);

    }
   
   
  });



});

app.get('/logout', function(req, res){
     req.session.destroy();
     console.log('session destroyed')
     res.end();
});


/*app.get('/projects/:id', function(req, res){


db.models.Projects.findAll().then(function (projects) {

	include: [
    { model: db.models.Description, as: 'Desc' }// load the profile picture. Notice that the spelling must be the exact same as the one in the association
  ]

  	res.json(projects);

  })


});*/












