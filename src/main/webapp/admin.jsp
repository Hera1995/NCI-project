
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css" media="all" />
    <title>User Management Table</title>
</head>
<body>
<h1>User Management Table</h1>

<form>
    <input type="text" placeholder="Search...">
    <button type="submit">Search</button>
</form>
    <table border="1">
        <thead>
        <tr>
            <th>Id</th>
            <th>Email</th>
            <th>FirstName</th>
            <th>LastName</th>
            <th>Password</th>
            <th>Type</th>
            <th>Operation</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${requestScope.users}" var="user">
        <tr>
            <td>${user.id}</td>
            <td>${user.email}</td>
            <td>${user.firstName}</td>
            <td>${user.lastName}</td>
            <td>${user.password}</td>
            <td>${user.type?'admin':'user'}</td>
            <td>
                <a href="${pageContext.request.contextPath}/admin/deleteUser?id=${user.id}"><button>Delete</button></a>
                <a href="${pageContext.request.contextPath}/admin/changeUserType?id=${user.id}"><button>Set as Admin/User</button></a>

            </td>
        </tr>
        </c:forEach>
        </tbody>
    </table>

</body>
</html>

