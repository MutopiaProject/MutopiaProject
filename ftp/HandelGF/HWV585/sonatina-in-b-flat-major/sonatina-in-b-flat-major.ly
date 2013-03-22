\version "2.16.1"

\header {
 title = "Sonatina in B-flat Major"
 composer = "G. F. Handel"
 opus = "HWV 585"
 filename = "HandelHWV585.ly"

 mutopiatitle = "Sonatina in B-flat Major"
 mutopiacomposer = "HandelGF"
 mutopiaopus = "HWV 585"
 mutopiainstrument = "Piano"
 date = "1721-2"
 source = "Handel's Werke (1859)"
 style = "Baroque"
 copyright = "Public Domain"
 maintainer = "David Maddock"
 maintainerEmail = "d.maddock1@home.com"
 maintainerWeb = "http://members.home.net/d.maddock1"
 moreInfo = "Source: Republication of Volume II, \"Klavierstucke von Georg Friedrich Handel\" (1859) from Georg Friedrich Handel's Werke, originally published by Deutsche Handelgesellschaft in Leipzig."

 footer = "Mutopia-2013/03/22-98"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } } }
}


global =  {
  \key bes \major
  \time 4/4
}


top = \relative c'' {

  r4 r8 f d c d bes | c4 r8 f bes,\trill a bes c |
  a4\trill r8 f' g ees c ees | f d bes d ees c a c |
  d f c f bes, f' a, f' | g, f' f, f' g,16 a bes8 f a |
  bes4 r8 d ees c f, f' | d bes r8 \voiceOne f' bes g c, c' |
  a4 r8 c \oneVoice d, c' e, c' | f, bes a g a8. bes16 g8.\trill f16 |
  f4 r8 f, bes c d bes | g4 r8 g c d ees c |
  a4 r8 a d ees f d | bes4 r8 bes ees g16 f ees d c bes |
  a4 r8 f' g ees c a' | bes bes, bes ees d c16 bes a8.\trill bes16 |
  bes4 r8 a g bes f bes | ees, a bes ees d4 c8. bes16 |
  <bes d, f>1 \bar "|."
}


bottom = \relative c {

  bes8 bes' a f bes4 r8 g | a g a f g4 r8 c, |
  f ees f d ees4 r8 c' | d,4 r8 bes' c,4 r8 a' |
  bes4 a g f | ees d ees f | bes8 c d bes c4 a |
  bes8 d f a, g4 r8 \change Staff = treble \voiceTwo e' |
   f[ g a \change Staff = bass \oneVoice a,] bes4 c |
  d r8 bes c bes c c, | f g a f d4 r8 d |
  ees f g ees c4 r8 ees | f g a f d4 r8 f |
  g a bes g c4 r8 ees, | f ees f d ees4 r8 f |
  g4 r8 a bes ees, f f, | bes c d bes ees4 d |
  c bes8 g' f ees f f, | bes1 |
}


\score {
  \context PianoStaff <<
   \context Staff = "treble" <<
     \global
     \clef treble
       \top
   >>
   \context Staff = "bass" <<
     \global
     \clef bass
       \bottom
   >>
  >>
}

\score {
  \context PianoStaff <<
   \context Staff = "treble" <<
     \global
     \clef treble
       \top
   >>
   \context Staff = "bass" <<
     \global
     \clef bass
       \bottom
   >>
  >>
  
  \midi {
    \tempo 4 = 120
    }
}
