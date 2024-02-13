import { getEffectiveConstraintOfTypeParameter } from "typescript";
import Button from "./Button";
import { userEvent, within } from "@storybook/test";

export default {
  title: "components/Buttons",
  component: Button,
  args: {
    children: "Button",
  },
};

const Template = (args) => <Button {...args} />;

export const Primary = Template.bind({});

export const Secondary = Template.bind({});
Secondary.args = {
  type: "secondary",
};

export const Teatiary = Template.bind({});
Secondary.args = {
  type: "teatiary",
};
