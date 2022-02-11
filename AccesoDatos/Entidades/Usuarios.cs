using MongoDB.Bson.Serialization.Attributes;
namespace Entidades
{
    public class Usuarios    {
        #region Propiedades

        [BsonId]
        [BsonRepresentation(MongoDB.Bson.BsonType.ObjectId)]
        public string ID { get; set; }

        [BsonElement("NomUsuario")]
        public string NombreUsuario { get; set; }

        [BsonElement("Pass")]
        public string Contrasena { get; set; }

        [BsonElement("Condicion")]
        public bool Estado { get; set; }

        #endregion

        #region  Constructor 

        public Usuarios()
        {
            ID = string.Empty;
            NombreUsuario = string.Empty;
            Contrasena = string.Empty;
            Estado = true;
        }

        #endregion
    }
}
