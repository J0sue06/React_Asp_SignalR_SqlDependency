import React, { useState } from 'react';
import Mensajes from './Mensajes';
import Chats from './Chats';

function Body() {  
    let hub = $.connection.chatHub;
    const [Chat, setChats] = useState([]);
    $.connection.hub.start();
    return (
        <div className="container body-content">
            <div className="container">
                <h3 className=" text-center">Messaging</h3>
                <div className="messaging">
                    <div className="inbox_msg">
                        <div className="inbox_people">
                            <div className="headind_srch">
                                <div className="recent_heading">
                                    <h4>Recientes <b id="recientes"></b></h4>
                                </div>
                                <div className="srch_bar">
                                    <div className="stylish-input-group">
                                        <input type="text" className="search-bar" placeholder="Search" />
                                        <span className="input-group-addon">
                                            <button type="button"> <i className="fa fa-search" aria-hidden="true"></i> </button>
                                        </span>
                                    </div>
                                </div>
                            </div>
                            <div className="inbox_chat">
                                <Chats
                                    Chat={setChats}
                                    Hub={hub}
                                />
                            </div>

                        </div>
                        <div className="mesgs">
                            <div className="msg_history">
                                <Mensajes
                                    Hub={hub}
                                />
                            </div>
                            <div className="type_msg">
                                <div className="input_msg_write">
                                    <input type="text" className="write_msg" placeholder="Type a message" />
                                    <button className="msg_send_btn" type="button"><i className="fa fa-paper-plane-o" aria-hidden="true"></i></button>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    )
}

export default Body;