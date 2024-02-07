


export const loader = async ({ params }) => {
    
  
    const post = await clientSupaBase.from('saludos').select( ).eq("id", 1 );
  
   console.log(post)
    return { post };
  };




export default function readUniqueId() {
  return (
    <div>
      
    </div>
  )
}
