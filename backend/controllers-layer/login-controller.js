const express = require("express");
const loginLogic = require("../business-logic-layer/login-logic");
const Credentials = require("../model/credentials");
const verifyLoggedIn = require("../middleware/verify-logged-in");
const router = express.Router();

router.post("/", async (request, response) => {
    try {
        const credentials = new Credentials(request.body);
        const errors = credentials.validate();
        if (errors) return response.status(400).send(errors);
        const loggedInUser = await loginLogic.loginAsync(credentials);
        if (!loggedInUser) return response.status(401).send("Incorrect username or password.");
        response.json(loggedInUser);
    }
    catch (err) {
        response.status(500).send(err.message);  
    }
});
router.post("/insertUser", verifyLoggedIn, async (request, response) => {
    try {
        const result=await loginLogic.insertUserAsync(request.body);
        let insertedUser=request.body;
        insertedUser.userID=result.insertId;
        response.send(insertedUser);
    }
    catch (error) {
        console.log(error);
        response.status(500).send({message: "Server error"});
    }
});
module.exports = router;