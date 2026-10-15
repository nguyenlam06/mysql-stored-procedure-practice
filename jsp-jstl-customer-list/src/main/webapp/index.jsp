<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.codegym.model.Customer"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Danh Sách Khách Hàng</title>
        <style>
            body { font-family: 'Segoe UI', Arial, sans-serif; background-color: #f4f6f9; padding: 40px; margin: 0; }
            .container { max-width: 900px; margin: 0 auto; background: white; padding: 30px; border-radius: 8px; box-shadow: 0 4px 12px rgba(0,0,0,0.1); }
            h2 { color: #1b2a7a; text-align: center; margin-bottom: 25px; text-transform: uppercase; letter-spacing: 1px; }
            table { width: 100%; border-collapse: collapse; margin-top: 10px; }
            th, td { padding: 12px 15px; text-align: left; border-bottom: 1px solid #e0e0e0; vertical-align: middle; }
            th { background-color: #1b2a7a; color: white; font-weight: 600; }
            tr:hover { background-color: #f8fafc; }
            .avatar { width: 60px; height: 60px; border-radius: 50%; object-fit: cover; border: 2px solid #1b2a7a; }
            .stt { font-weight: bold; color: #555; text-align: center; }
        </style>
    </head>
    <body>

        <%
            // T?o danh sách khách hàng gi? l?p
            List<Customer> customerList = new ArrayList<>();
            customerList.add(new Customer("Mai Van Hoàn", "1983-08-20", "Hà N?i", "https://picsum.photos/100/100?random=1"));
            customerList.add(new Customer("Nguy?n Van Nam", "1983-08-21", "B?c Giang", "https://picsum.photos/100/100?random=2"));
            customerList.add(new Customer("Nguy?n Thái Hòa", "1983-08-22", "Nam Ð?nh", "https://picsum.photos/100/100?random=3"));
            customerList.add(new Customer("Tr?n Ðang Khoa", "1983-08-17", "Hà Tây", "https://picsum.photos/100/100?random=4"));
            customerList.add(new Customer("Nguy?n Ðình Thi", "1983-08-19", "Hà N?i", "https://picsum.photos/100/100?random=5"));

            // Ðua danh sách vào request attribute d? JSTL truy c?p
            request.setAttribute("customers", customerList);
        %>

        <div class="container">
            <h2>Danh Sách Khách Hàng</h2>
            <table>
                <thead>
                    <tr>
                        <th style="text-align: center;">STT</th>
                        <th>Tên khách hàng</th>
                        <th>Ngày sinh</th>
                        <th>Ð?a ch?</th>
                        <th style="text-align: center;">?nh d?i di?n</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="customer" items="" varStatus="loop">
                        <tr>
                            <td class="stt"></td>
                            <td style="font-weight: 600; color: #2c3e50;"></td>
                            <td></td>
                            <td></td>
                            <td style="text-align: center;">
                                <img src="" alt="" class="avatar"/>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>

    </body>
</html>
