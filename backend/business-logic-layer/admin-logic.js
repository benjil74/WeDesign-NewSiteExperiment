const dal = require("../data-access-layer/dal"); 
const path = require("path");


async function insertDescriptionAsync(projectID, description){
    return dal.executeQueryAsync(`
    UPDATE projectdetails SET description = '${description}'
    WHERE projectdetails.projectID = '${projectID}'
    `)
}

async function insertProjectAsync(project, title, image) {
    const absolutePath = path.join(__dirname, "..", "images", image.name);
    await image.mv(absolutePath); 
    const resultProjectsList = await dal.executeQueryAsync(`
        INSERT INTO projectslist (title, description, imgUrl) 
        VALUES ('${title}', 'view project...', '${image.name}')
    `);
    // const lastInsertId = resultProjectsList.insertId;
    updateProjectDetails();
    async function updateProjectDetails(){
    const lastInsertId= project.insertId;
    await dal.executeQueryAsync(`
        INSERT INTO projectdetails (projectID, title, description, pictureList) 
        VALUES ('${lastInsertId}', '${title}', 'Project Description', '')
    `);
    }
}

async function insertPictureAsync(projectID, nextID, image, title, description) {
    const absolutePath = path.join(__dirname, "..", "images", image.name);
    await image.mv(absolutePath);

    const currentPictureList = await dal.executeQueryAsync(`
        SELECT pictureList
        FROM projectdetails
        WHERE projectID = ${projectID};
    `);

    if (!currentPictureList[0].pictureList) {
        const newPictureList = JSON.stringify([
            {
                id: nextID,
                url: image.name,
                title: title,
                description: description
            }
        ]);
        return dal.executeQueryAsync(`
            UPDATE projectdetails
            SET pictureList = '${newPictureList}'
            WHERE projectdetails.projectID = ${projectID};
        `);
    } else {
        return dal.executeQueryAsync(`
            UPDATE projectdetails
            SET pictureList = JSON_ARRAY_APPEND(
                pictureList, '$', 
                JSON_OBJECT('id', '${nextID}', 'url', '${image.name}', 'title', '${title}', 'description', '${description}')
            )
            WHERE projectdetails.projectID = ${projectID};
        `);
    }
}

async function deleteProject(id) {
    return dal.executeQueryAsync(`
    DELETE FROM projectslist WHERE projectslist.projectID ='${id}';
        `);
}

async function deletePicture(id) {
    return dal.executeQueryAsync(`
    DELETE FROM projectdetails WHERE projectdetails.pictureList.id ='${id}';
        `);
}

async function getPicturesAsync(id) {
    return dal.executeQueryAsync(`
    select pictureList FROM projectdetails where projectdetails.projectID='${id}'; 
    `);
}
module.exports = {
    insertProjectAsync,
    deleteProject,
    deletePicture,
    insertPictureAsync,
    getPicturesAsync,
    insertDescriptionAsync
}