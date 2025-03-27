<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            height: 100vh;
            background: url('data:image/jpeg;base64,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') center/cover no-repeat;
            animation: backgroundAnimation 10s infinite alternate;
            color: white;
        }
        @keyframes backgroundAnimation {
            0% {
                background-size: 100% 100%;
            }
            50% {
                background-size: 110% 110%;
            }
            100% {
                background-size: 100% 100%;
            }
        }
        nav {
            background-color: rgba(0, 0, 0, 0.6);
            color: white;
            padding: 1rem;
            display: flex;
            justify-content: center;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }
        nav ul {
            list-style: none;
            margin: 0;
            padding: 0;
            display: flex;
        }
        nav ul li {
            margin: 0 1rem;
        }
        nav ul li a {
            text-decoration: none;
            color: white;
            font-size: 1.1rem;
            transition: color 0.3s ease, transform 0.3s ease;
        }
        nav ul li a:hover {
            color: #ffd700;
            transform: scale(1.1);
        }
        .container {
            padding: 2rem;
            text-align: center;
            animation: fadeIn 2s ease-in-out;
        }
        @keyframes fadeIn {
            from {
                opacity: 0;
            }
            to {
                opacity: 1;
            }
        }

        /* Footer Styling */
        footer {
            background-color: rgba(0, 0, 0, 0.8);
            color: white;
            text-align: center;
            padding: 10px;
            position: fixed;
            bottom: 0;
            width: 100%;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.2);
        }
        footer a {
            color: #ffd700;
            text-decoration: none;
            font-weight: bold;
        }
        footer a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <nav>
        <ul>
            <li><a href="./add-book-page">Add book</a></li>
              <li><a href="./users">All Users</a></li>
          
            <li><a href="./library">library</a></li>
            <li><a href="./logout">Log Out</a></li>
        </ul>
    </nav>
    <div class="container">
        <h1>Welcome to the Library Management System</h1>
    </div>

    <!-- Footer Section -->
    <footer>
        <p>&copy; 2025 Library Management System. All rights reserved.</p>
        <p><a href="#">Privacy Policy</a> | <a href="#">Terms of Service</a></p>
    </footer>
</body>
</html>
