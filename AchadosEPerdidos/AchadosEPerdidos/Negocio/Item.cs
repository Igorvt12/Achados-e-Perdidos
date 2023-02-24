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
                comando.Parameters.Add(new MySqlParameter("descricao", item.Descricao));
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
        public List<Modelo.Item> Read(string id, string nome, string descricao, string lugar)
        {
            var itens = new List<Modelo.Item>();
            try
            {
                connection.Open();               
                var commando = new MySqlCommand($"SELECT id, nomeitem, descricao, lugar FROM itens WHERE (1=1) ", connection);

                if (id.Equals("") == false)
                {
                    commando.CommandText += $" AND id = @id";
                    commando.Parameters.Add(new MySqlParameter("id", id));
                }
                if (nome.Equals("") == false)
                {
                    commando.CommandText += $" AND nomeitem like @nomeitem";
                    commando.Parameters.Add(new MySqlParameter("nomeitem", $"%{nome}%"));
                }
                if (descricao.Equals("") == false)
                {
                    commando.CommandText += $" AND descricao like @descricao,";
                    commando.Parameters.Add(new MySqlParameter("descricao", $"%{descricao}%"));
                }
                if (lugar.Equals("") == false)
                {
                    commando.CommandText += $" AND lugar like @lugar,";
                    commando.Parameters.Add(new MySqlParameter("lugar", $"%{lugar}%"));
                }
            
                var reader = commando.ExecuteReader();
                while (reader.Read())
                {
                    itens.Add(new Modelo.Item
                    {
                        NomeItem = reader.GetString("nomeitem"),
                        Lugar = reader.GetString("lugar"),
                        Descricao = reader.GetString("descricao"),
                        Id = reader.GetInt32("id")
                    });
                }
            }
            catch
            {

            }
            finally
            {
                connection.Close();
            }
            return itens;
        }



    }
}