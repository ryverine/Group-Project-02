module.exports = function(sequelize, DataTypes) 
{
    var Location = sequelize.define("Location", {
      city:
      {
        type: DataTypes.STRING,
        allowNull: false,
        validate: {
            len: [3]
          }
      },
      state:
      {
        type: DataTypes.STRING,
        allowNull: false,
        validate: {
          len: [2]
        }
      }
    },
    {
      timestamps: false
    });
    
    Location.associate = function(models) 
    {
      Location.hasMany(models.Store, {
        onDelete: "cascade"
      });
    };



    return Location;
  };
  

