import baseTemplate from "./base.js";

const html = (counters, routes) => `
<div>
  <header>
    <h2>Administración de lugares</h2>
    <p>
      Lorem ipsum dolor sit amet consectetur adipisicing elit. Saepe perferendis
      rem sit. Eligendi sequi voluptas esse dolorum alias, voluptatum rem quod
      qui exercitationem molestias optio amet laboriosam at ipsum harum.
    </p>
  </header>
  <div class="counters">
    <article class="item">
      <header>
        <h3>Número de zonas</h3>
      </header>
      <p>${counters[0]}</p>
      <footer>
        <a href="${routes["zonas"]}" role="button">Administrar</a>
      </footer>
    </article>
    <article class="item">
      <header>
        <h3>Número de barrios</h3>
      </header>
      <p>${counters[1]}</p>
      <footer>
        <a href="${routes["barrios"]}" role="button">Administrar</a>
      </footer>
    </article>
    <article class="item">
      <header>
        <h3>Número de calles</h3>
      </header>
      <p>${counters[2]}</p>
      <footer>
        <a href="${routes["calles"]}" role="button">Administrar</a>
      </footer>
    </article>
  </div>
</div>
`;

function template(counters) {
  const routes = {
    zonas: "/zonas",
    barrios: "/barrios",
    calles: "/calles",
  };
  return baseTemplate(html(counters, routes));
}

export default template;
