#### Adri's First R Package
options(repos = c(CRAN = "https://cran.r-project.org"))


### requirements ###
#
#install.packages("devtools")
#install.packages("roxygen2")
#install.packages("audio")
library(devtools)
library(roxygen2)
library(audio)



### roxygen2 ###
#
#' @title The Greg OG Soundboard Package
#' @description
#' A collection of Dr. Greg Matthews PhDizzle's iconic noises, reactions,
#' and occasional statistics references.
#' This package allows users to play various sound clips with simple function calls.
#'
#' Key functions in this package include:
#' \itemize{
#'   \item \code{\link{play_OG}}: Plays a sound from the "OG phrases" collection.
#'   \item \code{\link{play_stats}}: Plays a sound from the "Some statistics" collection.
#'   \item \code{\link{play_Gmisc}}: Plays a sound from the "Reactionary noises" collection.
#' }
#'
#' Code is modeled after \code{skrrrahh} from the BRRR package (\link{https://github.com/brooke-watson/BRRR/blob/master/R/skrrrahh.R}).
#'
#' @examples
#' # Play the first sound in the OG phrases collection
#' play_OG(1)
#'
#' # Play the second sound in the stats collection
#' play_stats(2)
#'
#' # Play a random reactionary noise
#' play_Gmisc(10)
#' @name GrrgOG
NULL

#' Play an OG Sound Clip
#'
#' This function plays a sound clip from the "OG phrases" list.
#'
#' @param index Numeric. The index of the audio file to play.
#' @return NULL (plays an audio file).
#' @examples
#' play_OG(1)  # Plays the first OG phrase.
#'
#' @importFrom audio play
#' @importFrom audio load.wave
#' @export
play_OG <- function(index) {
  audio_files <- OG_phrases()

  if (index < 1 || index > length(audio_files)) {
    stop("Invalid index. Choose a number between 1 and ", length(audio_files), ".")
  }

  audio_file <- system.file("extdata", audio_files[index], package = "GrrgOG")

  if (!file.exists(audio_file) || audio_file == "") {
    stop("Audio file not found: ", audio_files[index])
  }

  tryCatch({
    audio::play(audio::load.wave(audio_file))
  }, error = function(e) {
    warning("Could not play the audio file: ", e$message)
  })
}

#' Play a Statistics-Related Sound Clip
#'
#' This function plays a sound clip from the "some statistics" list.
#'
#' @param index Numeric. The index of the audio file to play.
#' @return NULL (plays an audio file).
#' @examples
#' play_stats(1)  # Plays the first statistics-related phrase.
#' @importFrom audio play
#' @importFrom audio load.wave
#' @export
play_stats <- function(index) {
  audio_files <- some_stats()

  if (index < 1 || index > length(audio_files)) {
    stop("Invalid index. Choose a number between 1 and ", length(audio_files), ".")
  }

  audio_file <- system.file("extdata", audio_files[index], package = "GrrgOG")

  if (!file.exists(audio_file) || audio_file == "") {
    stop("Audio file not found: ", audio_files[index])
  }

  tryCatch({
    audio::play(audio::load.wave(audio_file))
  }, error = function(e) {
    warning("Could not play the audio file: ", e$message)
  })
}

#' Play a Miscellaneous Sound Clip
#'
#' This function plays a sound clip from the "Gmisc" list.
#'
#' @param index Numeric. The index of the audio file to play.
#' @return NULL (plays an audio file).
#' @examples
#' play_Gmisc(1)  # Plays the first miscellaneous phrase.
#'
#' @importFrom audio play
#' @importFrom audio load.wave
#' @export
play_Gmisc <- function(index) {
  audio_files <- Gmisc()

  if (index < 1 || index > length(audio_files)) {
    stop("Invalid index. Choose a number between 1 and ", length(audio_files), ".")
  }

  audio_file <- system.file("extdata", audio_files[index], package = "GrrgOG")

  if (!file.exists(audio_file) || audio_file == "") {
    stop("Audio file not found: ", audio_files[index])
  }

  tryCatch({
    audio::play(audio::load.wave(audio_file))
  }, error = function(e) {
    warning("Could not play the audio file: ", e$message)
  })
}


### test code ###

# play_sample <- function() {
#   # path
#   audio_file <- system.file("extdata", "agh.wav", package = "GrrgOG")
#
#   # Check if the file exists
#   if (!file.exists(audio_file) || audio_file == "") {
#     stop("Audio file not found. Make sure 'agh.wav' is in the 'inst/extdata' folder.")
#   }
#
#   # Use 'audio' package to play the audio file
#   tryCatch({
#     audio::play(audio::load.wave(audio_file))
#   }, error = function(e) {
#     warning("Could not play the audio file: ", e$message)
#   })
# }

# Greg OG: The classics

OG_phrases <- function(){
  audios <- c(
    analogy <- "analogy.wav",
    answerIsIn <- "answerIsIn.wav",
    callOnYou <- "callOnYou.wav",
    crazy <- "crazy.wav",
    csNerd <- "csNerd.wav",
    dontDrop <- "dontDrop.wav",
    figureItOut <- "figureItOut.wav",
    genuinelyDontKnow <- "genuinelyDontKnow.wav",
    gradeExams <- "gradeExams.wav",
    holdOnToYour <- "holdOnToYour.wav",
    inMyHead <- "inMyHead.wav",
    inYourHeart2 <- "inYourHeart2.wav",
    levelsExcite <- "levelsExcite.wav",
    plsDontCome <- "plsDontCome.wav",
    quangStream <- "quangStream.wav",
    seltzer <- "seltzer.wav",
    sittingDown <- "sittingDown.wav",
    stopTalking <- "stopTalking.wav"
  )}


# Context Needed: Some statistics, mostly misinformation

some_stats <- function(){
  audios <- c(
    bestWayToLearn <- "bestWayToLearn.wav",
    dontThinkYouCan <- "dontThinkYouCan.wav",
    drunkMath <- "drunkMath.wav",
    genTrauma <- "genTrauma.wav",
    justMadeItUp <- "justMadeItUp.wav",
    kendallsTau <- "kendallsTau.wav",
    letMeCook <- "letMeCook.wav",
    linearAlgebra <- "linearAlgebra.wav",
    networkBiz <- "networkBiz.wav",
    shoutOutBoys <- "shoutOutBoys.wav",
    statsGod <- "statsGod.wav",
    stormingCap <- "stormingCap.wav",
    thinning <- "thinning.wav",
    useless <- "useless.wav"
  )
}


# Reactionary Noises

Gmisc <- function(){
  audios <- c(
    agh <- "agh.wav",
    choke <- "choke.wav",
    fsSake <- "fsSake.wav",
    gag <- "gag.wav",
    hA <- "hA.wav",
    idc <- "idc.wav",
    joan <- "joan.wav",
    missedCatch <- "missedCatch.wav",
    ohhhOhhh <- "ohhhOhhh.wav",
    ooold <- "ooold.wav",
    silence <- "silence.wav",
    slamAh <- "slamAh.wav",
    wohahahaho <- "wohahahaho.wav"
  )
}

