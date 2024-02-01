const express = require("express");
const fileUpload=require("express-fileupload");
const verifyLoggedIn = require("../middleware/verify-logged-in");

const adminLogic = require("../business-logic-layer/admin-logic");
const dataLogic = require("../business-logic-layer/data-logic");
const imagesLogic = require("../business-logic-layer/images-logic");

const router = express.Router();
router.use(fileUpload());

router.post("/insertProject", verifyLoggedIn,
async (request, response) => {
    const title=request.body.title;
    const image=request.files.image;
    try {
        insertedProject=request.body;
        const result=await adminLogic.insertProjectAsync(insertedProject, title, image);
        insertedProject.projectID=result.insertId;
    }
    catch (error) {
        console.log(error);
        response.status(500).send({message: "Server error"});
    }
});

router.post("/insertPicture/:projectID", verifyLoggedIn,
async (request, response) => {
    const projectID = request.params.projectID;
    const nextID = request.body.nextID;
    const title = request.body.title;
    const description = request.body.description;
    try {
        const image = request.files.image;
        await adminLogic.insertPictureAsync(projectID, nextID, image, title, description);
    }
    catch (error) {
        console.log(error);
        response.status(500).send({message: "Server error"});
    }
});

router.post("/insertDescription/:projectID", verifyLoggedIn,
async (request, response) => {
    const projectID = request.params.projectID;
    const description = request.body.description;
    try {
        const result= await adminLogic.insertDescriptionAsync(projectID, description);
        response.send(result);
    }
    catch (error) {
        console.log(error);
        response.status(500).send({message: "Server error"});
    }
});

router.post("/postImage/:title", verifyLoggedIn, async (request, response) => {
    const title = request.params.title;
    try {
        const image = request.files.image;
        await imagesLogic.saveImage(image, title)
    }
    catch (error) {
        console.log(error);
        response.status(500).send({message: "Server error"});
    }
});

router.delete('/delete/:id', verifyLoggedIn, async (request, response) => {
    const projectID = request.params.id;
    try {
        const result=await adminLogic.deleteProject(projectID);
        console.log(result);
        response.send(result);
    }
    catch (error) {
        console.log(error);
        response.status(500).send({message : "Server error"});
    }
});

router.delete('/delete/project/:id', verifyLoggedIn, async (request, response) => {
    const id = request.params.id;
    try {
        const result=await adminLogic.deletePicture(id);
        console.log(result);
        response.send(result);
    }
    catch (error) {
        console.log(error);
        response.status(500).send({message : "Server error"});
    }
});

router.get("/pictures/:id", verifyLoggedIn, async (request, response) => {
    const id = request.params.id;
    try {
        const result=await adminLogic.getPicturesAsync(id);
        response.send(result);
    }
    catch (error) {
        console.log(error);
        response.status(500).send({message : "Server error"});
    }
});
router.get("/projects/:projectID", verifyLoggedIn, async (request, response) => {
    const projectID = request.params.projectID;
    try {
        const result=await dataLogic.getProjectDetailsAsync(projectID);
        response.send(result);
    }
    catch (error) {
        console.log(error);
        response.status(500).send({message : "Server error"});
    }
});
router.get("/portfolio", verifyLoggedIn, async (request, response) => {
    try {
        const result=await dataLogic.getAllProjectsAsync();
        response.send(result);
    }
    catch (error) {
        console.log(error);
        response.status(500).send({message : "Server error"});
    }
});
module.exports = router;