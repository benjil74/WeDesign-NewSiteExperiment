const dal = require("../data-access-layer/dal"); 

function getAllProjectsAsync() {
    return dal.executeQueryAsync(`
        select * from projectslist
    `);
}
function getAllProjectsFrAsync() {
    return dal.executeQueryAsync(`
        select * from projectslistfr
    `);
}
function getProjectAsync() {
    return dal.executeQueryAsync(`
        select * from projectdetails
    `);
}

function getProjectDetailsAsync(id) {
    return dal.executeQueryAsync(`
        select * from projectdetails where projectdetails.projectID='${id}'
    `);
}
async function insertClientAsync(user) {
    const sql=`
    INSERT INTO clientlist
    (firstName, lastName, company, email, phone, object) 
    VALUES 
    ('${user.firstName}', '${user.lastName}', '${user.company}', '${user.phone}', '${user.email}',  '${user.object}');
    `; 
    const info = await dal.executeQueryAsync(sql);
   
    return user;
  }
module.exports = {
    getAllProjectsAsync,
    getProjectAsync,
    getProjectDetailsAsync,
    insertClientAsync,
    getAllProjectsFrAsync
}