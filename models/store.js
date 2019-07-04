

module.exports = function(sequelize, DataTypes) 
{
    var Store = sequelize.define("Store", {
      name:
      {
        type: DataTypes.STRING,
        allowNull: false,
        validate: {
            len: [3]
          }
      },
      description:
      {
        type: DataTypes.TEXT,
        allowNull: true
      },
      addrln1:
      {
        type: DataTypes.STRING,
        allowNull: false,
        validate: {
            len: [3]
          }
      },
      addrln2:
      {
        type: DataTypes.STRING,
        allowNull: true
      },
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
      },
      zip:
      {
        type: DataTypes.INTEGER,
        allowNull: false,
        validate: {
            len: [5]
          }
      },
    },
    {
      timestamps: false
    });
    


      Store.associate = function(models) 
      {

        Store.belongsTo(models.Location, {
          foreignKey: {
            allowNull: false
          }
        });
        
          Store.hasMany(models.Product, {
            foreignKey: {
              allowNull: false
            }
          });

          Store.hasMany(models.Store_Comment, {
            foreignKey: {
              allowNull: false
            }
          });

        };
    

    return Store;
  };
  





