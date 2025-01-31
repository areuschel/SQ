\name{GrrgOG}
\alias{GrrgOG}
\title{The Greg OG Soundboard Package}
\description{
A collection of Dr. Greg Matthews PhDizzle's iconic noises, reactions,
and occasional statistics references.

This package allows users to play various sound clips with simple function calls.

Code is modeled after \code{skrrrahh} from the BRRR package (https://github.com/brooke-watson/BRRR/blob/master/R/skrrrahh.R).

}
\details{
Includes the following functions:
\itemize{
  \item \code{play_OG()} - Plays a classic Greg OG phrase.
  \item \code{play_stats()} - Plays a statistics-adjacent phrase.
  \item \code{play_Gmisc()} - Plays a miscellaneous sound.

Arguments:
\arguments{
  \item{index}{Numeric. The index of the audio file to play.}
}

Returns:
\value{
  Plays an audio file but returns \code{NULL}.
}
}


}
\examples{
# Plays the first audio file from the OG_phrases audio list.
play_OG(1)

# Plays the fifth audio file from the some_stats audio list.
play_stats(5)

# Plays the tenth audio file from the Gmisc audio list.
play_Gmisc(10)
}

