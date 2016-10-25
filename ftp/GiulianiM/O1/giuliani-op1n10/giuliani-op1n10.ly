\version "2.19.35"

\header {
  title = "Studio per la Chitarra, No. 10"
  composer = "Mauro Giuliani"
  opus = "Op. 1 No. 10"
  style = "Classical"
  source = "Artaria & Co., Vienna. No. 2246"
  date = "1812"
  mutopiacomposer = "GiulianiM"
  mutopiainstrument = "Guitar"
  mutopiatitle = "Etudes, No. 10"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl.glx at gmail.com"
  moreInfo = "From section IV of this book which contains 12 studies."

 footer = "Mutopia-2016/10/25-2138"
 copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {\char ##x01C0 \char ##x01C0 }}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " 2016 " "by " \maintainer " " \char ##x2014 " " \footer}\concat {\concat {\abs-fontsize #8 { \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License "\char ##x2014 " free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white \char ##x01C0 }}}
 tagline = ##f
}

\paper {
  % add space between composer/opus markup and first staff
  markup-system-spacing #'padding = #3
  % add a little space between composer and opus
  markup-markup-spacing #'padding = #1.2
  top-margin = #8
  bottom-margin = #12
%  system-count = #8
}

mbreak = {} % { \break }
global = {
  \time 2/4
  \key d \major
}

mydynamics = {
  s8\mf s2*4
  s2*3 s16*7 s16\f s2 s4 s16 s16\p s8
  s8 s8\< s4 s2\! s2 s4 s4\p s8 s8\< s4 s4\! s4 s2
  s2*5
  s2 s16\f s16*7 s2*2
  s2 \dynamicUp \repeat unfold 2 { s16 s16\sf s8 s16 s16\sf s8} \dynamicDown s8 s8\p s4 s2
  s8\f s8 s4 s2*4
  s2*5
  s2 s2 s8\f s8 s4 s2 s4 s4\ff s2
}

upperVoice = \fixed c {
  \voiceOne
  \set fingeringOrientations = #'(up)
  \override Fingering.add-stem-support = ##t

  \partial 8 {
    a'16( g') |
  }
  fis'16( g') e'( fis') d'( e'\2) cis'( d') |
  <g b>8[ q q] cis'16( d') |
  dis'16( e'\2) fis'_. e'_. d'( cis') b_.\3 a_. |
  a'4 fis'8 a'16[( g')] |

  \mbreak
  fis'16( g') e'( fis') d'( e'\2) cis'( d') |
  <g b>8[ q q] cis'16( d') |
  dis'16( e'\2) fis'_. e'_. d'( cis') b_.\3 cis'_. |
  r16 d' a fis d8\5 r |
  <<{\voiceOne <fis'\2 d''>4 <cis' e' a'>}\\{\voiceThree\stemDown d'4\3 a\4}>> |
  <<{\voiceOne <d' fis'>4 r16 fis'( e'_.) d'_.}\\{\voiceThree\stemDown a4 s}>> |

  \mbreak
  cis'8 d' <a cis' g'> <a d' fis'> |
  <<{<cis' e'>4 r}\\{\voiceThree\stemDown a4 s}>> |
  <<{\voiceOne e''4 cis''}\\{\voiceThree\stemDown g'4 e'}>> |
  <<{\voiceOne a'4 a'16\rest g'( fis') e'_.}\\{\voiceThree\stemDown cis'4\3 s}>> |
  dis'8 <cis' e'> fis' <cis' g'> |
  <d' fis'>4 r8_\markup{"dolce"} a' |
  <<{\voiceOne gis'8 gis' a'16( gis') fis'_. gis'_.}\\{\voiceThree\stemDown d'4 d'}>> |

  \mbreak
  \barNumberCheck #18
  <<{\voiceOne a'8 a' a'[ b'16 cis'']}\\{\voiceThree\stemDown cis'8\3[ cis'\3 cis'\3] cis'\rest}>> |
  <<{\voiceOne d''8 d'' d''[ e''16( d'')]}\\{\voiceThree\stemDown b'8\2 b'\2 b'4\2}>> |
  <<{\voiceOne cis''8 cis'' cis''16 e''( cis'') a'\2}\\{\voiceThree\stemDown a'8\2 a'\2 a'4\2}>> |
  <<{\voiceOne e'8 e' e'[ fis'16( g')]}\\{\voiceThree\stemDown f8\rest d'[ d'] f\rest}>> |
  <<{\voiceOne a'8[ a16\4 cis'\3] b\3 d'\2 bis\3[ dis']}\\{\voiceThree\stemDown cis'8\3 a\4 b\3 bis\3}>> |

  e'8 <a cis'> <b d'> <gis b> |
  r16 a cis' e' a'[( gis') \grace{fis'16[ gis']} fis' e'] |
  d'16 e' b e' d' e' b e' |
  cis'16 a cis' e' a'[( gis') \grace{fis'[ gis']} fis' e'] |

  \mbreak
  d'16 e' b e' d' e' b e' |
  cis'16 a' e' cis' f'\rest fis' d' b |
  f'16\rest  e' cis' a f'\rest d' b gis |
  a8 a16( gis) a cis'_. b( d') |
  cis'16 e' d' fis' e'( g') fis' a' |

  \mbreak
  <a cis' g'>4 e'8\rest dis'16 fis' |
  e'16[ g'] dis' fis' e'[ g'] dis' fis' |
  e'16[ g'] d' fis' cis'[ e'] b d' |
  a16[ cis'] g b fis[ a] eis gis |
  <e g>4.\fermata a'16( g') |

  \mbreak
  fis'16( g') e'( fis') d'( e'\2) cis'( d') |
  <g b>8[ q q] cis'16( d') |
  dis'16( e'\2) fis'_. e'_. d'( cis') b_. a_. |
  a'4 fis'8 a'16( g') |
  fis'16( g') e'( fis') d'( e'\2) cis'( d') |

  <g b>8[ q q] cis'16( d') |
  dis'16( e'\2) fis'_. e'_. d'( cis') b_. cis_. |
  r8 <fis a d'>8[ r <a cis' e'>8] |
  r8 <a d' fis'>8[ r <a\4 cis'\3 a'>8] |
  <<{\voiceOne <fis' d''\1>4 <fis a d'>8 q}\\{\voiceThree\stemDown d'4\3 s}>> |
  d'2
  
  \bar "|."
}

lowerVoice = \fixed c {
  \voiceTwo
  \set fingeringOrientations = #'(down)
  \override Fingering.add-stem-support = ##t

  \partial 8 { r8 }
  d4 d |
  g,8[ g, g,] r |
  a,4 a, |
  r8 d[ d] r |

  d4 d |
  g,8[ g, g,] r |
  a,4 a, |
  d4 d8\5 r |
  d4 a, |
  d4 r |

  g8 fis e d |
  a,4 r |
  a,4 a, |
  a,4 r |
  r8 a[ <a d'> <a, a>8] |
  <d a>4 r |
  e,4 e, |

  a,4 s |
  e,4 e, |
  a,4 a, |
  e,4 e, |
  a,4 r |

  cis'8 fis d e, |
  a,4 a,\rest |
  e,8 gis, e, gis, |
  a,4 a,\rest |

  e,8 gis, e, gis, |
  a,4 d |
  e4 e, |
  a,4 a,\rest |
  r2 |

  a,4 a,\rest |
  e'8 dis' e' dis' |
  e'8 d' cis' b |
  a8 g fis eis |
  a,4. r8 |

  d4 d |
  g,8[ g, g,] r |
  a,4 a, |
  r8 d[ d] r |
  d4 d |

  g,8[ g, g,] r |
  a,4 a, |
  d4 a, |
  d4 a, |
  d4 d8 d |
  <d fis a>2
}

\score {
  <<
    \new Staff = "Guitar" \with {
      midiInstrument = #"acoustic guitar (nylon)"
      instrumentName = #"Nº 10"
      \mergeDifferentlyDottedOn
      \mergeDifferentlyHeadedOn
      \override StringNumber #'stencil = ##f
    } <<
      \global
      \clef "treble_8"
      \tempo "Allegro spiritoso."
      \context Voice = "upperVoice" \upperVoice
      \context Voice = "lowerVoice" \lowerVoice
    >>
    \new Dynamics { \mydynamics }
%{
    % tabs have been developed, just uncomment this section
    \new TabStaff = "Guitar tabs" \with {
      restrainOpenStrings = ##t
    } <<
      \clef "moderntab"
      \global
      \context TabVoice = "upperVoice" \upperVoice
      \context TabVoice = "lowerVoice" \lowerVoice
    >>
%}
  >>
  \layout {}
  \midi {
    \context { \TabStaff \remove "Staff_performer" }
    \tempo 4 = 86
  }
}
