<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("userid");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "bankingdb";
String userid = "root";
String password = "";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<!DOCTYPE html>
<html>
<style>
    #grad1 {
        height: 100vh;
       	background-color:#52a7c1;
        background-image:linear-gradient(315deg, #ff4500 1%,#0fad94 80%);
        justify-content: center;
   		display: flex;
    }

    #grad1 {
        font-family: Arial, Helvetica, sans-serif;
        border-collapse: collapse;
        width: 100%;
    }

    #grad1 td,
    #customers th {
        border: 1px solid #ddd;
        padding: 8px;
    }

    #grad1 tr {
        background-color: #f2f2f2;
    }
    #first-table{
    width:80%
    
    }

    #grad1 tr:hover {
        background-color: #ddd;
    }

    #grad1 th {
        padding-top: 12px;
        padding-bottom: 12px;
        text-align: left;
        background-color: #4CAF50;
        color: white;
        font-weight: 700
    }

    .sub-div {
        display: flex;
        flex-direction: "row";
        height: 100vh
    }

    .head {
        font-weight: 700
    }

    .row {
       	display: flex;
	    flex-direction: row;
	    width: 80%;
	    align-items: center;
	    justify-content: center;
    }
    .second-part{
	    display: flex;
	    flex-direction: column;
	    justify-content: space-around;
        height: 50%;
	    width:20%;
	    align-items: flex-end;
	    }
	    
	 .main-tables{
	 	width:80%;
	 }
	 .tab{
	 width:90vh
	 }
	
	 
	 button{
    height: 40px;
    width: 150px;

}


</style>

<body id="grad1">
    <div class="row">
    
        <div class="main-tables">
        <h1>Transaction history</h1>
            <div id="first-table">
            <div >
                
                <table border="1" class="tab" >
                
                    <tr class="head">
                        <td>Id</td>
                        <td>From</td>
                        <td>To</td>
                        <td>Amount</td>
                        <td>Date</td>

                    </tr>
                    
                    <% try{ connection=DriverManager.getConnection(connectionUrl+database, userid, password);
                        statement=connection.createStatement(); String
                        sql="select * from historyoftransaction" ;
                        resultSet=statement.executeQuery(sql); while(resultSet.next()){ %>
                        
                        <tbody>
                        <tr>
                            <td>
                                <%=resultSet.getString("id") %>
                            </td>
                            <td>
                                <%=resultSet.getString("fromname") %>
                            </td>
                            <td>
                                <%=resultSet.getString("toname") %>
                            </td>
                            <td>
                                <%=resultSet.getString("amount") %>
                            </td>
                            <td>
                                <%=resultSet.getString("date") %>
                            </td>
                          
                        </tr>
                        </tbody>
                        <% } connection.close(); } catch (Exception e) { e.printStackTrace(); } %>
                </table>
                </div>
            </div>
           
        </div>
               
    </div>
</body>

</html>