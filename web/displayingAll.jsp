<%-- 
    Document   : displayingAll
    Created on : Nov 6, 2018, 4:34:57 PM
    Author     : ouri alkada
--%>

<%@page import="java.io.FileReader"%>
<%@page import="java.io.IOException"%>
<%@page import="java.io.BufferedReader"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%
        String csvFile = "/Users/livecare/NetBeansProjects/testingjsp/web/nba.csv";
        BufferedReader br = null;
        String line = "";
        String cvsSplitBy = ",";

        try {
out.println("<table border='1'><tr><th>NBA Teams</th><th>Year</th></tr>");
            br = new BufferedReader(new FileReader(csvFile));
            while ((line = br.readLine()) != null) {
                // use comma as separator
                String[] nba = line.split(cvsSplitBy);
                String[] nba2 = nba[0].split(";");
                out.println("<tr><td>" +nba2[0]+"</td><td>"+nba2[1]+"</td></tr>");

            }
                out.println("</table>");
        } 
      
        catch (IOException e) {
           out.println(e);
        }

%>