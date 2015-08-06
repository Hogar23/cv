//var Users = Backbone.Collection.extend({
/*      url: '/home'
    });
    var User = Backbone.Model.extend({
      urlRoot: '/home'
    });

       var Logins = Backbone.Collection.extend({
      url: '/login'
    });

     var Login = Backbone.Model.extend({
      urlRoot: '/login'
    });

 */


    var Projects = Backbone.Collection.extend({
      url: '/projects'
    });

     var Project = Backbone.Model.extend({
      urlRoot: '/projects'
    });


    var Pages = Backbone.Collection.extend({
      url: '/page'
    });

    var Page = Backbone.Model.extend({
      urlRoot: '/page'
    });

           var Logins = Backbone.Collection.extend({
      url: '/login'
    });

     var Login = Backbone.Model.extend({
      urlRoot: '/login'
    });










var HomeView = Backbone.View.extend({
    el:'.mystyle',
    events: {
        'click .editHome':"edit"
    },
    render: function () {
        var that = this;
        var page = new Pages();
        page.fetch({
            data:{
                page:1
            },
            success: function(page){
                var dat1 = JSON.stringify(page);
                var data1 = JSON.parse(dat1);
                var session =data1[0].ses;
                var obj ={ description:data1[0].description};
                if (session == 0) {
                    var template = _.template($('#home-template').html());
                    that.$el.html(template({page:page.models}));
                }else{
                    var template = _.template($('#home-template').html());
                    that.$el.html(template({page:page.models}));
                    var template2 = _.template($('#edit-home').html());
                    that.$el.find('.editing').html(template2({"edit":obj}));
                } 
            },
                error: function(er){
                    console.log(er)
                }
        })
    },
    edit: function(){
        var edited = $('#editing').val();
        var uid = $('#editingID').val();
        var page = new Page();
        page.save({
            data:{
                edit:edited,
                uid:uid
            }
        });
        $('.content').html(edited);
    }  
})

var ProjectsView = Backbone.View.extend({
    el:'.mystyle',
    events: {
        'click .editProject':"editP"
    },
    render: function (options) {     
        var that = this;
        if(options.id) {
            var projects = new Projects();

            projects.fetch({
                data:{uid: options.id},
                success: function (projects) {  
                    var obj = {};
                    var session;
                      _.each(projects.models, function(val) {
                          var des = val.get('description');
                          session = val.get('ses');
                          var str = des.description.toString();
                          obj={
                              name: val.get('name'),
                              uid:val.get('id_project'),
                              description: str 
                          }
                    })
                    var template = _.template($('#project-template').html());
                    that.$el.html(template({"output":obj}));

                    if (session == 1) {
                        var template2 = _.template($('#edit-project').html());
                        that.$el.find('.editing').html(template2({"edit":obj}));
                    };
                }
            })      
        }else{
                var projects = new Projects();
                projects.fetch({
                    data:{uid: 0},
                    success: function (projects) {   
                        var template = _.template($('#projects-template').html());
                        that.$el.html(template({projects: projects.models})); 
                    }
                })
            }
    },
    editP: function(){
        var edited = $('#editing').val();
        var uid = $('#editingID').val();
        var page = new Project();
        page.save({
            data:{
                edit:edited,
                uid:uid
            }
        });
        $('.content').html(edited);
    }
})

var LoginView = Backbone.View.extend({
  el: '.mystyle',
  events: {
    'click .login':"load"
  },
  load: function(){
    var that = this;
    var usr = $('#inputUsername').val();
    var pass = $('#inputPassword').val();
    var note = "";
    var log = new Login();
    log.fetch({
      data: {
        username:usr,
        password:pass
      },
      success: function (data) {
        router.navigate("/#/home", {trigger: true});         
      },
      error: function(){
        //router.navigate("/login", {trigger: false}); 
        $(".redP").html("Password or Username is not valid")
      }
    })
  },
  render: function () {
    var that = this;
    var template = _.template($('#login-template').html());
    that.$el.html(template);
   
  }
});

var AboutView = Backbone.View.extend({
    el:'.mystyle',
    events: {
        'click .editAbout':"editA"
    },
    render: function () {
        var that = this;
        var page = new Pages();
        page.fetch({
            data:{
                page:2
            },
            success: function(page){
                var dat1 = JSON.stringify(page);
                var data1 = JSON.parse(dat1);
                var session =data1[0].ses;
                var obj ={ description:data1[0].description};
                if (session == 0) {
                    var template = _.template($('#about-template').html());
                    that.$el.html(template({page:page.models}));
                }else{
                    var template = _.template($('#about-template').html());
                    that.$el.html(template({page:page.models}));
                    var template2 = _.template($('#edit-about').html());
                    that.$el.find('.editing').html(template2({"edit":obj}));
                } 
            },
                error: function(er){
                    console.log(er)
                }
        })
    },
    editA: function(){
        var edited = $('#editing').val();
        var uid = $('#editingID').val();
        var page = new Page();
        page.save({
            data:{
                edit:edited,
                uid:uid
            }
        });
        $('.content').html(edited);
    }  
})




var Router = Backbone.Router.extend({
    routes : {
      '':'home',
      'projects':'projects',
      'projects/:id':'projects',
      'login':'login',
      'aboutme':'aboutme'
      
    }
  });



var router = new Router();
var homeView = new HomeView();
var projectsViev = new ProjectsView();
var loginView = new LoginView();
var aboutUs = new AboutView();


 router.on('route:home', function(){
    homeView.render();
  });

  router.on('route:projects', function(id){
    projectsViev.render({id: id});
  });

    router.on('route:login', function(){
    loginView.render();
  }); 

  router.on('route:aboutme', function(){
    aboutUs.render();
  }); 




Backbone.history.start();
