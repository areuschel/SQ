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
#'
#' This package allows users to play various sound clips with simple function calls.
#'
#' Code is modeled after \code{skrrrahh} from the BRRR package (https://github.com/brooke-watson/BRRR/blob/master/R/skrrrahh.R).
#'
#' @param index Numeric. The index of the audio file to play.
#' @return Plays an audio file but returns NULL.
#' @examples
#' play_OG(1)  # Plays the first audio file from the OG_phrases audio list.
#' play_stats(5)  # Plays the fifth audio file from the some_stats audio list.
#' play_Gmisc(10) # Plays the tenth audio file from the Gmisc audio list.
#'


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


# play the audio by index
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

# play the audio by index
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

# play the audio by index
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
