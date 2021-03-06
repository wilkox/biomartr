% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/getCDSSet.R
\name{getCDSSet}
\alias{getCDSSet}
\title{CDS Retrieval of multiple species}
\usage{
getCDSSet(db = "refseq", organisms, reference = TRUE,
  clean_retrieval = TRUE, gunzip = TRUE, path = "set_CDS")
}
\arguments{
\item{db}{a character string specifying the database from which the CDS
shall be retrieved:
\itemize{
\item \code{db = "refseq"}
\item \code{db = "genbank"}
\item \code{db = "ensembl"}
\item \code{db = "ensemblgenomes"}
}}

\item{organisms}{a character vector storing the names of the organisms than shall be retrieved.
There are three available options to characterize an organism:
\itemize{
\item by \code{scientific name}: e.g. \code{organism = "Homo sapiens"}
\item by \code{database specific accession identifier}: e.g. \code{organism = "GCF_000001405.37"} (= NCBI RefSeq identifier for \code{Homo sapiens})
\item by \code{taxonomic identifier from NCBI Taxonomy}: e.g. \code{organism = "9606"} (= taxid of \code{Homo sapiens})
}}

\item{reference}{a logical value indicating whether or not a CDS shall be downloaded if it isn't marked
in the database as either a reference CDS or a representative CDS.}

\item{clean_retrieval}{logical value indicating whether or not downloaded files shall be renamed for more convenient downstream data analysis.}

\item{gunzip}{a logical value indicating whether or not files should be unzipped.}

\item{path}{a character string specifying the location (a folder) in which
the corresponding CDSs shall be stored. Default is
\code{path} = \code{"set_CDS"}.}
}
\value{
File path to downloaded CDSs.
}
\description{
Main CDS retrieval function for a set of organism of interest.
By specifying the scientific names of the organisms of interest the corresponding fasta-files storing the CDS of the organisms of interest
will be downloaded and stored locally. CDS files can be retrieved from several databases.
}
\details{
Internally this function loads the the overview.txt file from NCBI:

 refseq: ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/

 genbank: ftp://ftp.ncbi.nlm.nih.gov/genomes/genbank/

and creates a directory 'set_CDSs' to store
the CDSs of interest as fasta files for future processing.
In case the corresponding fasta file already exists within the
'set_CDSs' folder and is accessible within the workspace,
no download process will be performed.
}
\examples{
\dontrun{
biomartr::getCDSSet("refseq", organisms = c("Arabidopsis thaliana", 
                                               "Arabidopsis lyrata", 
                                               "Capsella rubella"))
}

}
\seealso{
\code{\link{getGenomeSet}}, \code{\link{getProteomeSet}}, \code{\link{getCDS}},
\code{\link{getGFF}}, \code{\link{getRNA}}, \code{\link{meta.retrieval}},
\code{\link{read_cds}}
}
\author{
Hajk-Georg Drost
}
