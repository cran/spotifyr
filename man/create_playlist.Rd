% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/playlists.R
\name{create_playlist}
\alias{create_playlist}
\title{Create Playlist for User}
\usage{
create_playlist(
  user_id,
  name,
  public = TRUE,
  collaborative = FALSE,
  description = NULL,
  authorization = get_spotify_authorization_code()
)
}
\arguments{
\item{user_id}{Required. The user's \href{https://developer.spotify.com/documentation/web-api/#spotify-uris-and-ids}{Spotify user ID}.}

\item{name}{Required. String containing the name for the new playlist, for example \code{"Your Coolest Playlist"}. This name does not need to be unique; a user may have several playlists with the same name.}

\item{public}{Optional. Boolean. Defaults to \code{TRUE}. If \code{TRUE} the playlist will be public. If \code{FALSE} it will be private. To be able to create private playlists, the user must have granted the \code{playlist-modify-private} \href{https://developer.spotify.com/documentation/general/guides/authorization-guide/#list-of-scopes}{scope}}

\item{collaborative}{Optional. Boolean. Defaults to \code{FALSE}. If \code{TRUE} the playlist will be collaborative. Note that to create a collaborative playlist you must also set \code{public} to \code{FALES}. To create collaborative playlists you must have granted \code{playlist-modify-private} and \code{playlist-modify-public} \href{https://developer.spotify.com/documentation/general/guides/authorization-guide/#list-of-scopes}{scopes}.}

\item{description}{Optional. String containing the playlist description as displayed in Spotify Clients and in the Web API.}

\item{authorization}{Required. A valid access token from the Spotify Accounts service. See the \href{https://developer.spotify.com/documentation/general/guides/authorization-guide/}{Web API authorization Guide} for more details. Defaults to \code{spotifyr::get_spotify_authorization_code()}. The access token must have been issued on behalf of the current user. \cr
Creating a public playlist for a user requires authorization of the \code{playlist-modify-public} scope; creating a private playlist requires the \code{playlist-modify-private} scope. See \href{https://developer.spotify.com/documentation/general/guides/authorization-guide/#list-of-scopes}{Using Scopes}.}
}
\value{
The response from the Spotify Web API on the \code{POST} request, with a meaningful
error message if the operation was not successful.
}
\description{
Create a playlist for a Spotify user.
The playlist will be empty until you add tracks.
}
\seealso{
Other playlist functions: 
\code{\link{add_tracks_to_playlist}()},
\code{\link{change_playlist_details}()},
\code{\link{check_users_following}()},
\code{\link{get_my_playlists}()},
\code{\link{get_playlist}()},
\code{\link{get_user_playlists}()},
\code{\link{remove_tracks_from_playlist}()},
\code{\link{tidy}()}
}
\concept{playlist functions}
