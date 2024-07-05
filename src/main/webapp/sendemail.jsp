<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Send Email</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container mt-5">
        <h2>Send an Email</h2>
        <form action="sendemail" method="post">
            <div class="form-group">
                <label for="email">To:</label>
                <input value="${email}" type="email" class="form-control" id="email" name="email" readonly required>
            </div>
            <div class="form-group">
                <label for="subject">Subject:</label>
                <input value="${subject}" type="text" class="form-control" id="subject" name="subject" required>
            </div>
            <div class="form-group">
                <label for="message">Message:</label>
                <textarea class="form-control" id="message" name="message" rows="5" required></textarea>
            </div>
            <button type="submit" class="btn btn-primary">Send Email</button>
            <a href="empcvload" class="btn btn-secondary">Return</a>
        </form>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
