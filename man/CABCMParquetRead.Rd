% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/CABCMParquetRead.R
\name{CABCMParquetRead}
\alias{CABCMParquetRead}
\title{Read and Combine Parquet Files into a Single Data Frame}
\usage{
CABCMParquetRead(
  sub = "cabcm",
  bucket = "tnc-dangermond",
  prefix = "water_balance/v2/"
)
}
\arguments{
\item{sub}{A character string specifying the subfolder within the base folder to look for Parquet files. Default is "cabcm".}

\item{bucket}{A string representing the S3 bucket name.}

\item{prefix}{A string representing the prefix (path) within the S3 bucket where the Parquet files are stored.}
}
\value{
A data frame containing the combined data from all Parquet files in the specified subfolder. Each row in the combined data frame has an additional column named `file` indicating the source file of the data.
}
\description{
This function reads all Parquet files from a specified S3 bucket and combines them into a single data frame.
}
\details{
The `CABCMParquetRead` function performs the following steps:
\itemize{
  \item Lists all Parquet files in the specified subfolder within the base folder `"/Users/wamclean/Desktop/Lynker/tnc_hf/water_balance/"`.
  \item Reads each Parquet file into a data frame and stores them in a list.
  \item Combines all data frames in the list into a single data frame with an additional column `file` indicating the file from which each row was read.
}
}
\examples{
# Read and combine all Parquet files from the "cabcm" subfolder
new_cabcm_data <- CABCMParquetRead()

# Read and combine all Parquet files from a different subfolder
other_data <- CABCMParquetRead(sub = "another_subfolder")
}
