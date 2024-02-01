const dal = require("../data-access-layer/dal");
const path = require("path");
// const uuid = require("uuid");

async function saveImage(image, title) {
    const absolutePath = path.join(__dirname, "..", "images", image.name);
    await image.mv(absolutePath);   
    return await dal.executeQueryAsync(
        `UPDATE projectslist SET imgUrl = '${image.name}' WHERE title = '${title}';
`);
}

module.exports = {
    saveImage,
};