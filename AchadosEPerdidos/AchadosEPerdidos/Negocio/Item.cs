using MySqlConnector;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AchadosEPerdidos.Negocio
{
    public class Item
    {
       

        public Item()
        {
            connection = new MySqlConnection(SiteMaster.ConnectionString);
        }

        private MySqlConnection connection;

        public bool Create(Modelo.Item item)
        {
            try
            {
                connection.Open();
                var comando = new MySqlCommand($@"INSERT INTO itens (nomeitem, lugar, descricao, dataencontrada, status, nomepessoa, email, id_funcionario)
                VALUES (@nomeitem, @lugar, @descricao, @dataencontrada, @status, @nomepessoa, @email, @id_funcionario)", connection);

                comando.Parameters.Add(new MySqlParameter("nomeitem", item.NomeItem));
                comando.Parameters.Add(new MySqlParameter("lugar", item.Lugar));
                comando.Parameters.Add(new MySqlParameter("descricao", item.Descrição));
                comando.Parameters.Add(new MySqlParameter("dataencontrada", item.Data));
                comando.Parameters.Add(new MySqlParameter("status", item.Status));
                comando.Parameters.Add(new MySqlParameter("nomepessoa", item.NomePessoa));
                comando.Parameters.Add(new MySqlParameter("email", item.Email));
                comando.Parameters.Add(new MySqlParameter("id_funcionario", item.Id_Funcionario));
                comando.ExecuteNonQuery();
                connection.Close();
            }
            catch
            {
                return false;
            }
            return true;
        }
    }
}