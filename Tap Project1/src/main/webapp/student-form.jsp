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
                    <li><a href="${pageContext.request.contextPath}/list">Students</a></li>
                </ul>
            </nav>
        </div>
    </header>
    
    <main class="container">
        <div class="card form-card">
            <div class="card-header">
                <c:if test="${student != null}">
                    <h2>Edit Student</h2>
                </c:if>
                <c:if test="${student == null}">
                    <h2>Add New Student</h2>
                </c:if>
            </div>
            <div class="card-body">
                <c:if test="${student != null}">
                    <form action="update" method="post">
                </c:if>
                <c:if test="${student == null}">
                    <form action="insert" method="post">
                </c:if>
                
                <c:if test="${student != null}">
                    <input type="hidden" name="id" value="<c:out value='${student.id}' />" />
                </c:if>
                
                <div class="form-group">
                    <label for="name">Student Name</label>
                    <input type="text" id="name" name="name" value="<c:out value='${student.name}' />" required class="form-control" placeholder="Enter full name">
                </div>
                
                <div class="form-group">
                    <label for="email">Email Address</label>
                    <input type="email" id="email" name="email" value="<c:out value='${student.email}' />" required class="form-control" placeholder="Enter email address">
                </div>
                
                <div class="form-group">
                    <label for="course">Course</label>
                    <input type="text" id="course" name="course" value="<c:out value='${student.course}' />" required class="form-control" placeholder="Enter course name">
                </div>
                
                <div class="form-actions">
                    <button type="submit" class="btn-success">Save Student</button>
                    <a href="${pageContext.request.contextPath}/list" class="btn-secondary">Cancel</a>
                </div>
                </form>
            </div>
        </div>
    </main>
</body>
</html>
