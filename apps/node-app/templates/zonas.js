import baseTemplate from "./base.js";

const html = (zonas, routes) => `
<div>
  <header>
    <h2>Adminitración de Zonas</h2>
    <p>
      Lorem ipsum dolor sit amet consectetur adipisicing elit. Error quos
      eveniet qui, unde cumque, maiores, dolorum dolorem quo repudiandae iure
      alias doloremque consequatur labore est sed voluptas pariatur velit
      ratione.
    </p>
    <div>
      <button
        data-codigo="Auto generado"
        data-method="POST"
        data-action="${routes["create"]}"
        onclick="createEditAction(event)"
      >
        Agregar nuevo
      </button>
    </div>
  </header>
  ${
    zonas.length === 0
      ? `<article class="ups">
    <h1>🤥</h1>
    <h5>¿Ups?</h5>
    <p>
      Parece que no hay elementos de este tipo, porfavor
      <ins>cree algunos</ins> para poder mostrarlos en esta página
    </p>
  </article>`
      : `<table class="striped pico-background-zinc-50">
    <thead>
      <tr>
        <th>Código de la zona</th>
        <th>Nombre de la zona</th>
        <th>Acciones</th>
      </tr>
    </thead>
    <tbody>
      ${zonas
        .map((zona) => {
          return `
        <tr>
        <td>${zona[0]}</td>
        <td>${zona[1]}</td>
        <td style="display: flex; gap: 0.5rem">
          <div style="display: inline-block">
            <button
              class="contrast"
              data-codigo="${zona[0]}"
              data-nombre="${zona[1]}"
              data-action="${routes["edit"]}/${zona[0]}"
              data-method="POST"
              onclick="createEditAction(event)"
            >
              Editar
            </button>
          </div>
          <div style="display: inline-block">
            <button
              class="secondary"
              data-action="${routes["delete"]}/${zona[0]}"
              data-msg="${zona[1]}"
              onclick="deleteAction(event)"
            >
              Eliminar
            </button>
          </div>
        </td>
      </tr>
        `;
        })
        .join("")}
    </tbody>
  </table>`
  }
</div>
<div class="hidden">
  <form id="create-edit">
    <fieldset>
      <label>
        Código de la zona
        <input id="codigo_zona" name="codigo_zona" disabled required />
      </label>
      <label>
        Nombre de la zona
        <input
          type="text"
          id="nombre_zona"
          name="nombre_zona"
          placeholder="Ej. Sopocachi"
          required
        />
      </label>
    </fieldset>
  </form>
  <form id="delete">
    ¿Seguro que quieres eliminar la zona
    <b><span id="delete-msg"></span></b>? Esto eliminará todos los
    <b>barrios</b> y <b>calles</b> asociados a esta zona.
  </form>
</div>
<script defer>
  function createEditAction(event) {
    event.preventDefault();
    toggleModal();
    // get modal for remplace
    const modalBody = document.getElementById("modal-body");
    if (!modalBody) return;
    const template = document.getElementById("create-edit");
    if (!template) return;
    const action = event.currentTarget.dataset.action;
    const method = event.currentTarget.dataset.method ?? "GET";
    if (!action) return;
    // create clone of template
    const target = template.cloneNode(true);
    target.id = "form";
    target.action = action;
    target.method = method;
    modalBody.innerHTML = target.outerHTML;

    // get inputs of #form for remplace value
    const codigoInput = modalBody.querySelector("#codigo_zona");
    const nombreInput = modalBody.querySelector("#nombre_zona");
    if (!codigoInput || !nombreInput) return;

    // get dataset for remplace
    const codigo = event.currentTarget.dataset.codigo ?? "";
    const nombre = event.currentTarget.dataset.nombre ?? "";

    codigoInput.value = codigo;
    nombreInput.value = nombre;
  }

  function deleteAction(event) {
    event.preventDefault();
    toggleModal();
    const modalBody = document.getElementById("modal-body");
    if (!modalBody) return;
    const template = document.getElementById("delete");
    if (!template) return;
    const msgSlot = document.getElementById("delete-msg");
    if (!msgSlot) return;
    const action = event.currentTarget.dataset.action;
    const method = event.currentTarget.dataset.method ?? "GET";
    const msg = event.currentTarget.dataset.msg;
    if (!action) return;

    msgSlot.innerHTML = msg;
    const target = template.cloneNode(true);
    target.id = "form";
    target.action = action;
    target.method = method;
    modalBody.innerHTML = target.outerHTML;
  }
</script>
`;

function template(zonas) {
  const routes = {
    create: "/zonas/create",
    edit: "/zonas/edit",
    delete: "/zonas/delete",
  };
  return baseTemplate(html(zonas, routes));
}

export default template;
