\header {
 title = "Sonatina in B-flat Major"
 composer = "G. F. Handel"
 opus = "HWV 585"
 filename = "HandelHWV585.ly"

 mutopiatitle = "Sonatina in B-flat Major"
 mutopiacomposer = "G. F. Handel (1685-1759)"
 mutopiaopus = "HWV 585"
 mutopiainstrument = "Piano"
 date = "1721-2"
 source = "Dover Reprint (1982) of Handel's Werke (1859)"
 style = "Baroque"
 copyright = "Public Domain"
 maintainer = "David Maddock"
 maintainerEmail = "d.maddock1@home.com"
 maintainerWeb = "http://members.home.net/d.maddock1"
 lastupdated = "2001/June/30"

 footer = "Mutopia-2001/06/30-98"
 tagline = "\\parbox{\hsize}{\\thefooter\\quad\\small \\\\This music is part of the Mutopia project, \\texttt{http://www.mutopiaproject.org/}\\\\It has been typeset and placed in the public domain by " + \maintainer + ".\\\\Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}"
}


global = \notes {
  \key bes \major
  \time 4/4
}


top = \notes\relative c'' {

  r4 r8 f d c d bes | c4 r8 f \stemDown bes,\trill a bes c |
  \stemBoth a4\trill r8 f' g ees c ees | f d bes d ees c a c |
  d f c f bes, f' a, f' | \stemDown g, f' f, f' \stemBoth g,16 a bes8 f a |
  bes4 r8 d ees c f, f' | d bes r8 \stemUp f' bes g c, c' |
  a4 r8 \stemBoth c d, c' e, c' | f, bes a g a8. bes16 g8.\trill f16 |
  f4 r8 f, bes c d bes | g4 r8 g c d ees c |
  a4 r8 a d ees f d | \stemDown bes4 r8 bes \stemBoth ees g16 f ees d c bes |
  a4 r8 f' g ees c a' | bes bes, bes ees d c16 bes \stemDown a8.\trill bes16 |
  bes4 \stemBoth r8 a g bes f bes | ees, a bes ees d4 c8. bes16 |
  <bes1 d, f> \bar "|."
}


bottom = \notes\relative c {

  bes8 bes' a f bes4 r8 g | a g a f g4 r8 c, |
  f ees f d ees4 r8 c' | \stemDown d,4 \stemBoth r8 bes' c,4 r8 \stemDown a' |
  bes4 a g f | ees d ees f | bes8 c d bes c4 a |
  bes8 d f a, g4 r8 \translator Staff = treble e' |
  [f g a \translator Staff = bass a,] bes4 c |
  d r8 bes c bes c c, | f g a f d4 r8 d |
  ees f g ees \stemBoth c4 r8 ees | f g a f \stemDown d4 r8 f |
  g a bes g c4 r8 ees, | f ees f d ees4 r8 f |
  g4 r8 a bes ees, f f, | \stemBoth bes c d bes ees4 \stemDown d |
  \stemUp c bes8 g' f ees f f, | bes1 |
}


\score {
  \context PianoStaff <
   \context Staff = treble <
     \global
     \clef treble
       \top
   >
   \context Staff = bass <
     \global
     \clef bass
       \bottom
   >
  >
}

\score {
  \context PianoStaff <
   \context Staff = treble <
     \global
     \clef treble
       \top
   >
   \context Staff = bass <
     \global
     \clef bass
       \bottom
   >
  >
  \midi { \tempo 4 = 120 }
}
