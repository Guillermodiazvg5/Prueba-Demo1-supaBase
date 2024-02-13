// Form.tsx
import React from 'react';

import './form.css';


export interface FormProps {
  // Define las propiedades necesarias para tu formulario
}

export const Form: React.FC<FormProps> = () => {
  const handleSubmit = (e: React.FormEvent<HTMLFormElement>) => {
    e.preventDefault();
    // Lógica para manejar el envío del formulario
  };

  return (
    <form onSubmit={handleSubmit}>
      <div>
        <label htmlFor="firstName">Nombre:</label>
        <input type="text" id="firstName" name="firstName" />
      </div>
      <div>
        <label htmlFor="lastName">Apellido:</label>
        <input type="text" id="lastName" name="lastName" />
      </div>
      <button type="submit">Enviar</button>
    </form>
  );
};
