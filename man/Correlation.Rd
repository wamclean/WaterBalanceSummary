% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Correlation.R
\name{Correlation}
\alias{Correlation}
\title{Calculate Correlation Between Well Water Level Change and Soil Moisture Storage Change}
\usage{
Correlation(x, y = monthly_basin_average)
}
\arguments{
\item{x}{A data frame containing storage change data with columns including `var`, `value`, `date`, and `divide_id`. Defaults to `cabcm_delta_str` or `terra_delta_str` for different datasets.}

\item{y}{A data frame with monthly averages of well water level changes, typically produced by the `CleanWells` function. Defaults to `monthly_basin_average`.}
}
\value{
A data frame with the following columns:
\describe{
  \item{Divide}{The divide ID.}
  \item{date}{The date of the observation.}
  \item{mean_change_mm}{The mean change in well water level in millimeters.}
  \item{deltaSTR}{The change in storage from the storage change data.}
  \item{correlation}{The correlation coefficient between `mean_change_mm` and `deltaSTR`.}
  \item{plot_titles}{Titles for plots including divide ID and correlation coefficient.}
}
}
\description{
This function calculates the correlation between well water level changes and storage changes (e.g., from cabcm_ or terra_delta_str) for different basins. It joins the data, computes correlation statistics, and prepares the data for further analysis.
}
