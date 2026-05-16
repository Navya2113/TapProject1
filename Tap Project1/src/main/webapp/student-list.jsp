<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student Management Application</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600&display=swap" rel="stylesheet">
</head>
<body>
    <header>
        <div class="navbar">
            <h1 class="logo">EduManage Pro</h1>
            <nav>
                <ul>
                    <li><a href="${pageContext.request.contextPath}/list" class="active">Students</a></li>
                    <li><a href="${pageContext.request.contextPath}/new" class="btn-primary">Add New Student</a></li>
                </ul>
            </nav>
        </div>
    </header>
    
    <main class="container">
        <div class="card">
            <div class="card-header">
                <h2>List of Students</h2>
            </div>
            <div class="card-body">
                <table class="table">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Name</th>
                            <th>Email</th>
                            <th>Course</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="student" items="${listStudent}">
                            <tr>
                                <td><c:out value="${student.id}" /></td>
                                <td><c:out value="${student.name}" /></td>
                                <td><c:out value="${student.email}" /></td>
                                <td><c:out value="${student.course}" /></td>
                                <td class="actions">
                                    <a href="${pageContext.request.contextPath}/edit?id=<c:out value='${student.id}' />" class="btn-edit">Edit</a>
                                    <a href="${pageContext.request.contextPath}/delete?id=<c:out value='${student.id}' />" class="btn-delete" onclick="return confirm('Are you sure you want to delete this student?');">Delete</a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </main>
</body>
</html>
