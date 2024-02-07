import type { MetaFunction } from "@remix-run/node";
import { Link, useLoaderData } from "@remix-run/react";

import { clientSupaBase } from "../servicesSupaBase/client";

export const meta: MetaFunction = () => {
  return [
    { title: "New Remix App" },
    { name: "description", content: "Welcome to Remix!" },
  ];
};

export const loader = async () => {
  const posts = await clientSupaBase.from("saludos").select("*");

  return { posts };
};

export default function Index() {
  const { posts } = useLoaderData();

  console.log("lista de saludos ");
  console.log(posts);

  return (
    <div style={{ fontFamily: "system-ui, sans-serif", lineHeight: "1.8" }}>
      <h1>Welcome to Remix</h1>

      <h1>Hello World ¡</h1>

      <ul>
        <li>
          <a
            target="_blank"
            href="https://remix.run/tutorials/blog"
            rel="noreferrer"
          >
            15m Quickstart Blog Tutorial
          </a>
        </li>
        <li>
          <a
            target="_blank"
            href="https://remix.run/tutorials/jokes"
            rel="noreferrer"
          >
            Deep Dive Jokes App Tutorial
          </a>
        </li>
        <li>
          <a target="_blank" href="https://remix.run/docs" rel="noreferrer">
            Remix Docs
          </a>
        </li>
        <li>
          <Link to={"/Login"}> Login </Link>
        </li>
      </ul>

      <h1>Saludos creados </h1>

      <h5>{posts.post}</h5>

      {posts.data.map((post) => (
        <div key={post.id}>
          <h2>{post.saludo}</h2>
          <p>{post.autor}</p>
        </div>
      ))}

      
    </div>
  );
}
