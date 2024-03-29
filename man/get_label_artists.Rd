% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/search.R
\name{get_label_artists}
\alias{get_label_artists}
\title{Search for artists by label}
\usage{
get_label_artists(
  label = character(),
  market = NULL,
  limit = 20,
  offset = 0,
  authorization = get_spotify_access_token()
)
}
\arguments{
\item{label}{Required. \cr
String of label name to search for \cr
For example: \code{label = "brainfeeder"}.}

\item{market}{Optional. \cr
An ISO 3166-1 alpha-2 country code or the string \code{"from_token"}. \cr
If a country code is specified, only artists with content that is playable in that market is returned. \cr
Note: \cr
- If market is set to \code{"from_token"}, and a valid access token is specified in the request header, only content playable in the country associated with the user account is returned. \cr
- Users can view the country that is associated with their account in the account settings. A user must grant access to the user-read-private scope prior to when the access token is issued.}

\item{limit}{Optional. \cr
Maximum number of results to return. \cr
Default: 20 \cr
Minimum: 1 \cr
Maximum: 50}

\item{offset}{Optional. \cr
The index of the first result to return. \cr
Default: 0 (the first result). \cr
Maximum offset (including limit): 10,000. \cr
Use with limit to get the next page of search results.}

\item{authorization}{Required.
A valid access token from the Spotify Accounts service.
See the \href{https://developer.spotify.com/documentation/general/guides/authorization-guide/}{Web API authorization guide} for more details. Defaults to \code{spotifyr::get_spotify_access_token()}}
}
\value{
A data frame with the label information of the artists.
}
\description{
Get Spotify Catalog information about artists belonging to a given label.
}
\examples{
\dontrun{
get_label_artists('brainfeeder')
}
}
\concept{label functions}
