<%-- 
    Document   : displayingOld
    Created on : Nov 6, 2018, 4:35:08 PM
    Author     : ouri alkada
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.io.IOException"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>




<%
        String csvFile = "/Users/user/NetBeansProjects/testingjsp/web/nba.csv";
        BufferedReader br = null;
        String line = "";
        String cvsSplitBy = ",";
        ArrayList<Integer> array = new ArrayList();
          ArrayList<String> array2 = new ArrayList();
        try {
out.println("<table border='1'><tr><th>NBA Teams</th><th>Year</th></tr>");
            br = new BufferedReader(new FileReader(csvFile));
            while ((line = br.readLine()) != null) {
                // use comma as separator
                String[] nba = line.split(cvsSplitBy);
                String[] nba2 = nba[0].split(";");
                array.add(Integer.parseInt(nba2[1]));
               array2.add(nba2[0]);
           
          
                                
            }
            
             for (int i = 0; i < array.size(); i++) {
                     for (int j = i+1; j < array.size(); j++) {
                       // compare list.get(i) and list.get(j)
                        if(array.get(i) > array.get(j))
                              {
                                     int ph=array.get(i);
                                     String ph2=array2.get(i);
                                     array.set(i,array.get(j));
                                     array.set(j,ph);
                                     array2.set(i,array2.get(j).toString());
                                     array2.set(j,ph2);
                               }
                       
                     }
                 
                
                    
                }
            
              for (int i = 0; i < 5; i++) {
              
                 
              out.println("<tr><td>" +array2.get(i)+"</td><td>"+array.get(i)+"</td></tr>");

              }
              
            
                out.println("</table>");
        } 

      
        catch (IOException e) {
           out.println(e);
        }

%>