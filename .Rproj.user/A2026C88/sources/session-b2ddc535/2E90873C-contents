#'
#'
#' ###### COPIED from BRR
#' skrrrahh <- function(sound=27, expr = NULL) {
#'   expr
#'   sounds <- skrrrahh_sounds()
#'   sound_path <- NULL
#'   if(is.na(sounds[sound]) || length(sounds[sound]) != 1) {
#'     if(is.character(sound)) {
#'       sound <- str_trim(sound)
#'       if(file.exists(sound)) {
#'         sound_path <- sound
#'       } else if(str_detect(sound, "^https://")) {
#'         warning("Can't currently use https urls, only http.")
#'       } else if(str_detect(sound, "^http://")) {
#'         temp_file <- tempfile(pattern="")
#'         if(utils::download.file(sound, destfile = temp_file, quiet = TRUE) == 0) { # The file was successfully downloaded
#'           sound_path <- temp_file
#'         } else {
#'           warning(paste("Tried but could not download", sound))
#'         }
#'       } else {
#'         warning(paste('"', sound, '" is not a valid sound nor path.', sep = ""))
#'       }
#'     }
#'   } else {
#'     sound_path <- system.file("adlibs", sounds[sound], package = "BRRR")
#'   }
#'
#'   if(is.null(sound_path)) { # play a random sound
#'     sound_path <- system.file("adlibs", sample(sounds, size=1), package = "BRRR")
#'   }
#'
#'   tryCatch(play_file(sound_path), error = function(ex) {
#'     warning("BRRR() could not play the sound due to the following error:\n", ex)
#'   })
#' }
#'
#' skrrrahh_sounds <- function() {
#'   sounds <- c(
#'     twochainz = "twochainz.wav",
#'     twochainz1 = "twochainz1.wav",
#'     bigboi = "bigboi.wav",
#'     biggie = "biggie.wav",
#'     bigsean = "bigsean.wav",
#'     bigsean1 = "bigsean1.wav",
#'     bigsean2 = "bigsean2.wav",
#'     bigsean3 = "bigsean3.wav",
#'     bigsean4 = "bigsean4.wav",
#'     bigsean5 = "bigsean5.wav",
#'     bigshaq = "bigshaq.wav",
#'     bigshaq1 = "bigshaq1.wav",
#'     birdman = "birdman.wav",
#'     birdman1 = "birdman1.wav",
#'     birdman2 = "birdman2.wav",
#'     busta = "busta.wav",
#'     chance = "chance.wav",
#'     desiigner = "desiigner.wav",
#'     diddy = "diddy.wav",
#'     drake = "drake.wav",
#'     drake1 = "drake1.wav",
#'     drummaboy = "drummaboy.wav",
#'     fetty = "fetty.wav",
#'     flava = "flava.wav",
#'     future = "future.wav",
#'     gucci = "gucci.wav",
#'     gucci1 = "gucci1.wav",
#'     gucci2 = "gucci2.wav",
#'     jayz = "jayz.wav",
#'     jayz1 = "jayz1.wav.wav",
#'     kendrick = "kendrick.wav",
#'     khaled = "khaled.wav",
#'     khaled1 = "khaled1.wav",
#'     khaled2 = "khaled2.wav",
#'     khaled3 = "khaled3.wav",
#'     liljon = "liljon.wav",
#'     liljon1 = "liljon1.wav",
#'     nicki = "nicki.wav",
#'     pitbull = "pitbull.wav",
#'     ross = "ross.wav",
#'     ross1 = "ross1.wav",
#'     schoolboy = "schoolboy.wav",
#'     snoop = "snoop.wav",
#'     soulja = "soulja.wav",
#'     takeoff = "takeoff.wav",
#'     tpain = "tpain.wav",
#'     traviscott = "traviscott.wav",
#'     treysongz = "treysongz.wav",
#'     trick = "trick.wav",
#'     waka = "waka.wav",
#'     weezy = "weezy.wav",
#'     yg = "yg.wav"
#'   )
#' }
#'
#' #' @export
#' #' @rdname skrrrahh
#' skrrrahh_list <- function() {
#'   sounds <- skrrrahh_sounds()
#'   paste0(seq_along(sounds), ": ", names(sounds))
#' }
#'
#' is_wav_fname <- function(fname) {
#'   str_detect(fname, regex("\\.wav$", ignore_case = TRUE))
#' }
#'
#' play_vlc <- function(fname) {
#'   system(paste("vlc -Idummy --no-loop --no-repeat --playlist-autostart --no-media-library --play-and-exit", fname),
#'          ignore.stdout = TRUE, ignore.stderr=TRUE,wait = FALSE)
#'   invisible(NULL)
#' }
#'
#' play_paplay <- function(fname) {
#'   system(paste("paplay ", fname), ignore.stdout = TRUE, ignore.stderr=TRUE,wait = FALSE)
#'   invisible(NULL)
#' }
#'
#' play_aplay <- function(fname) {
#'   system(paste("aplay --buffer-time=48000 -N -q", fname), ignore.stdout = TRUE, ignore.stderr=TRUE,wait = FALSE)
#'   invisible(NULL)
#' }
#'
#' play_audio <- function(fname) {
#'   sfx <- load.wave(fname)
#'   play(sfx)
#' }
#'
#'
#' #### New
#' play_file <- function(file_path) {
#'   if (!file.exists(file_path)) {
#'     stop("File does not exist: ", file_path)
#'   }
#'   av::av_play(file_path)
#' }
#'
#'
#' ### from BRR
#' play_file <- function(fname) {
#'   if(Sys.info()["sysname"] == "Linux") {
#'     if(is_wav_fname(fname) && nchar(Sys.which("paplay")) >= 1) {
#'       play_paplay(fname)
#'     } else if(is_wav_fname(fname) && nchar(Sys.which("aplay")) >= 1) {
#'       play_aplay(fname)
#'     } else if(nchar(Sys.which("vlc")) >= 1) {
#'       play_vlc(fname)
#'     } else {
#'       play_audio(fname)
#'     }
#'   } else {
#'     play_audio(fname)
#'   }
#' }
