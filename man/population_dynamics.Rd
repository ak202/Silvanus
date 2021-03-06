% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/population_dynamics.R
\name{population_dynamics}
\alias{population_dynamics}
\title{Individual-level death and reproduction according to age-specific, food-limited fertility and mortality rates}
\usage{
population_dynamics(x, food_ratio_c = 1)
}
\arguments{
\item{households}{Tibble of household agents containg nested tibbles of individual agents}
}
\description{
This function allows household agents to add or remove individual
agents via birth and death. The tibble of households is first unnested
to access the tibble of individuals. Then, the probability of
giving birth is calculated for each individual from its age and
the food ratio of its household. Finally, the probability is
in a random bernoulli trial to determine how many babies are
actually born to each household each year. Babies are added to
the household by adding rows to the individual's tibble with Age = 1.
}
\examples{
population_dynamics(individuals, food_ratio = 1)
}
