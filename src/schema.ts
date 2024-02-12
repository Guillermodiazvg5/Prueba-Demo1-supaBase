import { pgTable, serial, text, varchar } from "drizzle-orm/pg-core";


export const saludos = pgTable('saludos', {
  id: serial('id').primaryKey(),
  saludo: text('saludo'),
  autor: text('autor'),
 
});


export const siembra = pgTable('siembra', {
  id: serial('id').primaryKey(),
  ciudad: text('ciudad'),
  codigo: text('codigo'),
  tipodedato: text('tipodedato'),
 
});

export const User = pgTable('User', {
    id: serial('id').primaryKey(),
    name: varchar('name').notNull(),
    email: varchar('email').notNull().unique(),
    phone: varchar('phone'),
    profile_picture: text('profile_picture'),
    descripcion: text('descripcion'),
    cedula: varchar('cedula').notNull().unique(),
});


