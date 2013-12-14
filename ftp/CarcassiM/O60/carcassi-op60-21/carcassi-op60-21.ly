\version "2.16.2"
\header {
  title = "Etude 21"
  composer = "Mateo Carcassi"
  opus = "Op. 60, No. 21"
  mutopiatitle = "25 Studies: No. 21"
  mutopiacomposer = "CarcassiM"
  mutopiaopus = "O 60"
  mutopiainstrument = "Guitar"
  style = "Classical"
  copyright = "Creative Commons Attribution-ShareAlike 3.0"
  source = "Mayence, B. Schott's Söhne"
  % From Boije 94
  date = "1853"
  enteredby = "Glen Larsen"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl.glx at gmail.com"

 footer = "Mutopia-2013/12/14-1893"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \abs-fontsize #10 \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 MutopiaProject \abs-fontsize #8 .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \abs-fontsize #10 \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 LilyPond \abs-fontsize #8 .org }} by \concat { \maintainer . } \hspace #0.5 Copyright © 2013. \hspace #0.5 Reference: \footer } } \line { \abs-fontsize #8 \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } } }
}

pf = #(make-dynamic-script "pf")
rf = #(make-dynamic-script "rf")
gpos = #(define-music-function (parser location text) (string?)
	 #{ \mark\markup{\teeny\italic #text } #})

\paper {
  % add space between composer/opus markup and first staff
  markup-system-spacing #'padding = #3
  % add a little space between composer and opus
  markup-markup-spacing #'padding = #1.2
  top-margin = #8
  bottom-margin = #10
}

\layout {
  \context {
    \Voice
    \override StringNumber #'stencil = ##f
  }
  \context {
    \Staff
    \override Fingering #'staff-padding = #'()
    \override Fingering #'add-stem-support = ##t
    \mergeDifferentlyDottedOn
    \mergeDifferentlyHeadedOn
  }
  \context {
    \Dynamics
    \override DynamicTextSpanner #'style = #'none
  }
}

upperVoice = \relative c' {
  \voiceOne
  \set fingeringOrientations = #'(left)
  \key a \major
  \tempo "Andantino."
  
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1 8)
  \set Voice.beatStructure = #'(3 1)

  \partial 8 { cis8\pf\segno } |
  \acciaccatura { b16[ cis] } b8 a a e' |
  \acciaccatura { d16[ e] } d8 cis cis a' |
  \acciaccatura { gis16[ a] } gis8 fis fis gis |
  \acciaccatura { fis16[ gis] } fis8 e e fis |
  \acciaccatura { e16[ fis] } e8 <d-2 b-4> <d-3 b'-4> e |

  \acciaccatura { d16[ e] } d8 <a cis> <cis-3 a'-2> cis |
  \acciaccatura { cis16[ d] } cis8\rf b fis' b, |
  b8 dis\> e\! cis |
  \acciaccatura { b16[ cis] } b8\pf a a e' |
  \acciaccatura { d16[ e] } d8 cis cis a' |
  \acciaccatura { gis16[ a] } gis8 fis fis gis |

  \acciaccatura { fis16[ gis] } fis8 e e fis |
  \set Voice.beatStructure = #'(4)
  \acciaccatura { e16[ fis] } e8 dis\> <b'-4>\! e, |
  \acciaccatura { d16[ e] } d8 cis a' cis, |
  \acciaccatura { cis16[ d] } cis8 <a b> fis' gis, |
  \set Timing.measureLength = #(ly:make-moment 3 8)
  \set Voice.beatStructure = #'(1 2)
  a8 <d e>\> <a' cis,>\!^\markup{\italic{"Fin."}} \bar "||"
  \set Timing.measureLength = #(ly:make-moment 1 8)
  \key c \major
%  r8_\markup{\italic{\column{"il basso" "marcato"}}} |
  r8_\markup{\italic{"il basso marcato"}} |

  \set Timing.measureLength = #(ly:make-moment 2 4)
  \set Voice.beatStructure = #'(4)
  r8 <c, a e> q r |
  r8 <e c a> q r |
  r8 <d a> q r |
  r8 <f d a> q r |
  r8 <g d g,> q r |
  r8 <b, g>\< <c g> <cis g>\! |

  d8[ a'\> \once\slurDown\acciaccatura{g16[ a]} g8 f]\! |
  \set Voice.beatStructure = #'(3 1)
  \acciaccatura{f16[ g]} f8 e e c |
  \acciaccatura{c16[ d]} c8\> <aes b> <b g>\! d |
  \acciaccatura{d16[ e]} d8\p c g' c,|
  \acciaccatura{c16[ d]} c8\> <aes b> <b g>\! d |
  \acciaccatura{d16[ e]} d8 c g' c, |

  \acciaccatura{b16[\cresc c]} b8 a\! a d |
  \acciaccatura{c16[ d]} c8 b b e |
  \acciaccatura{d16[ e]} d8 c c f |
  \acciaccatura{e16[ f]} e8 d d a' |
  \set Voice.beatStructure = #'(4)
  \acciaccatura{a16[ b]} a8 g\> fis f\! |
  e8 d\> c\! a' |

  \acciaccatura{a16[ b]} a8 g \acciaccatura{g16[ a]} g8 b, |
  \set Voice.beatStructure = #'(3 1)
  \acciaccatura{d16[ e]} d8 c c f |
  \acciaccatura{f16\mf[ g]} f8 <d e> q f |
  \acciaccatura{f16[ g]} f8 <e c> q <a-2> |
  \acciaccatura{a16[ b]} a8 gis gis <b-2> |
  \acciaccatura{b16[ c]} b8 a a <bes-2> |

  \set Voice.beatStructure = #'(2 2)
  \acciaccatura{bes16[ c]} bes8 a \acciaccatura{a16[ bes]} a8 g |
  \acciaccatura{g16[ a]} g8 f \acciaccatura{f16[ g]} f8 e |
  dis8\f c b a |
  \set Voice.beatStructure = #'(4)
  gis8\mf e' f e |
  <e a,>8\f c\<[ b a\!] |
  gis8 e' <f gis,> e |

  e8 c\f b a |
  gis8[ e'\p \once\slurDown\acciaccatura{f16[ ges]} f8 e] |
  \acciaccatura{fis16[ gis]} fis8 e \acciaccatura{gis16[ a]} gis8\dim e |
  \acciaccatura{<b-1>16[ c]} b8 <e-0>\!_\markup{\italic{"rall."}} <d'-4> b |
  gis8\> e d b\! |
  <gis d>4\fermata\pp r_\markup{\italic{"D.C."}}^\segno |

  \bar "|."
}

lowerVoice = \relative c {
  \voiceTwo
  \set fingeringOrientations = #'(left)
  \set Voice.beatStructure = #'(1 2 1)

  \partial 8 { r8 } |
  r8 <e cis> q r |
  r8 <a a,> q r |
  r8 <a d,> q r |
  r8 <a cis,> q r |
  r8 <gis,-3> e r |

  r8 a <fis'-1> r |
  r8 <d a'> r <dis a'> |
  <e gis>8 <a b,> <gis e,> r |
  r8 <e cis> q r |
  r8 <a a,> q r |
  r8 <a d,> q r |

  r8 <a c,> q r |
  r8 <a b,> <d-3 gis,-1> r |
  r8 <a a,> <cis fis,> r |
  r8 d, b e |
  a,8 e' a,
  % key change
  c8 |

  \set Voice.beatStructure = #'(3 1)
  \acciaccatura{ b16[ c] } b8 a a e' |
  \acciaccatura{ d16[ e] } d8 c c a' |
  \acciaccatura{ g16[ a] } g8 f f e |
  \acciaccatura{ e16[ f] } e8 d d <c-2> |
  \acciaccatura{ c16[ d] } c8 b b a |
  \acciaccatura{ a16[ b] } a8 g a ais |

  \set Voice.beatStructure = #'(1 2 1)
  <g' b,>8 r <b g>4 |
  r8 <g c,> q r |
  r8 f f r |
  r8 <g e> q r |
  r8 f f r |
  r <g e> q r |

  r8 f d r |
  r8 g e r |
  r8 a f r |
  r8 b g r |
  r8 <b g> <a c> <aes c> |
  <g c>8 <f aes> <e g> <fis dis'> |

  r8 <g e'> r <f g,> |
  r8 <e c> q r |
  r8 <gis, b'> q r |
  r8 <a a'> q r |
  r8 <b d'> q r |
  r8 <c e'> q r |

  r8 <cis e'> r <a cis'> |
  r8 <d a'> r <e a> |
  <f a>8 c[ d! dis] |
  e8[ e, <d' gis> e,] |
  c'8 a[ d dis] |
  \set Voice.beatStructure = #'(4)
  e8 e, d' e, |

  <c' a'>8 a d dis |
  <e e,>8 r r4 |
  s2*3
  e,4 s |
}


\score {
  <<
    \new Staff = "Guitar"
    <<
      \set Staff.midiInstrument = #"acoustic guitar (nylon)"
      \time 2/4
      \clef "treble_8"
      \context Voice = "upperVoice" \upperVoice
      \context Voice = "lowerVoice" \lowerVoice
    >>
  >>
  \layout { }
  \midi {
    \context {
      \Voice
      \remove "Dynamic_performer"
    }
    \tempo 4 = 100
  }
}
