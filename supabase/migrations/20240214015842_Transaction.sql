CREATE TABLE Transaction
(
    id integer NOT NULL GENERATED ALWAYS AS IDENTITY (INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1),
   
    amount numeric NOT NULL,
    type text COLLATE pg_catalog."default"  NOT NULL,
    Wallet_id integer NOT NULL,
    status text COLLATE pg_catalog."default"  NOT NULL,
   
    CONSTRAINT  Transaction_pkey PRIMARY KEY (id),
    CONSTRAINT fk_Wallet FOREIGN KEY (Wallet_id) REFERENCES Wallet (id) ON DELETE CASCADE
);


-- Cambio de propietario de la tabla
ALTER TABLE public.Transaction OWNER TO postgres;

-- Concesión de permisos
GRANT ALL ON TABLE public.Transaction TO anon;
GRANT ALL ON TABLE public.Transaction TO authenticated;
GRANT ALL ON TABLE public.Transaction TO postgres;
GRANT ALL ON TABLE public.Transaction TO service_role;