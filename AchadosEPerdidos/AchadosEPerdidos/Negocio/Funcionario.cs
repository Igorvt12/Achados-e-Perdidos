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
                var comando = new MySqlCommand($@"INSERT INTO funcionarios(nome, email, senha) VALUES (@nome, @email, MD5(@senha))", connection);
                comando.Parameters.Add(new MySqlParameter("nome", funcionario.Nome));
                comando.Parameters.Add(new MySqlParameter("email", funcionario.Email));
                comando.Parameters.Add(new MySqlParameter("senha", funcionario.Senha));
                comando.ExecuteNonQuery();
                connection.Close();
            }
            catch
            {
                return false;
            }
            return true;
        }

        public bool Login(Modelo.Funcionario funcionario)
        {
            try
            {
                connection.Open();
                var comando = new MySqlCommand($@"SELECT email, senha FROM funcionarios
                WHERE email = @email and senha = MD5(@senha) ", connection);
                comando.Parameters.Add(new MySqlParameter("email", funcionario.Email));
                comando.Parameters.Add(new MySqlParameter("senha", funcionario.Senha));
                var reader = comando.ExecuteReader();

                if (reader.Read())
                {
                    connection.Close();
                    return true;
                }
            }
            catch (Exception err)
            {
                return false;
            }
            return false;
        }

        public bool VerificaEmailNoBD(Modelo.Funcionario funcionario)
        {
            try
            {
                connection.Open();
                var comando = new MySqlCommand($@"SELECT email FROM funcionarios
                WHERE email = @email", connection);
                comando.Parameters.Add(new MySqlParameter("email", funcionario.Email));
                var reader = comando.ExecuteReader();

                if (reader.Read())
                {
                    connection.Close();
                    return true;
                }
            }
            catch (Exception err)
            {
                return false;
            }
            return false;
        }
    }
}