# A simple bookdown template for manuscripts

This is a very simple template for writing manuscripts in [Rmarkdown](https://rmarkdown.rstudio.com/) using [bookdown](https://bookdown.org/yihui/bookdown/) notation. 

## Teeting the directory
- Clone directory and test it works by running `bash make_paper.sh "paper" "TRUE"`. You should get `paper.pdf` and `supplementary_material.pdf` as outputs.

Once you've tested it works, you can remove `.git` by running `rm -rf .git` and just add this directory and any changes to the paper etc. to the project git space.

## Writing the paper
- Put all ready-made figures in `report_data/figures/`
- Put all data in `report_data/`
- Write the paper in `paper.Rmd`
- Put all references in `references.bib`

## Customising things
- Can customise various things using the YAML header e.g. the output format, see bookdown guide (link above)
- Use another citation style by changing `apa.csl` out for another citation file of the same format and editing the YAML header as appropriate
- Can change the name of the document, then when you run `bash make_paper.sh` just include the new name of the document as the first argument (e.g. `bash make_paper.sh "my-manuscript"`).

## To-do 
- Move output things to `_output.yml` and add some more customisation to it
- Find a way to allow referencing the supplementary material from the main paper