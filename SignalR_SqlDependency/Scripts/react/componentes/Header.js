import React from 'react';

function Header() {
    return(
        <div className="navbar navbar-inverse navbar-fixed-top">
            <div className="container">
                <div className="navbar-header">
                    <button type="button" className="navbar-toggle">
                        <span className="icon-bar"></span>
                        <span className="icon-bar"></span>
                        <span className="icon-bar"></span>
                    </button>
                    <a href="/Home/Index" className="navbar-brand">Application name</a>               
            </div>
                <div className="navbar-collapse collapse">
                    <ul className="nav navbar-nav">
                        <li><a href="/Home/Home">Home</a></li>
                        <li><a href="/Home/About">About</a></li>
                        <li><a href="/Home/Contact">Contac</a></li>
                    </ul>
                </div>
            </div>
        </div>
    )
}

export default Header;