1. What are some common HTTP status codes?
Here's a great resource on status codes: https://en.wikipedia.org/wiki/List_of_HTTP_status_codes
And here's a poem my friend wrote: https://www.mcsweeneys.net/articles/a-love-story-in-status-codes
And here are what some common status codes are:
 - 200: OK.
 - 404: Not found. Why'd you move that file? It was fine where it was! Why doesn't the CDN have something cached there?
 - 502: Bad gateway. Upstream server gives the gateway server (that you're trying to get something from) an invalid response.
 - 503: Service unavailable. Usually a temporary error, and can be the product of DDoS attacks.
 - 508: Loop Detected. Probably something I'm going to accidentally cause at least once in my career. ;)

2. What is the difference between a GET request and a POST request? When might each be used?
GET can be used for, well, getting or retrieving a resource. While GET can also transmit data back to a server, it does so through the URL, which has risks and limitations. GET requests are best for operations that do not modify data.
POST can be used for creating and editing information, or sending data. It has much larger data transfer capabilities, and is more secure than using GET for a similar operation. POST would commonly be used for forms.