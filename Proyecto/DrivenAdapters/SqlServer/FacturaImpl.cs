using System.Data;
using System.Data.SqlClient;
using Proyecto.Domain.Model;


namespace Proyecto.DrivenAdapters.SqlServer
{
    public class FacturaImpl
    {
        //public int NumeroFactura { get; private set; }
        /// <summary>
        /// public string NombreCliente { get; private set; }
        /// </summary>
        ///public int Total { get; private set; }

        public List<Factura> list()
        {
            var varList = new List<Factura>();
            var cn = new Connect();
            using (var conect = new SqlConnection(cn.getCadenaSql()))
            {
                conect.Open();
                SqlCommand cmd = new SqlCommand("spListAll", conect);
                cmd.CommandType = CommandType.StoredProcedure;
                using (var dr = cmd.ExecuteReader())
                {
                    while (dr.Read())
                    {
                        varList.Add(new Factura()
                        {
                            Id = Convert.ToInt32(dr["Id"]),
                            Fecha = dr["Fecha"].ToString(),
                            NumeroFactura = Convert.ToInt32(dr["NumeroFactura"]),
                            NombreCliente = dr["NombreCliente"].ToString(),
                            TipodePago = dr["TipodePago"].ToString(),
                            DocumentoCliente = dr["DocumentoCliente"].ToString(),
                            Descuento = Convert.ToDecimal(dr["Descuento"]),
                            Iva = Convert.ToDecimal(dr["Iva"]),
                            Total = Convert.ToDecimal(dr["Total"]),
                         

                        }
                        );
                    }
                }

            }
            return varList;
        }

        public Factura GetId(int id)
        {
            var varFactura = new Factura();
            var cn = new Connect();
            using (var conect = new SqlConnection(cn.getCadenaSql()))
            {
                conect.Open();
                SqlCommand cmd = new SqlCommand("spListId", conect);
                cmd.Parameters.AddWithValue("Id", id);
                cmd.CommandType = CommandType.StoredProcedure;
                using (var dr = cmd.ExecuteReader())
                {
                    while (dr.Read())
                    {
                        varFactura.Id = Convert.ToInt32(dr["Id"]);
                        varFactura.NumeroFactura = Convert.ToInt32(dr["NumeroFactura"]);
                        varFactura.Fecha = dr["Fecha"].ToString();
                        varFactura.TipodePago = dr["TipodePago"].ToString();
                        varFactura.DocumentoCliente = dr["DocumentoCliente"].ToString();
                        varFactura.NombreCliente = dr["NombreCliente"].ToString();
                        varFactura.Descuento = Convert.ToDecimal(dr["Descuento"].ToString());
                        varFactura.Iva = Convert.ToDecimal(dr["Iva"].ToString());
                    }

                }
                return varFactura;
            }
        }

            public bool Save(Factura factura)
            {
                bool rpta;
                try
                {
                    var cn = new Connect();
                    using (var conect = new SqlConnection(cn.getCadenaSql()))
                    {
                        conect.Open();
                        SqlCommand cmd = new SqlCommand("spSave", conect);

                        cmd.Parameters.AddWithValue("NumeroFactura", factura.NumeroFactura);
                        cmd.Parameters.AddWithValue("Fecha", factura.Fecha);
                        cmd.Parameters.AddWithValue("TipodePago", factura.TipodePago);
                        cmd.Parameters.AddWithValue("DocumentoCliente", factura.DocumentoCliente);
                        cmd.Parameters.AddWithValue("NombreCliente", factura.NombreCliente);
                        cmd.Parameters.AddWithValue("Subtotal", factura.Subtotal);
                        cmd.Parameters.AddWithValue("Descuento", factura.Descuento);
                        cmd.Parameters.AddWithValue("Iva", factura.Iva);
                        cmd.Parameters.AddWithValue("TotalDescuento", factura.TotalDescuento);
                        cmd.Parameters.AddWithValue("TotalImpuesto", factura.TotalImpuesto);
                        cmd.Parameters.AddWithValue("Total", factura.Total);
                     

                    cmd.CommandType = CommandType.StoredProcedure;
                        cmd.ExecuteNonQuery();
                        
                    }
                    rpta = true;
                }
                catch (Exception e)
                {
                    string error = e.Message;
                    rpta = false;
                }
                return rpta;
            }


        public bool SaveDetalle(Detalles detalle)
        {
            bool rpta;
            try
            {
                var cn = new Connect();
                using (var conect = new SqlConnection(cn.getCadenaSql()))
                {
                    conect.Open();
                    SqlCommand cmd = new SqlCommand("spSaveDetalle", conect);

                    cmd.Parameters.AddWithValue("IdFactura", detalle.IdFactura);
                    cmd.Parameters.AddWithValue("IdProducto", detalle.IdProducto);
                    cmd.Parameters.AddWithValue("Cantidad", detalle.Cantidad);
                    cmd.Parameters.AddWithValue("PrecioUnitario", detalle.PrecioUnitario);
                   


                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.ExecuteNonQuery();

                }
                rpta = true;
            }
            catch (Exception e)
            {
                string error = e.Message;
                rpta = false;
            }
            return rpta;
        }





        public bool UpDate(Factura factura)
            {
                bool rpta;
                try
                {
                    var cn = new Connect();
                    using (var conect = new SqlConnection(cn.getCadenaSql()))
                    {
                        conect.Open();
                        SqlCommand cmd = new SqlCommand("spUpDate", conect);
                        cmd.Parameters.AddWithValue("Id", factura.Id);
                        cmd.Parameters.AddWithValue("Fecha", factura.Fecha);
                        cmd.Parameters.AddWithValue("NumeroFactura", factura.NumeroFactura);
                        cmd.Parameters.AddWithValue("TipodePago", factura.TipodePago);
                        cmd.Parameters.AddWithValue("NombreCliente", factura.NombreCliente);
                        cmd.Parameters.AddWithValue("Subtotal", factura.Subtotal);
                        cmd.Parameters.AddWithValue("TotalDescuento", factura.TotalDescuento);
                        cmd.Parameters.AddWithValue("DocumentoCliente", factura.DocumentoCliente);
                        cmd.Parameters.AddWithValue("Descuento", factura.Descuento);
                        cmd.Parameters.AddWithValue("Iva", factura.Iva);
                        cmd.Parameters.AddWithValue("TotalImpuesto", factura.TotalImpuesto);
                        cmd.Parameters.AddWithValue("Total", factura.Total);
                   

                    cmd.CommandType = CommandType.StoredProcedure;
                        cmd.ExecuteNonQuery();

                    }
                    rpta = true;
                }
                catch (Exception e)
                {
                    string error = e.Message;
                    rpta = false;
                }
                return rpta;
            }


        public bool UpDateCalcular(Factura factura)
        {
            bool rpta;
            try
            {
                var cn = new Connect();
                using (var conect = new SqlConnection(cn.getCadenaSql()))
                {
                    conect.Open();
                    SqlCommand cmd = new SqlCommand("spUpDateCalcular", conect);
                    cmd.Parameters.AddWithValue("Id", factura.Id);
                    cmd.Parameters.AddWithValue("Fecha", factura.Fecha);
                    cmd.Parameters.AddWithValue("NumeroFactura", factura.NumeroFactura);
                    cmd.Parameters.AddWithValue("TipodePago", factura.TipodePago);
                    cmd.Parameters.AddWithValue("NombreCliente", factura.NombreCliente);
                    cmd.Parameters.AddWithValue("Subtotal", factura.Subtotal);
                    cmd.Parameters.AddWithValue("TotalDescuento", factura.TotalDescuento);
                    cmd.Parameters.AddWithValue("DocumentoCliente", factura.DocumentoCliente);
                    cmd.Parameters.AddWithValue("Descuento", factura.Descuento);
                    cmd.Parameters.AddWithValue("Iva", factura.Iva);
                    cmd.Parameters.AddWithValue("TotalImpuesto", factura.TotalImpuesto);
                    cmd.Parameters.AddWithValue("Total", factura.Total);


                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.ExecuteNonQuery();

                }
                rpta = true;
            }
            catch (Exception e)
            {
                string error = e.Message;
                rpta = false;
            }
            return rpta;
        }



        public bool Delete(int id)
            {
                bool rpta;
                try
                {
                    var cn = new Connect();
                    using (var conect = new SqlConnection(cn.getCadenaSql()))
                    {
                        conect.Open();
                        SqlCommand cmd = new SqlCommand("spDelete", conect);
                        cmd.Parameters.AddWithValue("id", id);


                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.ExecuteNonQuery();

                    }
                    rpta = true;
                }
                catch (Exception e)
                {
                    string error = e.Message;
                    rpta = false;
                }
                return rpta;
            }
        }
    }

