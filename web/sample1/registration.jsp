<%-- 
    Document   : registration
    Created on : Jun 13, 2017, 10:51:42 PM
    Author     : PCPL
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>REGISTRATION FORM</h1>
        <table align="center">
            <tr><td>
                    Name</td>
                <td><input type="text" name="name">
                </td></tr>
            <tr>
                <td>Gender</td>
                <td><input type="radio" name="gender">Male
                    <input type="radio" name="gender">female</td>
            </tr>
            <tr>
                <td>Date</td>
                <td><input type="date" name="date">
                </td>
            </tr>
            <tr>
                <td>Qualification</td>
                <td><input type="checkbox" name="qual" value="MCA">MCA
                    <input type="checkbox" name="qual" value="MBA">MBA
                    <input type="checkbox" name="qual" value="MSW">MSW
                </td>
            </tr>
            <tr>
                <td>State</td>
                <td><select name="state">
                        <%
                        String sel="select * from tbl_book where status=0";
                        ResultSet rs=obj.selcmd(sel);
                        while(rs.next())
                        {
                        %>
                        
                        
                        <option value="<%=rs.getString("book_id")%>"><%=rs.getString("book_name")%></option>
                    
                    <%
                    
                        }
                    %>
                    
                    </select>
                </td>
            </tr>
            <tr><td>
                    Phone no:</td>
                <td><input type="text" name="ph">
                </td></tr>
            <tr><td>
                    Email</td>
                <td><input type="text" name="email">
                </td></tr>
            <tr><td>
                    Password</td>
                <td><input type="password" name="pwd">
                </td></tr>
            <tr><td>
                    <input type="submit" name="submit" value="submit">
                    <input type="reset" name="reset" value="reset">
                </td></tr>
        </table>
    </body>
</html>
<%
                        
                        String s[]=request.getParameterValues("checkbox");
                        String ss="";
                        for(int i=0;i<s.length;i++)
                        {
                            ss=ss+s[i];
                            if(i<(s.length-1))
                                ss=ss+",";                                
                        }
                        
//                        ss="mca,mba,Msc";
%>

reg
login
hire book
view books

