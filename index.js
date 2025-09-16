const express = require("express");
const app = express();
const port = 3000; // you can change this

// Root route
app.get("/", (req, res) => {
  res.send("Hello World from Node.js!");
});

// Start server
app.listen(port, () => {
  console.log(`Server running at http://localhost:${port}`);
});
