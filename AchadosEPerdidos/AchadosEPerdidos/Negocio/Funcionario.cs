using MySqlConnector;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AchadosEPerdidos.Negocio
{
    public class Funcionario
    {

        public Funcionario()
        {
            connection = new MySqlConnection(SiteMaster.ConnectionString);
        }

        private MySqlConnection connection;

        public bool Create(Modelo.Funcionario funcionario)
        {
            try
            {
                connection.Open();
                var comando = new MySqlCommand($@"INSERT INTO funcionarios (usuario, email, senha) VALUES (@usuario, @email, @senha)", connection);
                comando.Parameters.Add(new MySqlParameter("usuario", funcionario.Usuario));
                comando.Parameters.Add(new MySqlParameter("email", funcionario.Usuario));
                comando.Parameters.Add(new MySqlParameter("senha", funcionario.Senha));
                comando.ExecuteNonQuery();
                connection.Close();
            }
            catch(Exception e)
            {
                return false;
            }
            return true;
        }
    }
}