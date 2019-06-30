

module.exports = function(sequelize, DataTypes) 
{
    var User = sequelize.define("User", {
      first_name:
      {
        type: DataTypes.STRING,
        allowNull: false,
        validate: {
            len: [2]
          }
      },
      last_name:
      {
        type: DataTypes.STRING,
        allowNull: false,
        validate: {
            len: [2]
          }
      },
      email:
      {
        type: DataTypes.STRING,
        allowNull: false,
        validate: {
            len: [2],
            isEmail: true
          }
      },
      password:
      {
        type: DataTypes.STRING,
        allowNull: false,
        validate: {
            len: [8]
          }
      }
    },
    {
      timestamps: false
    });
    

      User.associate = function(models) 
      {
          User.hasMany(models.Store_Comment, {
            foreignKey: {
              allowNull: false
            }
          });
        };

    return User;
  };
  





