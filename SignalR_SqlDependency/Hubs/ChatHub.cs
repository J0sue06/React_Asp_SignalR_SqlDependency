using Microsoft.AspNet.SignalR;
using System;

namespace SignalR_SqlDependency.Hubs
{
    public class ChatHub : Hub
    {
        public static void Actualizar()
        {
            //Clients.All.hello();
            IHubContext context = GlobalHost.ConnectionManager.GetHubContext<ChatHub>();
            context.Clients.All.ChatNotifications();
        }

        public void Conversacion()
        {
            IHubContext context = GlobalHost.ConnectionManager.GetHubContext<ChatHub>();
            context.Clients.All.ChatConversacion();

        }

     
    }
}