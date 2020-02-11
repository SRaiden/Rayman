using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class tienda : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Clase c = new Clase();
        if (!IsPostBack)
        {
            c.CargarTienda(lvTienda);


            c.Plataformas(lvTienda);

        }
    }
}