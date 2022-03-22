const express = require('express');
const os = require('os');
const app = express();

try {
    app.get('/', function (req, res) {
        res.setHeader('Content-Type', 'application/json');
        res.json({
            "timestamp": new Date(),
            "hostname": os.hostname(),
            "engine": process.title + " " + process.version,
            "visitor ip": req.ip
        });
    });
} catch (error) {
    console.log(error);
}

app.listen(3000, function () {
    console.log("app listening on port 3000!");
});