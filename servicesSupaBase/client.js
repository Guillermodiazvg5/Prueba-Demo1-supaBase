import { createClient } from "@supabase/supabase-js";




export const clientSupaBase = createClient(
  process.env.DATABASE_URL,

  process.env.SUPABASE_ANON_KEY
);

// Autentica con un usuario y contraseña credenciales usuario tabla saludos 
const email = "guillermodiazvg5@hotmail.com";
const password = "Gddv19922";

// Inicia sesión con las credenciales proporcionadas
const { user, session, error } = await clientSupaBase.auth.signInWithPassword({
  email,
  password,
});

if (error) {
  console.error("Error al iniciar sesión:", error.message);
} else {
  console.log("Inicio de sesión a Supabase  exitoso 🔑 ✅:", email);
}




