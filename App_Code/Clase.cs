using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class Clase : System.Web.UI.Page
{
    /*Cambiar para servidor SQL*/
    //string ruta = "Data Source=localhost\\SQLExpress;Initial Catalog=VersionRayman2;Integrated Security=True";
    public string ruta = "Data Source=FRANCIS-PC\\SQLDESAROLLO;Initial Catalog=VersionRayman2;Integrated Security=True";

    public void CargarTienda(ListView Tienda)
    {
        //* 1 ASC
        string consulta = "Select * from juego order by codjuego ";

        SqlConnection cn = new SqlConnection(ruta);
        a cn.Open();
        SqlDataAdapter adaptador = new SqlDataAdapter(consulta, cn);

        DataSet ds = new DataSet();
        adaptador.Fill(ds, "juego");
        Tienda.DataSource = ds.Tables[0];
        Tienda.DataBind();
        cn.Close();
    }

    public void Plataformas(ListView tienda)
    {
        int a = 0;

        foreach (ListViewItem it in tienda.Items)
        {
            foreach (Control ctrl in it.Controls)
            {
                if (ctrl.ID == "ddlPlataforma")
                {
                    a++;
                    string consulta = "select plataforma.plataforma from plataforma INNER JOIN JuegoxPlat ON plataforma.codplataforma = JuegoxPlat.codplataforma INNER JOIN juego ON JuegoxPlat.codjuego = juego.codjuego where juego.codjuego = '" + a + "'";
                    SqlConnection cn = new SqlConnection(ruta);
                    //SqlCommand cmd = new SqlCommand(consulta, cn);
                    cn.Open();
                    SqlDataAdapter adaptador = new SqlDataAdapter(consulta, cn);

                    DataSet ds = new DataSet();
                    //SqlDataReader dr = cmd.ExecuteReader();
                    adaptador.Fill(ds, "plataforma");


                    cn.Close();
                    //if(ctrl.ID = "PEPE")
                    ((DropDownList)(ctrl)).DataSource = ds;
                    ((DropDownList)(ctrl)).DataTextField = "plataforma";
                    //((DropDownList)(ctrl)).Items.Add(dr[0].ToString());
                    ((DropDownList)(ctrl)).DataBind();



                }
            }
        }

    }

    //Procedures para master page: Listo. 
}