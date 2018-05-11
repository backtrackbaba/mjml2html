# MJML to HTML Converter

## Pre-Requisites
---
- Ruby
- [MJML Compiler](https://mjml.io/documentation)

## Folder Structure
---
![](https://i.imgur.com/QbsvB98.png)


## Workflow
---
- Write all the MJML Code in src --> mjml
- Write the reusable components of the templates in the components folder
- Write all the final templates in the templates folder by using the elements present in the components folder
- Run the scripts from the folder root
- All the mjml files in the src/mjml/templates folder are compiled to HTML

## Demo Content
---
The Demo HTML file consists of three parts
- header.mjml
- body.mjml
- footer.mjml

All the three are reusable components being used in the files template folder