% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/save_slackr.R
\name{save_slackr}
\alias{save.slackr}
\alias{save_slackr}
\title{Save R objects to an RData file on \code{slack.com}}
\usage{
save_slackr(..., channels = "", file = "slackr",
  api_token = Sys.getenv("SLACK_API_TOKEN"))

save.slackr(..., channels = "", file = "slackr",
  api_token = Sys.getenv("SLACK_API_TOKEN"))
}
\arguments{
\item{...}{objects to store in the R data file}

\item{channels}{slack.com channels to save to (optional)}

\item{file}{filename (without extension) to use}

\item{api_token}{full API token}
}
\value{
\code{httr} response object from \code{POST} call
}
\description{
\code{save_slackr} enables you upload R objects (as an R data file)
to \code{slack.com} and (optionally) post them to one or more channels
(if \code{channels} is not empty).
}
\note{
You can pass in \code{add_user=TRUE} as part of the \code{...} parameters and the Slack API
      will post the message as your logged-in user account (this will override anything set in
      \code{username})
}
\examples{
\dontrun{
slackr_setup()
save_slackr(mtcars, channels="#slackr", file="mtcars")
}
}
\seealso{
\code{\link{slackr_setup}}, \code{\link{dev_slackr}}, \code{\link{slackr_upload}}
}

