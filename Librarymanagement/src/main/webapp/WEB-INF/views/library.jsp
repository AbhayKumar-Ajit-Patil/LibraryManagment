<%@page import="com.abhi.librarymanagement.dto.LibraryDTO"  %>
<%@page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Library Page</title>
    <style type="text/css">
        /* General styling */
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background-image: url('data:image/jpeg;base64,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'); /* Background image URL */
            background-size: cover;
            background-position: center;
            animation: moveBackground 15s linear infinite; /* Animation to move the background image */
            color: #333;
        }

        h1 {
            text-align: center;
            color: #444;
            margin: 20px;
        }

        /* Card container styling */
        .card-container {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(280px, 1fr));
            gap: 20px;
            padding: 20px;
            margin: 0 auto;
            max-width: 1200px;
            z-index: 1;
            position: relative;
        }

        /* Individual card styling */
        .card {
            background: #ffa500;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            overflow: hidden;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .card:hover {
            transform: translateY(-10px);
            box-shadow: 0 6px 15px rgba(0, 0, 0, 0.1);
        }

        .card-header {
            background-color: #007bff;
            color: #fff;
            padding: 15px;
            font-size: 18px;
            text-align: center;
        }

        .card-body {
            padding: 15px;
        }

        .card-body p {
            margin: 10px 0;
            font-size: 14px;
            line-height: 1.6;
        }

        .action-buttons {
            display: flex;
            justify-content: space-between;
            margin-top: 15px;
        }

        /* Edit button styling */
        .edit-button {
            text-decoration: none;
            color: #fff;
            background-color: #28a745; /* Green for edit */
            padding: 8px 16px;
            border-radius: 5px;
            font-weight: bold;
            transition: background-color 0.3s ease;
        }

        .edit-button:hover {
            background-color: #218838; /* Darker green on hover */
        }

        /* Delete button styling */
        .delete-button {
            text-decoration: none;
            color: #fff;
            background-color: #dc3545; /* Red for delete */
            padding: 8px 16px;
            border-radius: 5px;
            font-weight: bold;
            transition: background-color 0.3s ease;
        }

        .delete-button:hover {
            background-color: #c82333; /* Darker red on hover */
        }

        /* New card for the message section */
        .message-card {
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
            text-align: center;
            margin-top: 20px;
        }

        /* Background animation */
        @keyframes moveBackground {
            0% {
                background-position: 0% 0%;
            }
            50% {
                background-position: 100% 100%;
            }
            100% {
                background-position: 0% 0%;
            }
        }

        /* Responsive styling */
        @media (max-width: 768px) {
            .card-container {
                grid-template-columns: repeat(auto-fill, minmax(260px, 1fr));
            }

            .card-header {
                font-size: 16px;
            }

            .card-body p {
                font-size: 12px;
            }

            .action-buttons a {
                padding: 6px 12px;
                font-size: 12px;
            }

            .message-card {
                padding: 15px;
            }
        }

    </style>
</head>

<body>
    <% 
    @SuppressWarnings("unchecked")
    List<LibraryDTO> library = (List<LibraryDTO>) request.getAttribute("library");
    if (library != null) {
    %>
    <div class="card-container">
        <% for (LibraryDTO book : library) { %>
        <div class="card">
            <div class="card-header">
                <%= book.getTitle()%> 
            </div>
            <div class="card-body">
                <p><strong>Author:</strong> <%=book.getAuthor() %></p>
                <p><strong>Genre:</strong> <%= book.getGenre() %></p>
                <p><strong>Availability:</strong> <%=book.getAvailability() %></p>
                
                <div class="action-buttons">
                    <a href="./edit-book?id=<%= book.getId() %>" class="edit-button">Update</a>
                    <a href="./delete-book?id=<%=book.getId() %>" class="delete-button">Delete</a>
                </div>
            </div>
        </div>
        <% } %>
    </div>
    <% } %>

    <%
    String message = (String) request.getAttribute("message");
    if (message != null) {
    %>
    <div class="message-card">
        <h1><%= message %></h1>
    </div>
    <% } %>

</body>

</html>
