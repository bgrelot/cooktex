# cooktex
A repository to create a collaborative cookbook using LaTeX.

## Getting started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

You need to install the following packages:

```
texlive-base
texlive-generic-extra
texlive-generic-recommended
texlive-latex-extra
texlive-fonts-recommended
texlive-fonts-extra
```

## How it's built

The repository uses 3 root folders ("mixtures" for drinks and liquid stuff, "sel" for salted recipes, "sucre" for sweet recipes). These root folders can contain any kind of sub-folders as long as the organization makes sense for a normal human being. A script (scan.sh) will then browse the root folders and build the include.tex file, which will basically be a merge of all the recipes.

The whole compilation can be triggered by executing:

```
make
```

It will then build a PDF file with all the recipes from the repository.

## Recipe format

To add a recipe into the book, you just need to create a file in the relevant sub-folder, named like below:

```
recipe_title.tex
```

The first line from the file will be the title of the recipe.

```
\recette{Cake aux lardons}
```

You can then list ingredients and actions. An ingredient doesn't have to be followed by an action.

```
\ingredient{200 g. de farine}
\ingredient{4 oeufs} Ajouter un à un les oeufs à la farine
```

Additional keywords can be used:

```
\sidedish{Used to describe how to cook the whole thing.}
\hint{Used to add hints, as the idea is to test and improve recipes.}

```

The last line of the file will tell the compiler to close the recipe.

```
\end{recipe}
```
