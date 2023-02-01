using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AchadosEPerdidos.Modelos
{
    public class Item
    {
        public int Id { get; set; } //Id do Item.      
        public string NomeItem {get;set; } //Nome do Item.
        public string Lugar { get; set; }  //Lugar que o item foi encontrado/perdido.
        public string Descrição { get; set; } //Descrição do item encontrado/perdido.
        public bool Status { get; set; } //Se o item está como "Resgatado" ou "Perdido".
        public DateTime Data { get; set; } //Data que o item foi encontrado/perdido.
        public string NomePessoa { get; set; } //Nome da pessoa que encontrou.
        public string Email { get; set; } //Email da pessoa que encontrou.
        public int Id_Funcionario { get; set; } //Caso seja um funcionário que tenha cadastrado o item.
         
    }
}