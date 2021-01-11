import React, { useState } from 'react';

function Mensajes({ Hub }) {   
   
    const [conversaciones, setConversacion] = useState([]);
    const [contador, setContador] = useState(false);
   
    Hub.client.chatConversacion = function () {
        Conversacion(); 
    }
    //$.connection.hub.start();

    function Conversacion(){           
            $.ajax({
                url: '/Chat/Conversacion',
                type: 'GET',
                dataType: 'json',
                success: function (data) {
                    const _conversacion = data.list;
                    console.log('Entro a conversacion');
                    if (_conversacion.length > conversaciones.length) {
                        console.log('nuevo registro');
                        //setConversacion([..._conversacion]);        
                    }
                    //if (!contador) {
                    //setConversacion([..._conversacion]);            
                    //setContador(true);
                    //}                   
                    
                }, // Fin del success
                error: function (err) {
                    console.error(err.responseText);
                }

            });//Fin del AJAX
        
        if (conversaciones.length != 0) {
            
            return (
                <React.Fragment>

                    {conversaciones.map((item, i) => (

                        <div className="outgoing_msg" key={i}>
                            <div className="sent_msg">
                                <p>{item.Mensaje1}</p>
                                <span className="time_date"> 11:01 AM    |    June 9</span>
                            </div>
                        </div>

                    ))}

                </React.Fragment>
            )
        }
      

    }


    return (
        <React.Fragment>
            {Conversacion() }
        </React.Fragment>
    )


}

export default Mensajes;