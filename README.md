# modifierToArab

Welcome to the modifierToArab wiki!

![](https://w7.pngwing.com/pngs/195/9/png-transparent-computer-icons-arabic-arab-world-arabs-rarbic-font-miscellaneous-english-text.png)

To modify the Arab text in Defold
Add a file, to your project.

[https://defold.com/manuals/libraries/#setting-up-library-dependencies](setting up library dependencies)

And get the file inside your project

`local  modifier = require "modifier.modifier"`

and get the node of text and text

`textNode = gui.get_node("arabtext")`
`arabText = gui.get_text(textNode)`

![](https://i.ibb.co/R0bYfc1/Screenshot-2020-10-02-173807.png)

Create a variable and give it the value of the text within the function modifierToArab().

`modifierText = modifier.modifierToArab(arabText)`

and set the value of modifierText to the same node

`gui.set_text(textNode, modifierText) `
