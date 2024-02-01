const express = require("express");
const cors = require("cors");
const config=require("./config.json");

const dataController=require("./controllers-layer/data-controller");
const adminController=require("./controllers-layer/admin-controller");
const loginController=require("./controllers-layer/login-controller");

const server = express();
server.use(cors());
server.use(express.json());
server.use('/images', express.static('images'));
server.use("/admin", adminController);
server.use("/", dataController);
server.use("/login", loginController)

server.use("*", (req, res) => {
    res.status(404).send(`Route not found ${req.originalUrl}`);
});

server.listen(config.port, () => {
    console.log("Listening on", config.port);
}).on("error", (err) => {
    if (err.code === "EADDRINUSE")
        console.log(`Error: Address (port no. ${config.port}) in use`);
    else 
        console.log("Error: Unknown error");
});