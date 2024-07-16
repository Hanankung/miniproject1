const express = require('express');
const app = express();
const PORT = process.env.PORT || 3000; //ระบุ PORT

//ใช้ json
app.use(express.json());
app.use(express.urlencoded({ extended: true }));

//เรียกใช้ไฟล์ writeRead และไฟล์ updateDelete
const writeRead = require('./routes/writeRead');
const updateDelete = require('./routes/updateDelete');

//กำหนดตัวแปรเพื่อเรียกใช้งานใน routing
app.use('/wr', writeRead);
app.use('/ud', updateDelete);

//ในกรณีหาไม่เจอให้ขึ้น 404
app.use('/', function (req, res, next) {
    res.sendStatus(404);
});

app.listen(PORT, () =>
    console.log('Server running on port:' +PORT)
);