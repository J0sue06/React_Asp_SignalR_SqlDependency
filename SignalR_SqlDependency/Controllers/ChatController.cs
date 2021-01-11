using SignalR_SqlDependency.Hubs;
using SignalR_SqlDependency.Models;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace SignalR_SqlDependency.Controllers
{
    public class ChatController : Controller
    {
        // GET: Chat
        public ActionResult Index()
        {
            return View();
        }

        public JsonResult Get()
        {
            using (var connection = new SqlConnection(ConfigurationManager.ConnectionStrings["signalrEntities3"].ConnectionString))
            {
                connection.Open();
                using (SqlCommand command = new SqlCommand(@"SELECT [Id],[Nombre], [Apellido], [Fecha], [canal] FROM [dbo].[personas]", connection))
                {
                    command.Notification = null;
                    //SqlDataReader reader = null;
                    List<persona> result = new List<persona>();


                    SqlDependency dependency = new SqlDependency(command);
                    dependency.OnChange += Dependency_OnChange;
                    if (connection.State == ConnectionState.Closed)
                    {
                        connection.Open();
                    }
                    
                    try
                    {
                        SqlDataReader reader = command.ExecuteReader();

                        if (reader != null)
                        {
                            result = reader.Cast<IDataRecord>()
                                  .Select(x => new persona
                                  {
                                      Id = (int)x["Id"],
                                      Nombre = (string)x["Nombre"],
                                      Apellido = (string)x["Apellido"],
                                      fecha = (DateTime)x["fecha"],
                                      canal = (int)x["canal"]
                                  }).ToList();

                        }

                    }
                    catch (Exception ex)
                    {
                        Console.WriteLine(ex.Message);
                    }

                    return Json(new { list = result }, JsonRequestBehavior.AllowGet);
                }
            }
           
        }

        public JsonResult Conversacion()
        {
            using (var connection = new SqlConnection(ConfigurationManager.ConnectionStrings["signalrEntities3"].ConnectionString))
            {
                connection.Open();
                using (SqlCommand command = new SqlCommand(@"SELECT [IdMensajes], [Canal],[Emisor],[Receptor], [Mensaje], [Fecha] FROM [dbo].[mensajes]", connection))
                {
                    command.Notification = null;
                    //SqlDataReader reader = null;
                    List<mensaje> result = new List<mensaje>();

                    


                    SqlDependency dependency = new SqlDependency(command);
                    dependency.OnChange += new OnChangeEventHandler(DependencyConversacion_OnChange);
                    if (connection.State == ConnectionState.Closed)
                    {
                        connection.Open();
                    }

                    try
                    {
                        SqlDataReader reader = command.ExecuteReader();

                        if (reader != null)
                        {
                            result = reader.Cast<IDataRecord>()
                                  .Select(x => new mensaje
                                  {
                                      IdMensajes = (int)x["IdMensajes"],
                                      Canal = (int)x["Canal"],
                                      Emisor = (int)x["Emisor"],
                                      Receptor = (int)x["Receptor"],
                                      Mensaje1 = (string)x["Mensaje"],
                                      Fecha = (DateTime)x["Fecha"]
                                  }).ToList();

                        }

                    }
                    catch (Exception ex)
                    {
                        Console.WriteLine(ex.Message);
                    }

                    return Json(new { list = result }, JsonRequestBehavior.AllowGet);
                }
            }

        }

        public JsonResult Enviar(string Mensaje, int Canal, int Emisor, int Receptor)
        {
            using (signalrEntities db = new signalrEntities())
            {
                mensaje model = new mensaje();
                model.Canal = Canal;
                model.Emisor = Emisor;
                model.Receptor = Receptor;
                model.Mensaje1 = Mensaje;
                model.Fecha = DateTime.Now;

                db.mensajes.Add(model);
                var res = db.SaveChanges();

                return Json(res, JsonRequestBehavior.AllowGet);
            }
            
        }

        private void Dependency_OnChange(object sender, SqlNotificationEventArgs e)
        {
            ChatHub.Actualizar();
        }
        private void DependencyConversacion_OnChange(object sender, SqlNotificationEventArgs e)
        {
            new ChatHub().Conversacion();
        }
    }

}