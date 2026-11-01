import express from 'express';
import { fileURLToPath } from 'url';
import path from 'path';

const NODE_ENV = process.env.NODE_ENV?.toLowerCase() || 'development';
const PORT = process.env.PORT || 3000;

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

// create express application object
const app = express();

/** configure express middleware */
// serve static files from public directory = where to find static files
app.use(express.static(path.join(__dirname, 'public')));

// set EJS as templating engine
app.set('view engine', 'ejs');

//Tell express where to find templates
app.set('views', path.join(__dirname, 'src/views'));


// 'app.get()' allows us to handle GET requests
app.get('/', (req, res) => {
    const title = 'Home';
    res.render('home', { title });
});

app.get('/organizations', (req, res) => {
    const title = 'Organizations';
    res.render('organizations', { title });
});

app.get('/projects', (req, res) => {
    const title = 'Projects';
    res.render('projects', { title });
});

// 'app.listen()' allows our  application to listen for incoming requests
// starts the server
app.listen(PORT, () => {
    console.log(`Server is running at http://127.0.0.1:${PORT}`);
    console.log(`Environment: ${NODE_ENV}`);
});
