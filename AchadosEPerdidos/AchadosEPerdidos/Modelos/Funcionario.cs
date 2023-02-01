using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AchadosEPerdidos.Modelos
{
    public class Funcionario
    {
        public int Id { get; set; }
        public string Usuario { get; set; }
        public string Senha { get; set; }
        public string Email { get; set; }
    }
}