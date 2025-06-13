from flask import Flask, render_template, redirect, url_for, request, jsonify
from mysql.connector import connect

app = Flask(__name__)
db = connect(
    host="localhost",
    port="3306",
    user="user",
    password="pass",
    database="lugares",
)


@app.route("/")
def inicio():
    cursor = db.cursor()
    cursor.execute(
        "SELECT (SELECT COUNT(*) FROM zona) AS zonas, (SELECT COUNT(*) FROM barrio) AS barrios, (SELECT COUNT(*) FROM calle) AS calles"
    )
    result = cursor.fetchall()
    return render_template("inicio.html", counters=result[0])


# -- Zonas


@app.route("/zonas")
def zonas():
    cursor = db.cursor()
    cursor.execute("SELECT * FROM zona ORDER BY codigo_zona DESC")
    zonasList = cursor.fetchall()
    return render_template("zonas.html", zonas=zonasList)


@app.route("/zonas/delete/<id>")
def delete_zona(id):
    cursor = db.cursor()
    cursor.execute("DELETE FROM calle WHERE codigo_zona = %s", [id])
    cursor.execute("DELETE FROM barrio WHERE codigo_zona = %s", [id])
    cursor.execute("DELETE FROM zona WHERE codigo_zona = %s", [id])
    db.commit()
    cursor.close()
    return redirect(url_for("zonas"))


@app.route("/zonas/edit/<id>", methods=["POST"])
def edit_zona(id):
    if request.method == "POST":
        nombre_zona = request.form.get("nombre_zona")
        cursor = db.cursor()
        cursor.execute(
            "UPDATE zona SET nombre_zona = %s WHERE codigo_zona = %s",
            [nombre_zona, id],
        )
        db.commit()
        cursor.close()

    return redirect(url_for("zonas"))


@app.route("/zonas/create/", methods=["POST"])
def create_zona():
    if request.method == "POST":
        nombre_zona = request.form.get("nombre_zona")
        cursor = db.cursor()
        cursor.execute(
            "INSERT INTO zona (nombre_zona) VALUES (%s)", [nombre_zona]
        )
        db.commit()
        cursor.close()
    return redirect(url_for("zonas"))


# -- Barrios


@app.route("/barrios")
def barrios():
    cursor = db.cursor()
    cursor.execute("SELECT * FROM zona")
    zonasList = cursor.fetchall()
    cursor.execute(
        "SELECT * FROM barrio b JOIN zona z ON b.codigo_zona = z.codigo_zona ORDER BY b.codigo_barrio DESC"
    )
    barriosList = cursor.fetchall()
    return render_template("barrios.html", zonas=zonasList, barrios=barriosList)


@app.route("/barrios/<zona>")
def barrios_zona(zona):
    cursor = db.cursor()
    cursor.execute("SELECT * FROM barrio WHERE codigo_zona = %s", [zona])
    result = cursor.fetchall()
    print("Hola mundo desde zonas")
    return jsonify(result)


@app.route("/barrios/delete/<id>")
def delete_barrio(id):
    cursor = db.cursor()
    cursor.execute("DELETE FROM calle WHERE codigo_barrio = %s", [id])
    cursor.execute("DELETE FROM barrio WHERE codigo_barrio = %s", [id])
    db.commit()
    cursor.close()
    return redirect(url_for("barrios"))


@app.route("/barrios/edit/<id>", methods=["POST"])
def edit_barrio(id):
    if request.method == "POST":
        nombre_barrio = request.form.get("nombre_barrio")
        codigo_zona = request.form.get("codigo_zona")
        cursor = db.cursor()
        cursor.execute(
            "UPDATE barrio SET nombre_barrio = %s, codigo_zona = %s WHERE codigo_barrio = %s",
            [nombre_barrio, codigo_zona, id],
        )
        db.commit()
        cursor.close()

    return redirect(url_for("barrios"))


@app.route("/barrios/create", methods=["POST"])
def create_barrio():
    if request.method == "POST":
        nombre_barrio = request.form.get("nombre_barrio")
        codigo_zona = request.form.get("codigo_zona")
        cursor = db.cursor()
        cursor.execute(
            "INSERT INTO barrio (nombre_barrio, codigo_zona) VALUES (%s, %s)",
            [nombre_barrio, codigo_zona],
        )
        db.commit()
        cursor.close()
    return redirect(url_for("barrios"))


# -- Calles


@app.route("/calles")
def calles():
    cursor = db.cursor()
    cursor.execute("SELECT * FROM zona")
    zonasList = cursor.fetchall()
    cursor.execute("SELECT * FROM barrio")
    barriosList = cursor.fetchall()
    cursor.execute(
        "SELECT * FROM calle c JOIN barrio b ON b.codigo_barrio = c.codigo_barrio JOIN zona z ON z.codigo_zona = c.codigo_zona ORDER BY c.codigo_calle DESC"
    )
    callesList = cursor.fetchall()
    return render_template(
        "calles.html", calles=callesList, zonas=zonasList, barrios=barriosList
    )


@app.route("/calles/delete/<id>")
def delete_calle(id):
    cursor = db.cursor()
    cursor.execute("DELETE FROM calle WHERE codigo_calle = %s", [id])
    db.commit()
    cursor.close()
    return redirect(url_for("calles"))


@app.route("/calles/edit/<id>", methods=["POST"])
def edit_calle(id):
    if request.method == "POST":
        nombre_calle = request.form.get("nombre_calle")
        codigo_zona = request.form.get("codigo_zona")
        codigo_barrio = request.form.get("codigo_barrio")
        cursor = db.cursor()
        cursor.execute(
            "UPDATE calle SET nombre_calle = %s, codigo_zona = %s, codigo_barrio = %s WHERE codigo_calle = %s",
            [nombre_calle, codigo_zona, codigo_barrio, id],
        )
        db.commit()
        cursor.close()

    return redirect(url_for("calles"))


@app.route("/calles/create", methods=["POST"])
def create_calle():
    if request.method == "POST":
        nombre_calle = request.form.get("nombre_calle")
        codigo_zona = request.form.get("codigo_zona")
        codigo_barrio = request.form.get("codigo_barrio")
        cursor = db.cursor()
        cursor.execute(
            "INSERT INTO calle (nombre_calle, codigo_zona, codigo_barrio) VALUES (%s, %s, %s)",
            [nombre_calle, codigo_zona, codigo_barrio],
        )
        db.commit()
        cursor.close()
    return redirect(url_for("calles"))
