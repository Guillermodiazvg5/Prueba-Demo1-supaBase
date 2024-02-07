import { Form, json, redirect, useRouteError } from "@remix-run/react";

import { useNavigation, useActionData } from "@remix-run/react";

import { clientSupaBase } from "../servicesSupaBase/client";

const badRequest = (data) => {
  return json(data, { status: 400 });
};

export const action = async ({ request }) => {
  const form = await request.formData();

  const saludo = form.get("saludo");
  const usuario = form.get("usuario");

  const result = await clientSupaBase
    .from("saludos")
    .insert([{ saludo: saludo, autor: usuario }]);

  console.log("primer redireccionamiiento ");
  console.log(result);

  console.log(result);

  if (result.error) {
    console.error("Error al insertar datos:", result.error.message);
  } else {
    console.log("Datos insertados correctamente:", result.data);
  }

  const fieldErrors = {
    saludo:
      saludo.length < 9 ? "El saludo debe contener mas de 9 caracteres " : null,
    usuario:
      usuario.length < 4
        ? "El nombre de usuario debe contener mas de 4 caracteres "
        : null,
  };

  const hasErros = Object.values(fieldErrors).some(Boolean);

  const fields = { saludo, usuario };

  if (hasErros) {
    return badRequest({ fieldErrors, fields });
  }

  console.log({ fields });
  console.log({ saludo });
  console.log({ usuario });

  console.log("valor del redirecionaminro ");
  console.log(result);

  return redirect(`/${result.id} `);
};

export function ErrorBoundary() {
  const error = useRouteError();

  return (
    <div>
      <strong>😢 Algo salió mal: </strong>
      <span style={{ color: "red" }}> {error.message} </span>
    </div>
  );
}

export default function Login() {
  const { state } = useNavigation();

  const actionData = useActionData();

  const { fieldErrors } = actionData ?? {};
  const { saludo: titleError, usuario: usuarioError } = fieldErrors ?? {};

  const isSubmitting = state === "submitting";

  return (
    <>
      <h2>Crea un Saludo 🤠 !!! </h2>
      <Form method="POST" disabled={isSubmitting}>
        <div>
          <label htmlFor="saludo"> Saludo : </label>
          <p>
            <input
              placeholder="Inserta tu saludo favorito "
              type="text"
              id="saludo"
              name="saludo"
            />
          </p>

          {titleError && <small style={{ color: "red" }}>{titleError}</small>}
        </div>

        <br></br>
        <div>
          <label htmlFor="usuario"> Usuario : </label>
          <p>
            <input
              placeholder="Inserta tu nombre "
              type="text"
              id="usuario"
              name="usuario"
            />
          </p>

          {titleError && <small style={{ color: "red" }}>{usuarioError}</small>}
        </div>

        <br></br>

        <button disabled={isSubmitting} type="submit">
          {isSubmitting ? "Espera ..." : "Enviar"}
        </button>
      </Form>
    </>
  );
}
