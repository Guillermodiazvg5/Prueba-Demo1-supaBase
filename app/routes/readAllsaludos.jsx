export const loader = async ({ params }) => {
  const post = await clientSupaBase.from("saludos").select("*");

  console.log(post);
  return { post };
};

export default function readAllsaludos() {
  return <div></div>;
}
