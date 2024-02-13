// Replace your-framework with the name of your framework
import type { Meta, StoryObj } from '@storybook/react';

import { userEvent, waitFor, within } from '@storybook/testing-library';

import { expect } from '@storybook/jest';

import { Form } from './Form';

const meta: Meta<typeof Form> = {
    title: 'Example/Form',
  component: Form,
  argTypes: {
    onSubmit: { action: true },
  },
};

export default meta;
type Story = StoryObj<typeof Form>;

/*
 * See https://storybook.js.org/docs/writing-stories/play-function#working-with-the-canvas
 * to learn more about using the canvasElement to query the DOM
 */
