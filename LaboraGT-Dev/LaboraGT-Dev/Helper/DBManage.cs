using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace LaboraGT_Dev
{
    public class DBManage
    {
        private SqlConnection conexion = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["conLaboraGT"].ConnectionString);

        public Boolean fNull(string xstring)
        {
            try
            {
                Boolean res = true;
                if (xstring != string.Empty)
                {
                    res = true;
                }
                if (xstring.Trim().Length == 0 || xstring == "__/__/____" || xstring == "__-___.___" || xstring == "__:__")
                {
                    res = true;
                }
                else { res = false; }

                return res;
            }
            catch (Exception e)
            {
                throw e;
            }

        }


        public string send(string xstring, Boolean xnull = true)
        {
            string res = string.Empty;
            try
            {
                if (fNull(xstring))
                {
                    if (xnull)
                    {
                        res = "Null";
                    }
                    else
                    {
                        res = "''";
                    }
                }
                else
                {
                    res = "'" + xstring.Replace("'", "''") + "'";
                }
                return res;
            }
            catch (Exception)
            {
                throw;
            }

        }


        public DataTable consultarTabla(string sqlQuery, SqlConnection cn = null)
        {
            SqlDataAdapter da = new SqlDataAdapter();
            DataTable tabla = new DataTable();
            SqlCommand cmd = new SqlCommand();
            try
            {
                if (cn == null)
                {
                    cn = conexion;
                }
                if (!fNull(sqlQuery))
                {
                    if (cn.State == ConnectionState.Open) cn.Close();
                    cn.Open();
                    cmd.Connection = cn;
                    cmd.CommandType = CommandType.Text;
                    cmd.CommandText = sqlQuery;
                    da.SelectCommand = cmd;
                    da.Fill(tabla);
                    if (cn.State == ConnectionState.Open) cn.Close();
                }

                return tabla;
            }
            catch (Exception e)
            {
                throw e;
            }
        }


        public DataTable consultarTabla(string spNombre, SqlConnection cn = null, params SqlParameter[] arrParam)
        {
            DataTable tabla = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter();
            SqlCommand cmd = new SqlCommand();
            try
            {
                if (cn == null) { cn = conexion; }
                if (cn.State == ConnectionState.Open) cn.Close();
                cn.Open();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = spNombre;
                cmd.Connection = cn;
                if (arrParam.Length > 0)
                {
                    foreach (SqlParameter param in arrParam)
                    {
                        cmd.Parameters.Add(param);
                    }
                }
                da.SelectCommand = cmd;
                da.Fill(tabla);
                if (cn.State == ConnectionState.Open) cn.Close();
                return tabla;
            }
            catch (Exception e)
            {
                throw e;
            }
        }


        public void ejecutarSP(string spNombre, SqlConnection cn = null, params SqlParameter[] arrParam)
        {
            SqlCommand cmd = new SqlCommand();
            try
            {
                if (cn == null) { cn = conexion; }
                if (cn.State == ConnectionState.Open) cn.Close();
                cn.Open();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = spNombre;
                cmd.Connection = cn;
                if (arrParam.Length > 0)
                {
                    foreach (SqlParameter param in arrParam)
                    {
                        cmd.Parameters.Add(param);
                    }
                }
                cmd.ExecuteNonQuery();
                if (cn.State == ConnectionState.Open) cn.Close();
            }
            catch (Exception e)
            {
                throw e;
            }
        }


        public SqlParameter Parametro(string nombre, string valor)
        {
            SqlParameter param = new SqlParameter();
            object value = new object();
            try
            {
                if (nombre.Substring(0, 1) != "@")
                {
                    nombre = "@" + nombre;
                }
                if (fNull(valor))
                {
                    value = DBNull.Value;
                }
                else
                {
                    value = valor;
                }
                param = new SqlParameter(nombre, value);

                return param;
            }
            catch (Exception) { throw; }
        }



    }
}