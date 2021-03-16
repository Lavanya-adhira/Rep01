<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>

    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="ISO-8859-1">
        <title>Insert title here</title>
    </head>

    <style>
        body {
             height: 100vh;
       	background-color:#52a7c1;
        background-image:linear-gradient(315deg, #ff4500 1%,#0fad94 80%);
        }

        #account {
            display: flex;
            height: 100%;
            flex-direction: column;
            justify-content:center;
        }

        .first-sub {
            display: flex;
            flex-direction: column;
            justify-content: space-evenly;
            height: 100%;
        }

        .row {
            display: flex;
            justify-content: space-evenly;
            height: 100%;
        }

        .bt {
            display: flex;
            flex-direction: row;
            justify-content: space-evenly;
            margin-top: 5%;
            width:50%;
        }

        button {
            height: 40px;
            width: 150px;
            background-color:black;
            color:white
        }

        input {
            height: 25px;
            width: 250px;
        }

        form {
            width: 100%;
        }

        .main-bt {
            width: 100%;
            justify-content: center;
            display: flex;
        }
       
    </style>

    <body>
        
            <div>
                <form method="post" action="sendmoneyoperation.jsp">
                    <div class="row">
                        <div class="first-sub">
                            <span>From:</span><br>
                            <input type="text" name="from_name">
                            <br>
                            <span>To:</span><br>
                            <input type="text" name="To_name">
                            <br>
                            <span>Amount:</span><br>
                            <input type="text" name="amt">
                  
                        </div>
                    </div>
                    <div class="main-bt">
                        <div class="bt">
                            <div>
                                <button>Transfer</button>
                            </div>
                            <div>
                                <button formaction="back.jsp">back</button>
                            </div>
                        </div>
                    </div>
                </form>

            </div>

    </body>

    </html>