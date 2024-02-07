import { createClient } from "@supabase/supabase-js";

export const clientSupaBase = createClient(
  "https://uyqoviyiatqlhatppoju.supabase.co",

  "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InV5cW92aXlpYXRxbGhhdHBwb2p1Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDcxNzMyMTMsImV4cCI6MjAyMjc0OTIxM30.XVUWqUVUkjsuYIftpquY4nQkbLw0MwsXZVmW35DOt20"
);

// Autentica con un usuario y contraseña
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
