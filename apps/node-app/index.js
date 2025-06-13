import http from "node:http";
import mysql from "mysql2/promise";
import inicioTemplate from "./templates/inicio.js";
import zonasTemplate from "./templates/zonas.js";

const hostname = "localhost";
const port = 3000;

const db = await mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "root",
  database: "lugares",
});

const server = http.createServer(async (req, res) => {
  const url = req.url;
  const method = req.method;

  console.log(`URL de la solicitud: ${url}`); // <-- Agrega esto
  console.log(`Método de la solicitud: ${method}`); // <-- Agrega esto

  if (url === "/favicon.ico") {
    res.writeHead(204, { "Content-Type": "image/x-icon" }); // Opcional: especificar el Content-Type, aunque 204 no tiene cuerpo
    res.end(); // No hay cuerpo de respuesta
    console.log("Solicitud de favicon.ico manejada con 204 No Content.");
    return; // Muy importante para detener el procesamiento
  }

  // -- INICIO
  if (url === "/" && method === "GET") {
    const [result] = await db.query(
      "SELECT (SELECT COUNT(*) FROM zona) AS zonas, (SELECT COUNT(*) FROM barrio) AS barrios, (SELECT COUNT(*) FROM calle) AS calles"
    );
    res.writeHead(200, {
      "content-type": "text/html",
    });
    return res.end(inicioTemplate(Object.values(result[0])));
  }

  //#region ZONAS
  if (url === "/zonas" && method === "GET") {
    const [result] = await db.query(
      "SELECT * FROM zona ORDER BY codigo_zona DESC"
    );

    res.writeHead(200, {
      "content-type": "text/html",
    });
    return res.end(zonasTemplate(result.map((item) => Object.values(item))));
  }

  // Delete Zona
  const deleteZonaUrl = url.match(
    /^\/zonas\/delete\/([a-zA-Z0-9_-]+)\/?(?:\?.*)?$/
  );
  if (deleteZonaUrl && method === "GET") {
    const id = deleteZonaUrl[1];
    console.log(id);
    await db.execute("DELETE FROM calle WHERE codigo_zona = ?", [id]);
    await db.execute("DELETE FROM barrio WHERE codigo_zona = ?", [id]);
    await db.execute("DELETE FROM zona WHERE codigo_zona = ?", [id]);
    await db.commit();
    res.writeHead(302, {
      location: "/zonas/",
    });
    return res.end(`${id}`);
  }

  //#region BARRIOS
  if (url === "/barrios" && method === "GET") {
    return res.end("Barrios");
  }

  //#region CALLES
  if (url === "/calles" && method === "GET") {
    return res.end("Calles");
  }

  res.writeHead(404, { "Content-Type": "text/html; charset=utf-8" });
  res.end(
    "<h1>404 Not Found</h1><p>La ruta solicitada no existe en este servidor.</p>"
  );
});

server.listen(port, hostname, () => {
  console.log(`Running server at http://${hostname}:${port}`);
});
