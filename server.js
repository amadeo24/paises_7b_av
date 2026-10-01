const express = require("express");
const mysql = require("mysql2");

const app = express();
const PORT = 3000;
app.use(express.json());
app.use(express.static("public"));
const db = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "",
    database: "paises_7B"
});
db.connect((err) => {
    if (err) {
        console.error("Error al conectar con MySQL:", err);
        return;
    }
root
    console.log("Conectado correctamente a MySQL");
});
app.get("/api/paises", (req, res) => {

    const sql = "SELECT * FROM paises";

    db.query(sql, (err, resultados) => {

    console.log("Conectado correctamente a MySQL");
});
app.get("/api/paises", (req, res) => {
        if (err) {
            console.error(err);

            return res.status(500).json({
                error: "Error al obtener los países"
            });
        }

        res.json(resultados);
    });
});
app.get("/api/paises/:id", (req, res) => {

    const id = req.params.id;

    const sql = "SELECT * FROM paises WHERE pais_id = ?";

    db.query(sql, [id], (err, resultados) => {

        if (err) {
            return res.status(500).json({
                error: "Error al obtener el país"
            });
        }

        if (resultados.length === 0) {
            return res.status(404).json({
                error: "País no encontrado"
            });
        }

        res.json(resultados[0]);
    });
});
app.post("/api/paises", (req, res) => {

    const { pais_descripcion } = req.body;

    if (!pais_descripcion) {
        return res.status(400).json({
            error: "La descripción es obligatoria"
        });
    }

    const sql = `
        INSERT INTO paises (pais_descripcion)
        VALUES (?)
    `;

    db.query(sql, [pais_descripcion], (err, resultado) => {

        if (err) {
            console.error(err);

            return res.status(500).json({
                error: "Error al crear el país"
            });
        }

        res.status(201).json({
            mensaje: "País creado correctamente",
            pais_id: resultado.insertId
        });
    });
});
app.put("/api/paises/:id", (req, res) => {

    const id = req.params.id;
    const { pais_descripcion } = req.body;

    if (!pais_descripcion) {
        return res.status(400).json({
            error: "La descripción es obligatoria"
        });
    }

    const sql = `
        UPDATE paises
        SET pais_descripcion = ?
        WHERE pais_id = ?
    `;

    db.query(sql, [pais_descripcion, id], (err, resultado) => {

        if (err) {
            return res.status(500).json({
                error: "Error al modificar el país"
            });
        }

        if (resultado.affectedRows === 0) {
            return res.status(404).json({
                error: "País no encontrado"
            });
        }

        res.json({
            mensaje: "País modificado correctamente"
        });
    });
});
app.delete("/api/paises/:id", (req, res) => {

    const id = req.params.id;

    const sql = "DELETE FROM paises WHERE pais_id = ?";

    db.query(sql, [id], (err, resultado) => {

        if (err) {
            console.error(err);

            return res.status(500).json({
                error: "No se puede eliminar el país"
            });
        }

        if (resultado.affectedRows === 0) {
            return res.status(404).json({
                error: "País no encontrado"
            });
        }

        res.json({
            mensaje: "País eliminado correctamente"
        });
    });
});
app.listen(PORT, () => {
    console.log(`Servidor funcionando en http://localhost:${PORT}`);
});
password: "Ciata"
