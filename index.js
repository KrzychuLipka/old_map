const express = require("express");
const app = express();
const port = process.env.PORT || 3000; // Use environment variable or default to 3000
const oldMapRouter = require("./route/oldMapRouter");

app.use(express.json());
app.use(
    express.urlencoded({
        extended: true,
    })
);

// CORS - A mechanism that allows sharing resources between servers located in different domains.
app.use((req, res, next) => {
    // Set up CORS (replace "*" with specific allowed origins)
    res.header("Access-Control-Allow-Origin", "*");
    // Access-Control-Allow-Headers - determines what additional headers are allowed in requests passed by the browser.
    // Origin - Specifies the source from which the request comes (e.g. domain, port).
    // X-Requested-With - Servers can use this header to recognize whether the request comes from JavaScript code or a simple browser click.
    // Content-Type - Specifies the type of content transferred in the request body.
    // Accept - Specifies the content type that the client accepts in the response.
    res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept");
    next();
});


app.use("/oldMapData", oldMapRouter);

// Error handling middleware
app.use((error, req, res, next) => {
    const statusCode = error.statusCode || 500;
    console.error(error.message, error.stack);
    // We do't disclose detailed error information to customers.
    res.status(statusCode).json({ message: "An error occurred on the server side. We apologize." }); 
});

app.listen(port, () => {
    console.log(`Server listening at port ${port}.`);
});
