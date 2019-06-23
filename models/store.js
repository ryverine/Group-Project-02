

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
      };

    return Store;
  };
  





