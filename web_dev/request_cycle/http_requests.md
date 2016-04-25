2. What are some common HTTP status codes?
Some common HTTP status codes include:
200 OK - Indicating that the request has succeeded without issue.

404 Not Fount - Indicates that the server couldn't find anything which matched the request's information. This response doesn't indicate whether or not the requested content is permanently missing.

500 Internal Server Error - The server experienced an error which prevented the request from being completed. For example, a POST request being denied because its trying to save information to a database that would violate some db constraint (such as uniqueness).

400 Bad Request - The request couldn't be processed by the server due to incorrect syntax.

3.
GET Requests are used to request data from a specified source, whereas POST requests submit data for processing by some source.
A GET request might be sent to a website when a client visits it, and the site's html indicates an image is to be loaded. This might trigger a GET request to be processed for retrieval of that image.
A POST request might be processed when a user fills out a form on an html page, and submits that form information to another route on the website where the info is then persisted to a database.

4. A cookie is a small piece of data stored in a client's web browser, which records relevant information about the client's preferences and configuration. Examples of data that might be stored in a cookie include passwords, login data, and form content that had previously been submitted. Cookies perform important work in authenticating users' browsing sessions, and storing data regarding users' preferences and session information that allows multiple independent HTTP requests to operate using shared information (stored in the cookie).
