\version "2.19.36"

\header {
  title = "Six Petites Pièces"
  composer = "F. Sor"
  opus = "Op. 45 No. 5"
  style = "Classical"
  source = "Paris:Shonenberger, n.d. Plate S.1767, edited by N. Coste"
  date = "c.1835"
  mutopiacomposer = "SorF"
  mutopiainstrument = "Guitar"
  mutopiatitle = "Six Petites Pièces, No. 5"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl.glx at gmail.com"
  moreInfo = "With the forward: Let's see if that's that. Six short and easy pieces in stages, which aim to lead to what has generally been agreed are difficulties. Composed and dedicated to the person with the least patience, by Fernando Sor. Opus 45."

 footer = "Mutopia-2016/04/11-2113"
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
\layout {
  \context {
    \Voice
    \override Fingering.add-stem-support = ##t
  }     
}

mbreak = {} % { \break }
global = {
  \time 2/4
  \key a \major
}
fdown = {
  \set fingeringOrientations = #'(down)
}

u_motif_a = \relative {
  cis'8 e b e |
  e8 d4 cis8 |
  cis16( b) ais b gis'( fis) d b |
  a4 gis8 e' |
  cis8 e b e |
  e16 dis cis b b8. a16 |
  gis16 b e gis gis( fis) \tuplet 3/2 { fis16[( e) dis] } |
  e4 r8 e |
}
u_motif_b = \relative {
  <ais-2>8[ <g'-3> fis <cis e>8] |
  e16 <dis-4> <d-2>4 b8 |
  cis8 e fis, b |
  a16.( gis32) a16. gis32 e8 e' |
  cis8 e e a |
  b,16. eis32 gis8( gis16) fis d b |
  a16. cis32 e4 gis,8 |
  a4 r8 e' |
}
u_motif_c = \relative {
  e'8[ <c'-4> <b-3> <a-1>8] |
  <g-4>8 <f-1>4 f8 |
  <gis, e'>16 e gis b e b e d |
  d8 c r e |
  e8 c'4 b16 a |
  g4 f8 e |
  e8. d16 f8 <g, b> |
  c4 r8 e |
}
u_motif_d = \relative {         % 49
  gis16 e' e,, e'' e, e' b e |
  a,16 e' e,, e'' e, e' c e |
  b16 e e, e' d e e,, e'' |
  c16a d b <c e>8 e |
  <c e>16 c'( b) a gis( a) e c |
  d16.( b32) f'4 \grace{e16 f g} f16. e32 |
  e16. a,32 c8_( c16) d( b) c |
  a8 <e c'> a,8 e'' |
}

upperVoice = \relative c {
  \voiceOne
  \set fingeringOrientations = #'(up)

  \partial 8 {e'8} |
  \repeat unfold 2 { \u_motif_a }
  \repeat unfold 2 { \u_motif_b }
  \bar "||"
  \key c \major
  \repeat unfold 2 { \u_motif_c }
  \repeat unfold 2 { \u_motif_d }

  \bar "||"
  \key a\major
  cis8 e b e |
  e16 dis d4 cis8 |
  cis16( b) ais b gis'( fis) d b |
  a4 gis8 e' |
  cis8 e b e |
  e16. dis32 \tuplet 3/2 { dis16[_( cis) b]} b8. a16 |
  gis16 b e gis gis[( fis)] \tuplet 3/2 {fis16[_( e) dis]} |
  e4 r8 e |
  r16 ais, cis e r cis g'16. fis32 |
  e16 dis d4 b8 |
  cis32[( d) e( fis) gis( a) e cis] cis[( b) ais b] gis'[( fis) d b] |
  a4 gis16 e' dis d |
  cis16. e32 \slashedGrace{gis8} fis16. e32 a8 a |
  a16. <eis-1>32 <gis-4>8_( gis32 <fis-2>) <eis-1>_( <fis-2>) eis_( fis) <d-4> b |
  a32 e <cis'-4> a e'8_( e16) d b gis |
  a4 d8 d |
  <e, d'>8 cis' <d, cis'> b' |
  a8 <g e'> <fis dis'> <f d'> |
  <e cis'>8 <dis bis'> <d b'> gis |
  a4 <fis d'> |
  <e cis'>4 <bis' fis'> |
  <cis e>4 <fis, d'> |
  <e cis'>4 <bis' fis'> |

  <cis e>8 r <cis a'> q |
  <b d'>4 <a fis'>8 q |
  <gis eis'>4 e'8 e |
  e8 fis e <d gis> |
  s2 |
  <a cis>4 q |
  q2

  \bar "|."
}

l_motif_a = \relative {
  a4 gis |
  fis4 e |
  d2 |
  r8 e e,4 |
  a'4 gis |
  fis4 r8 dis |
  e8 e, a b |
  e,8 <gis' b> <e gis>4 |
}
l_motif_b = \relative {
  <fis,-1>4. ais8 |
  b4 gis |
  a8 cis d dis |
  e4 r |
  a,4 cis |
  d4 d |
  e4 e, |
  a8 e' a,4 |
}
l_motif_c = \relative {
  << {\voiceTwo a,4 r} \\ {\voiceThree\stemDown c'4 s} >> |
  << {\voiceTwo d,2} \\ {\voiceThree\stemDown\fdown b'8\rest <a-2>8[ b a]} >> |
  r16 e4 r16 g8 |
  a4 a, |
  c'4 <c, c'> |
  << {\voiceTwo b4 r8 c } \\ {\voiceThree d'8 g,4. } >> |
  << {\voiceTwo f4. f8 } \\ {\voiceThree r8 a4. } >> |
  << {\voiceTwo c,4 c8 r } \\ {\voiceThree e8 g s4} >> |
}
l_motif_d = \relative {         %49
  <b, gis'>4. <d b'>8 |
  c4. a'8 |
  gis4 b |
  << {\voiceTwo\shiftOnn a,4. r8} \\
     {\voiceThree\stemDown c'8 d s4 } >> |
  a,2 |
  d4 d |
  e4 e, |
  a4 a |
}

lowerVoice = \relative c {
  \voiceTwo
  \set fingeringOrientations = #'(down)
  \partial 8 {r8} |
  \repeat unfold 2 { \l_motif_a }
  \repeat unfold 2 { \l_motif_b }
  \repeat unfold 2 { \l_motif_c }
  \repeat unfold 2 { \l_motif_d }

  a'4 gis |
  fis4 e |
  d2 |
  r8 e e,4 |
  a'4 gis |
  fis 4. dis8 |

  e8 e, a b |
  e,8 <gis' b> <e gis> r |
  fis,4 ais4 |
  b4 gis4 |
  a4 d |

  r16 e dis e e,4 |
  a4 r16 a b cis |
  d4 d |
  s32 e8 s32 s16 e,4 |

  a8 a fis'16 a, fis' a, |
  e'16 a, cis' a, d a b' a, |
  cis16 a g' a, fis' a, f' a, |
  e'16 a, dis a d a gis' a, |

  cis16 a a a fis' a, fis' a, |
  e'16 a, e' a, dis a dis a |
  cis16 a a a fis' a, fis' a, |
  e'16 a, e' a, dis a dis a |

  <a e'>8 r\f a cis |
  e8 eis fis fis, |
  << {\voiceTwo cis'4 d} \\ {\voiceThree\stemDown s8 s8\p r <gis b>} >> |
  << {\voiceTwo a,8 d <e cis'> <e, b'>} \\ {\voiceThree\stemDown a'8 b s4} >>
  <a, cis' a'>4 a' |
  e4 <cis e> |
  <a d>2
}

\score {
  <<
    \new Staff = "Guitar" \with {
      midiInstrument = #"acoustic guitar (nylon)"
      instrumentName = #"Nº 5"
      \mergeDifferentlyDottedOn
      \mergeDifferentlyHeadedOn
%      \override StringNumber #'stencil = ##f
    } <<
      \global
      \clef "treble_8"
      \tempo "Andante."
      \context Voice = "upperVoice" \upperVoice
      \context Voice = "lowerVoice" \lowerVoice
    >>
%{
    % tabs are not completely developed
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
    \tempo 4 = 74
  }
}
