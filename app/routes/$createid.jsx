import React from "react";

import { useLoaderData, useParams , Link } from "@remix-run/react";

import { clientSupaBase } from "../servicesSupaBase/client";

export const loader = async ({ params }) => {
    
  
  const post = await clientSupaBase.from('saludos').select( );
console.log("redireccionamiento")
 console.log(post)
 
  return { post };
};

export default function SinglePost() {
  const { post } = useLoaderData();

  return (
    <div>

      <>

      <h1>Saludo creado </h1>


     


    
      <Link to={'/'}> <h1>Continua</h1>  </Link>

</>

    </div>
  );
}
