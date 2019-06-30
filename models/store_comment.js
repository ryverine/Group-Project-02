

module.exports = function(sequelize, DataTypes) 
{
  var Store_Comment = sequelize.define("Store_Comment", {
    comment:
      {
        type: DataTypes.TEXT,
        allowNull: true
      }
    },
    {
      timestamps: true
    });
    
    Store_Comment.associate = function(models) 
    {
        Store_Comment.belongsTo(models.Store, {
          foreignKey: {
        allowNull: false
          }
        });

        Store_Comment.belongsTo(models.User, {
          foreignKey: {
        allowNull: false
          }
        });
      };

    return Store_Comment;
  };
  





