
# decline a single Latin word
decline <- function(word, declension, case) {
  case <- match.arg(case, c('Nominativus', 'Genetivus', 'Dativus', 'Accusativus', 'Ablativus', 'Vocativus'))
  force(case)
  err <- function() stop('wrong declension', call. = FALSE)
  if (declension == 1) {
    if (!endsWith(word, 'a')) {
      err()
    } else {
      stem <- sub('a$', '', word)
      ans <- switch(case,
                    'Nominativus' = word,
                    'Genetivus' = paste0(stem, 'ae'),
                    'Dativus' = paste0(stem, 'ae'),
                    'Accusativus' = paste0(stem, 'am'),
                    'Ablativus' = word,
                    'Vocativus' = word
      )
    }
  } else if (declension == 2) {
    if (!grepl('u[sm]$', word)) {
      err()
    } else {
      stem <- sub('u[sm]$', '', word)
      gender <- ifelse(endsWith(word, 's'), 'masc', 'neutr')
      withi <- ifelse(grepl('iu[sm]', word), TRUE, FALSE)
      if (gender == 'masc') {
        if (withi) {
          ans <- switch(case,
                        'Nominativus' = word,
                        'Genetivus' = paste0(stem, 'i'),
                        'Dativus' = paste0(stem, 'o'),
                        'Accusativus' = paste0(stem, 'um'),
                        'Ablativus' = paste0(stem, 'o'),
                        'Vocativus' = stem
          )
        } else {
          ans <- switch(case,
                        'Nominativus' = word,
                        'Genetivus' = paste0(stem, 'i'),
                        'Dativus' = paste0(stem, 'o'),
                        'Accusativus' = paste0(stem, 'um'),
                        'Ablativus' = paste0(stem, 'o'),
                        'Vocativus' = paste0(stem, 'e')
          )
        }
      } else if (gender == 'neutr') {
        if (withi) {
          ans <- switch(case,
                        'Nominativus' = word,
                        'Genetivus' = paste0(stem, 'i'),
                        'Dativus' = paste0(stem, 'o'),
                        'Accusativus' = word,
                        'Ablativus' = paste0(stem, 'o'),
                        'Vocativus' = word
          )
        } else {
          ans <- switch(case,
                        'Nominativus' = word,
                        'Genetivus' = paste0(stem, 'i'),
                        'Dativus' = paste0(stem, 'o'),
                        'Accusativus' = word,
                        'Ablativus' = paste0(stem, 'o'),
                        'Vocativus' = word
          )
        }

      }
    }
  }
  return(ans)
}

# define vectorized version of decline
Decline <- Vectorize(decline, 'word')

# list all cases so that declension can be run on all
cases <- c('Nom', 'Voc', 'Acc', 'Gen', 'Dat', 'Abl')

# use this call:
# word <- 'rosa'
# declensions <- 1
# sapply(cases, function(x) Decline(word, declension, x))

