
var dataBase = {
  database: 'cv',
  user: 'root',
  password: '',
  host: 'localhost',
  port: 3306,
  dialect: 'mysql'
};


var Sequelize = require('sequelize');
var sequelize = new Sequelize(dataBase.database, dataBase.user, dataBase.password,
      {
        host: dataBase.host,
        port: dataBase.port,
        dialect:  dataBase.dialect
      }
);


var Users = sequelize.define('users', {
    id_user: {type: Sequelize.INTEGER, unique: true, autoIncrement: true, primaryKey: true},
    username:Sequelize.STRING ,
    pass:Sequelize.STRING,
    gender:Sequelize.STRING(6)
    },
    {
      freezeTableName: true // Model tableName will be the same as the model name
    }
);

var Projects = sequelize.define('projects', {
    id_project: {type: Sequelize.INTEGER, unique: true, autoIncrement: true, primaryKey: true},
    name:Sequelize.STRING ,
    picture:Sequelize.STRING
    
    },
    {
      freezeTableName: true // Model tableName will be the same as the model name
    }
);

var Description = sequelize.define('description', {
    id_description: {type: Sequelize.INTEGER, unique: true, autoIncrement: true, primaryKey: true},
    description:Sequelize.TEXT
    
    },
    {
      freezeTableName: true // Model tableName will be the same as the model name
    }
);

var Pages = sequelize.define('page', {
    id_page: {type: Sequelize.INTEGER, unique: true, autoIncrement: true, primaryKey: true},
    description:Sequelize.TEXT
    
    },
    {
      freezeTableName: true // Model tableName will be the same as the model name
    }
);


Projects.hasOne(Description,{foreignKey: 'id_project'});
Description.belongsTo(Projects, {foreignKey: 'id_project'});

/*
sequelize.sync({
    force: true
});*/


module.exports = {
  sequelize: sequelize,
  models: {
    Users: Users,
    Projects:Projects,
    Description:Description,
    Pages:Pages
  }
};
