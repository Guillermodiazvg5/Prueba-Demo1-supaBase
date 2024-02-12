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




// drizzel



{/** */}
import { drizzle } from "drizzle-orm/postgres-js";
import { migrate } from "drizzle-orm/postgres-js/migrator";
 
import postgres from "postgres";


// cadena de conexion 

const connectionString = 'postgres://postgres.uyqoviyiatqlhatppoju:Gddv1992215041992@aws-0-us-west-1.pooler.supabase.com:5432/postgres'



const sql = postgres(connectionString, { max: 1 })
const db = drizzle(sql);


// aplicar migraciones desde la ruta correspondiente

await migrate(db, { migrationsFolder: "./supabase/migrations" });

console.log("Ejecutando migraciones hacia instancia Web supaBase 🔃✅")

await sql.end();  

