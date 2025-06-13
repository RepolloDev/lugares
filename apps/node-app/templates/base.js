const html = (slot, routes) => `
<!DOCTYPE html>
<html data-theme="light">
  <head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <title>Administracion de lugares</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link
      rel="stylesheet"
      href="https://fonts.googleapis.com/css2?family=Pacifico&display=swap"
    />
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/@picocss/pico@2/css/pico.lime.min.css"
    />
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/@picocss/pico@2/css/pico.colors.min.css"
    />
    <style>
    .box {
  display: grid;
  grid-template-columns: 0.3fr 1fr;
  min-height: 100dvh;
}

.menu,
.content {
  padding: 2rem;
}

.menu {
  display: flex;
  flex-direction: column;
  align-items: center;
  height: 100dvh;
  position: sticky;
  top: 0;

  .title {
    font-family: "Pacifico", cursive;
  }

  .nav {
    display: flex;
    flex-direction: column;
    margin: auto 0;
    width: 100%;
  }
}

table {
  width: 100%;
  tr {
    display: flex;
    justify-content: center;

    td,
    th {
      width: 100%;
      display: flex;
      justify-content: center;
      text-align: center;
    }
  }
}

.content header {
  margin-bottom: 4rem;
}

#modal footer button {
  width: auto !important;
}

.ups {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  width: 100%;
}

.counters {
  display: grid;
  grid-template-columns: repeat(3, 1fr);
  gap: 2rem;

  h3,
  p {
    text-align: center;
  }

  p {
    font-size: 6rem;
  }

  footer a {
    width: 100%;
  }
}
.hidden {
    display: none;
}
    </style>
    <script
      defer
    >
const isOpenClass = "modal-is-open";
const openingClass = "modal-is-opening";
const closingClass = "modal-is-closing";
const scrollbarWidthCssVar = "--pico-scrollbar-width";
const animationDuration = 400; // ms
let visibleModal = null;
const toggleModal = () => {
  const modal = document.getElementById("modal");
  if (!modal) return;
  modal && (modal.open ? closeModal(modal) : openModal(modal));
};
const getModalBody = () => {
  return document.getElementById("modal")
}
const openModal = (modal) => {
  const { documentElement: html } = document;
  const scrollbarWidth = getScrollbarWidth();
  if (scrollbarWidth) {
    html.style.setProperty(scrollbarWidthCssVar, \`\${scrollbarWidth}px\`);
  }
  html.classList.add(isOpenClass, openingClass);
  setTimeout(() => {
    visibleModal = modal;
    html.classList.remove(openingClass);
  }, animationDuration);
  modal.showModal();
};
const closeModal = (modal) => {
  visibleModal = null;
  const { documentElement: html } = document;
  html.classList.add(closingClass);
  setTimeout(() => {
    html.classList.remove(closingClass, isOpenClass);
    html.style.removeProperty(scrollbarWidthCssVar);
    modal.close();
  }, animationDuration);
};
document.addEventListener("click", (event) => {
  if (visibleModal === null) return;
  const modalContent = visibleModal.querySelector("article");
  const isClickInside = modalContent.contains(event.target);
  !isClickInside && closeModal(visibleModal);
});
document.addEventListener("keydown", (event) => {
  if (event.key === "Escape" && visibleModal) {
    closeModal(visibleModal);
  }
});
const getScrollbarWidth = () => {
  const scrollbarWidth =
    window.innerWidth - document.documentElement.clientWidth;
  return scrollbarWidth;
};
const isScrollbarVisible = () => {
  return document.body.scrollHeight > screen.height;
};
    </script>
  </head>
  <body>
    <div class="box">
      <div class="menu pico-background-zinc-900">
        <h1 class="title pico-color-zinc-50">🗺️ Lugares</h1>
        <nav class="nav">
          <a role="button" class="item contrast" href="${routes["inicio"]}"
            >Inicio</a
          >
          <a role="button" class="item contrast" href="${routes["zonas"]}"
            >Zonas</a
          >
          <a role="button" class="item contrast" href="${routes["barrios"]}"
            >Barrios</a
          >
          <a role="button" class="item contrast" href="${routes["calles"]}"
            >Calles</a
          >
        </nav>
      </div>
      <div class="content pico-background-zinc-50">
        ${slot}
      </div>
    </div>
    <dialog id="modal">
      <article>
        <header>
          <button
            aria-label="Close"
            rel="prev"
            onclick="toggleModal()"
          ></button>
          <h6>🍱 Modal</h6>
        </header>
        <div id="modal-body"></div>
        <footer>
          <button
            id="modal-cancel"
            role="button"
            class="secondary"
            onclick="toggleModal()"
          >
            Cancelar</button
          ><button type="submit" form="form" id="modal-confirm" autofocus>
            Confirmar
          </button>
        </footer>
      </article>
    </dialog>
  </body>
</html>
`;

function template(slot) {
  const routes = {
    inicio: "/",
    zonas: "/zonas",
    barrios: "/barrios",
    calles: "/calles",
  };
  return html(slot, routes);
}

export default template;
