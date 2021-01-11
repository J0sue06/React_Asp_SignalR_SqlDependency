import React, { useState } from 'react';

function Chats({Chat,Hub}) {  
    let Resultados;
    let anterior;
    const [mensajes, setMensajes] = useState([]);
    const [contador, setContador] = useState(false);
    //let hub = $.connection.chatHub;

    Hub.client.chatNotifications = function () {
        MostrarChats();        
    }
    
    //MostrarChats();

    const Selecion = (id, persona) => {
        const objec = {id:id, persona:persona}
        Chat(objec);
    }

    function MostrarChats() {
       
        $.ajax({
            url: $('#Url').val(),
            type: 'GET',
            dataType: 'json',
            success: function (data) {                
                const Resultados = JSON.stringify(data.list);              
               
                if (!contador) {
                    setMensajes([...JSON.parse(Resultados)]);                    
                    setContador(true);
                }
               
            }, // Fin del success
            error: function (err) {
                console.error(err.responseText);
            }

        });//Fin del AJAX

        return (
            <React.Fragment>
            {mensajes.map((e, i) => (
                <div key={i} className="chat_list" onClick={() => Selecion(e.Id, e.Nombre) }>
            <div className="chat_people">
            <div className="chat_img"> <img src="https://ptetutorials.com/images/user-profile.png" alt="sunil" /> </div>
            <div className="chat_ib">
            <h5> {e.Nombre}  {e.Apellido} <span className="chat_date">{e.fecha}</span></h5>
            <p>{e.Canal} </p>
            </div>
            </div>
            </div>
                   )
                )}
            </React.Fragment>
        )
    }  

    return (
            <React.Fragment>               
                {MostrarChats()}
            </React.Fragment>
        )
    
}

export default Chats;