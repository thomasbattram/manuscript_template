## ---- load-data --------------------------------

# results path
dat_path <- "report_data/"

# auc data
study_dat <- read_tsv(paste0(dat_path, "example_study_dat.txt"))

# Function for numbers in rmarkdown
comma <- function(x) format(x, digits = 2, big.mark = ",")

## ---- study-data-setup --------------------------------

# modifying for fun
study_dat2 <- study_dat %>%
	mutate(n_with_data = n - 1000)

## ---- study-data-tab --------------------------------
kable(study_dat2, booktabs = TRUE, longtable = TRUE, caption = "A table caption")

## ---- readymade-plot-setup --------------------------------
plot_file <- paste0(dat_path, "figures/", "boring_plot.pdf")

## ---- a-figure-example --------------------------------
include_graphics(plot_file)

## ---- other-plot-setup --------------------------------

set.seed(2)
df <- data.frame(id = 1:1000, 
				 normal_phenotype = rnorm(1000))

p <- ggplot(df, aes(x = normal_phenotype)) +
	geom_histogram(fill = "blue") +
	theme_bw()

## ---- another-plot --------------------------------
print(p)

