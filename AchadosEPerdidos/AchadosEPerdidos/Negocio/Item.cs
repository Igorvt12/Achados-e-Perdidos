using MySqlConnector;
using System;
using System.Collections.Generic;
using System.Web.UI;
using System.Web.UI.WebControls;
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
                var comando = new MySqlCommand($@"INSERT INTO itens
                                              (nomeitem, lugar, descricao, dataencontrada, status, nomepessoa, email, cpf, id_funcionario, perdiachei) VALUES 
                                              (@nomeitem, @lugar, @descricao, @dataencontrada, 0, @nomepessoa, @email, @cpf, @id_funcionario, @perdiachei)", connection);

                comando.Parameters.Add(new MySqlParameter("nomeitem", item.NomeItem));
                comando.Parameters.Add(new MySqlParameter("lugar", item.Lugar));
                comando.Parameters.Add(new MySqlParameter("descricao", item.Descricao));
                comando.Parameters.Add(new MySqlParameter("dataencontrada", item.Data));
                comando.Parameters.Add(new MySqlParameter("status", item.Status));
                comando.Parameters.Add(new MySqlParameter("nomepessoa", item.NomePessoa));
                comando.Parameters.Add(new MySqlParameter("email", item.Email));
                comando.Parameters.Add(new MySqlParameter("cpf", item.Cpf));
                comando.Parameters.Add(new MySqlParameter("id_funcionario", item.Id_Funcionario));
                comando.Parameters.Add(new MySqlParameter("perdiachei", item.PerdiAchei));

                comando.ExecuteNonQuery();
                connection.Close();
            }
            catch(Exception ERR)
            {
                return false;
            }
            return true;
        }
        public List<Modelo.Item> Read(string id, string nome, string descricao, string lugar, string status)
        {
            var itens = new List<Modelo.Item>();
            try
            {
                connection.Open();               
                var commando = new MySqlCommand($"SELECT id, nomeitem, descricao, lugar, status FROM itens WHERE (1=1) ", connection);

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
                if (status.Equals("") == false)
                {
                    commando.CommandText += $" AND status = @status";
                    commando.Parameters.Add(new MySqlParameter("status", status));
                }

                var reader = commando.ExecuteReader();
                while (reader.Read())
                {
                    itens.Add(new Modelo.Item
                    {
                        NomeItem = reader.GetString("nomeitem"),
                        Lugar = reader.GetString("lugar"),
                        Descricao = reader.GetString("descricao"),
                        Status = reader.GetBoolean("status"),
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

        public List<Modelo.Item> ReadForUpdate(string id, string nomeitem, string descricao, string lugar, string data, string nomepessoa)
        {
            var itens = new List<Modelo.Item>();
            try
            {
                connection.Open();
                var commando = new MySqlCommand($"SELECT id, nomeitem, descricao, lugar, dataencontrada, nomepessoa FROM itens WHERE (1=1) ", connection);

                if (id.Equals("") == false)
                {
                    commando.CommandText += $" AND id = @id";
                    commando.Parameters.Add(new MySqlParameter("id", id));
                }
                if (nomeitem.Equals("") == false)
                {
                    commando.CommandText += $" AND nomeitem like @nomeitem";
                    commando.Parameters.Add(new MySqlParameter("nomeitem", $"%{nomeitem}%"));
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
                if (data.Equals("") == false)
                {
                    commando.CommandText += $" AND data like @dataencontrada,";
                    commando.Parameters.Add(new MySqlParameter("data", $"%{data}%"));
                }
                if (nomepessoa.Equals("") == false)
                {
                    commando.CommandText += $" AND lunomepessoa like @nomepessoa";
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
                        NomePessoa = reader.GetString("nomepessoa"),
                        Id = reader.GetInt32("id")
                    });
                }
            }

            catch(Exception error)
            {
                
            }
            finally
            {
                connection.Close();
            }
            return itens;
        }

        public bool Update(Modelo.Item item)
        {
            try
            {
                connection.Open();
                var comando = new MySqlCommand($@"UPDATE itens SET
                                                nomeitem = @nomeitem,
                                                lugar = @lugar,
                                                descricao = @descricao,
                                                data = @data,
                                                email = @email,
                                                id_funcionario = @id_funcionario WHERE id = @id", connection);

                comando.Parameters.Add(new MySqlParameter("nomeitem", item.NomeItem));
                comando.Parameters.Add(new MySqlParameter("lugar", item.Lugar));
                comando.Parameters.Add(new MySqlParameter("descricao", item.Descricao));
                comando.Parameters.Add(new MySqlParameter("data", item.Data));
                comando.Parameters.Add(new MySqlParameter("nomepessoa", item.NomePessoa));
                comando.Parameters.Add(new MySqlParameter("email", item.Email));
                comando.Parameters.Add(new MySqlParameter("id_funcionario", item.Id_Funcionario));
                comando.Parameters.Add(new MySqlParameter("id", item.Id));
                comando.ExecuteNonQuery();
                connection.Close();
            }
            catch (Exception err)
            {
                return false;
            }
            return true;
        }

        public bool Delete(int id)
        {
            try
            {
                connection.Open();
                var comando = new MySqlCommand("DELETE FROM itens WHERE id = " + id, connection);
                comando.ExecuteNonQuery();
                connection.Close();
            }
            catch
            {
                return false;
            }
            return true;
        }

        public bool UpdateStatus(Modelo.Item item)
        {
            try
            {
                connection.Open();
                var comando = new MySqlCommand($@"UPDATE itens SET
                                                status = @status
                                                WHERE id = @id", connection);

                comando.Parameters.Add(new MySqlParameter("status", item.Status));
                comando.Parameters.Add(new MySqlParameter("id", item.Id));
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