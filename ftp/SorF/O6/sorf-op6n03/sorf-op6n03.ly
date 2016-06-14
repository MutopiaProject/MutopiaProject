\version "2.19.35"

\header {
  title = "12 Etudes"
  composer = "F. Sor"
  opus = "Op. 6 No. 3"
  style = "Romantic"
  source = "N. Simrock, Berlin. Plate 9106"
  date = "c.1889"
  mutopiacomposer = "SorF"
  mutopiainstrument = "Guitar"
  mutopiatitle = "12 Etudes, No. 3"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl.glx at gmail.com"
}

\paper {
  % add space between composer/opus markup and first staff
  markup-system-spacing #'padding = #3
  % add a little space between composer and opus
  markup-markup-spacing #'padding = #1.2
  top-margin = #8
  bottom-margin = #12
  system-count = #15
}

mbreak = {} % { \break }
global = {
  \time 4/4
  \key e \major
}

upperVoice = \fixed c {
  \set fingeringOrientations = #'(up)
  \override Fingering.add-stem-support = ##t

  \partial 2 { <e gis b>8 r gis'32( fis' e'16) r8 } |
  <dis a b>8 r a'32( gis' fis'16) r8 <e gis b>8 r gis'32( fis' e'16) r8 |
  <b, fis b>8 r fis'32( e' dis'16) r8 <e gis b> r gis'32( fis' e'16) r8 |
  <a, a cis'>8 r a'32( gis' fis'16) r8 <ais, e cis'> r gis'32( fis' e'16) r8 |

  \mbreak
  <b, dis b>8 r dis'32( cis' b16) r8 <e gis b> r gis'32( fis' e'16) r8 |
  <dis a b>8 r a'32( gis' fis'16) r8 <e gis b> r gis'32( fis' e'16) r8 |
  <fis a>8 r dis'32( cis' b16) r8 <e gis> r <<{ b'32[( a' gis'16)] }\\{b8}>> r8 |
  <a, a cis'>8 r a'32( gis' fis'16) r8 <b, fis a> r fis'32( e' dis'16) r8 |
  <e, gis e'>8 r r4 \bar "||"
  \key e \minor

  \mbreak
  <e g b>8 r g'32( fis' e'16) r8 |
  <fis a b>8 r fis'32( e' dis'16) r8 <dis a b> r a'32( g' fis'16) r8 |
  <e g b>8 r g'32( fis' e'16) r8 <e, g b> r b'32( a' g'16) r8 |
  <a, a c'>8 r fis'32( g' a'16) r8 <ais, g cis'> r g'32( fis' e'16) r8 |

  \mbreak
  <b, fis b>8 r dis'32( cis' b16) r8 <e g>8 r g'32( fis' e'16) r8 |
  <fis a>8 r fis'32( e' d'16) r8 <fis c' d'> r c''32( b' a'16) r8 |
  <g b d'>8 r b'32( a' g'16) r8 <b, g d'> r d''32( c'' b'16) r8 |
  <c e a>8 r c''32( b' a'16) r8 <d a c'> r a'32( g' fis'16) r8 |

  \mbreak
  <g, b g'>8 r r4 <g b d'>8 r b'32( a' g'16) r8 |
  <f b d'>8 r d''32( c'' b'16) r8 <e b d'> r b'32( a' gis'16) r8 |
  <a c'>8 r c''32( b' a'16) r8 <gis b d' e'>8 r d''32( c'' b'16) r8 |
  <a c' e'>8 r c''32( b' a'16) r8 <a, a c' f'> r <ais, g cis' e'> r |

  \mbreak
  <b, g b e'>4 <fis dis'>8 r <dis a b> r a'32( g' fis'16) r8 |
  <e g b>8 r g'32( fis' e'16) r8 <dis a b> r a'32( g' fis'16) r8 |
  <fis g b>8 r g'32( fis' e'16) r8 <e, g b> r b'32( a' g'16) r8 |
  <a, a c'>8 r fis'32( g' a'16) r8 <b, g b e'> r <b, fis a dis'> r |
  <<{<fis a dis'>4 <e g e'>}\\{e,2}>>
  \bar "||" \key e \major

  \mbreak
  <e gis b>8 r gis'32( fis' e'16) r8 |
  <dis a b>8 r a'32( gis' fis'16) r8 <e gis b> r gis'32( fis' e'16) r8 |
  <fis a b>8 r fis'32( e' dis'16) r8 <e gis b> r b'32( a' gis'16) r8 |
  <a, a cis'>8 r a'32( gis' fis'16) r8 <ais, e cis'> r gis'32( fis' e'16) r8 |

  \mbreak
  <b, dis b>8 r dis'32( cis' b16) r8 <e gis b> r gis'32( fis' e'16) r8 |
  <dis a b>8 r a'32( gis' fis'16) r8 <e gis b> r gis'32( fis' e'16) r8 |
  <fis a>8 r dis'32( cis' b16) r8 <e gis> r b'32( a' gis'16) r8 |
  <a, a cis'>8 r a'32( gis' fis'16) r8 <b, fis a>8 r fis'32( e' dis'16) r8 |

  \mbreak
  <<{<gis e'>4 <gis b>8. <a cis'>16 <b d'>8 r \stemDown b'32( a' fis'16) r8} \\ {e,2. r4}>> |
  <<{\stemUp <a cis'>8 r \stemDown cis''32( b' a'16) r8 \once\stemUp <fis a> r fis'32( e' dis'16) r8} \\ {e,1}>> |
  <<{\stemUp <gis e'>4 <gis b>8. <a cis'>16 <b d'>8 r \stemDown b'32( a' fis'16) r8} \\ {e,1}>> |
  <<{\stemUp <a cis'>8 r \stemDown cis''32( b' a'16) r8 \once\stemUp <fis a> r fis'32( e' dis'16) r8} \\ {e,1}>> |
  \stemNeutral

  \mbreak
  \repeat unfold 2 {
    <e, e gis>8 r gis'32( fis' e'16) r8 <fis a dis'> r dis32( cis b,16) r8 |
  }
  <<{gis8 b gis'32( fis' e'16) r8 gis b gis'32( fis' e'16) r8} \\ 
    {e,4 gis8 b gis,32( fis, e,16) r8 gis b}>> |
  <<{gis8 b gis'32( fis' e'16) r8 gis b gis'32( fis' e'16) r8} \\ 
    {gis,32( fis, e,16) r8 gis b gis,32( fis, e,16) r8 gis b }>> |
  <<{gis2 b\rest}\\{e,2 s}>> 
  
  \bar "|."
}

\score {
  <<
    \new Staff = "Guitar" \with {
      midiInstrument = #"acoustic guitar (nylon)"
      instrumentName = #"Nº 3"
      \mergeDifferentlyDottedOn
      \mergeDifferentlyHeadedOn
%      \override StringNumber #'stencil = ##f
    } <<
      \global
      \clef "treble_8"
      \tempo "Andante."
      \context Voice = "upperVoice" \upperVoice
    >>
%{
    % tabs are not completely developed
    \new TabStaff = "Guitar tabs" \with {
      restrainOpenStrings = ##t
    } <<
      \clef "moderntab"
      \global
      \context TabVoice = "upperVoice" \upperVoice
    >>
%}
  >>
  \layout {}
  \midi {
    \context { \TabStaff \remove "Staff_performer" }
    \tempo 4 = 74
  }
}
