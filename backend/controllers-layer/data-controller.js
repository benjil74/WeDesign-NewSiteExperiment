const express = require("express");

const dataLogic = require("../business-logic-layer/data-logic");
const router = express.Router();

router.get("/portfolio", async (request, response) => {
    try {
        const result=await dataLogic.getAllProjectsAsync();
        response.send(result);
    }
    catch (error) {
        console.log(error);
        response.status(500).send({message : "Server error"});
    }
});
router.get("/portfolioFr", async (request, response) => {
    try {
        const result=await dataLogic.getAllProjectsFrAsync();
        response.send(result);
    }
    catch (error) {
        console.log(error);
        response.status(500).send({message : "Server error"});
    }
});

router.get("/projects", async (request, response) => {
    try {
        const result=await dataLogic.getProjectAsync();
        response.send(result);
    }
    catch (error) {
        console.log(error);
        response.status(500).send({message : "Server error"});
    }
});
router.post("/insertClient", async (request, response) => {
    try {
        const result=await dataLogic.insertClientAsync(request.body);
        let insertedClient=request.body;
        insertedClient.clientID=result.insertId;
        response.send(insertedClient);
        console.log(insertedClient);
    }
    catch (error) {
        console.log(error);
        response.status(500).send({message: "Server error"});
    }
});
module.exports = router;