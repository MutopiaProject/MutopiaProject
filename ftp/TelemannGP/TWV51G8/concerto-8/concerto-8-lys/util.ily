\version "2.18.2"
#(set-global-staff-size 17)
\header {
  title             = "Concerto à 8"
  subtitle          = "TWV 51:G8"
  composer          = "G. P. Telemann"
  mutopiaopus       = "TWV 51:G8"
  mutopiacomposer   = "TelemannGP"
  mutopiainstrument = "Violin, Viola, Cello, Oboe, Harpsichord"
  date              = "ca. 1730"
  source            = "Manuscript, scanned by the Library of the Technical University of Darmstadt"
  style             = "Baroque"
  license           = "Creative Commons Attribution-ShareAlike 4.0"
  maintainer        = "Elias Hernandis"
  maintainerEmail   = "eliashernandis@gmail.com"
  maintainerWeb     = "https://hernandis.me"
  moreInfo          = "Manuscript downloaded from <a href='http://tudigit.ulb.tu-darmstadt.de/show/Mus-Ms-1033-92'>the Library of the Technical University of Darmstadt</a>"
}

globalFirstMov = {
  \key g \major
  \tempo "Allegro"
  \compressFullBarRests
}

globalSecondMov = {
  \key g \major
  \tempo "Adagio"
  \compressFullBarRests
}

globalThirdMov = {
  \key g \major
  \time 3/4
  \tempo "Allegro"
  \compressFullBarRests
}
