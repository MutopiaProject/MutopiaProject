%\version "1.4.9.uu1"
\include "paper16.ly"
\include "nederlands.ly"
\header {
  title             = "La Gracieuse"
  subtitle          = "Anmut  *  Gracefulness"
  composer          = "Johann Friedrich Franz Burgmüller (1806-1874)"
  opus              = "Opus 100."
  piece             = "25 Etudes faciles"
  meter             = "Moderato"
  copyright         = "Public Domain"
  mutopiatitle      = "La Gracieuse"
  mutopiacomposer   = "J.F.F. Burgmüller (1806-1874)"
  mutopiainstrument = "Piano"
  date              = "19th century"
  source            = "Collection Litolff, 19th century"
  style             = "Romantic"
  maintainer        = "Bas Wassink"
  maintainerEmail   = "basvanlola@zonnet.com"
  lastupdated       = "2002/Mar/20"

  tagline           = "\\parbox{\hsize}{\\thefooter\\quad\\small \\\\This music is part of the Mutopia project, \\texttt{http://www.mutopiaproject.org/}\\\\It has been typeset and placed in the public domain by " + \maintainer + ".\\\\Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}"
  footer            = "Mutopia-2002/03/20-217"
}

Global = \notes {\key f\major \time 3/4}

tsDownIIh = \property Voice.TextScript \override #'extra-offset = #'(0 . -2.5)
tsDownII = \property Voice.TextScript \override #'extra-offset = #'(0 . -2)
tsDownIh = \property Voice.TextScript \override #'extra-offset = #'(0 . -1.5)
tsDownI = \property Voice.TextScript \override #'extra-offset = #'(0 . -1)
tsDownh = \property Voice.TextScript \override #'extra-offset = #'(0 . -0.5)
tsZero = \property Voice.TextScript \revert #'extra-offset 
tsUph = \property Voice.TextScript \override #'extra-offset = #'(0 . 0.5)
tsUpI = \property Voice.TextScript \override #'extra-offset = #'(0 . 1)
tsUpIh = \property Voice.TextScript \override #'extra-offset = #'(0 . 1.5)
tsUpII = \property Voice.TextScript \override #'extra-offset = #'(0 . 2)
tsDownOd = \property Voice.TextScript \override #'extra-offset = #'(0 . -0.3)

crescendo = #'(italic "cresc.")


VoiceI = \notes \relative c'' {
  \repeat volta 2 {
  \stemBoth [c8^"3" ( d32 c b \tsDownI c^"1"] \tsZero \tsUpIh [f8^"3" \tsZero g32 f e \tsDownOd f^"1" ] \tsZero ) a8^"3" r
  [c,^"3" ( d32 c b \tsDownh c^"1"] \tsZero \tsUpI [g'8^"3" \tsZero a32 g fis \tsDownOd g^"1" ] \tsZero ) bes8 r
  [e,^"3" ( f32 e dis e^"1"] \tsDownOd [g8^"3" \tsZero a32 g fis g^"1" ] ) c8^"4" r
  [c^"2"\cr ( \tsDownOd d32^"1" \tsZero e f g\rc] a8\decr [g32 f e d ] \tsUph ) c8^"2"\rced r
  
  \scriptDown \property Voice.TextScript \override #'extra-offset = #'(-0.5 . 0) [c->^"3" (  \tsZero \scriptBoth d32 c b c] [a8^"1" \tsDownOd bes32^"4" \tsZero a gis \tsUpI a^"5"] \property Voice.TextScript \set #'extra-offset = #'(0.7 . -0.3) ) d,8^"1" r
  \property Voice.TextScript \set #'extra-offset = #'(-0.5 . -0.5) [bes'^"3" ( \tsZero c32 bes a bes] [g8^"1" \tsDownOd a32^"4" \tsZero g fis g ] ) d8 r
  [e^"3" ( f32 e dis \tsDownOd e^"1"] [g8 a32 g fis g^"1"] [\tsZero \tsUpI c8^"3" d!32 c b \tsZero \tsDownOd c^"1"] \tsZero
  \property Voice.TextSpanner \set #'type = #'dotted-line
  \property Voice.TextSpanner \set #'edge-height = #'(0 . 3.5)
  \property Voice.TextSpanner \set #'edge-text = #'("8va " . "")
  \property Staff.centralCPosition = #-13
  [f8^"3"\spanrequest \start "text" \tsDownIIh g32_#'(italic "dim.") \tsZero f e f^"1"] \tsDownOd [c'8^"3" d32 c b c^"1" ] \tsZero ) f8^"4"\spanrequest \stop "text" \property Staff.centralCPosition = #-6 r
  }
  
  <g,,,4. c e> [<g8 c e-. (> <g b d-.> <g c e-.>]
  \property Voice.Script \override #'extra-offset = #'(0 . 0.5) <g4. b ) f'-^> \property Voice.Script \revert #'extra-offset [<g8 b f'-. (> <g b f'-.> <g b e-.>]
  [<g b e-.> <g_\crescendo b d-.> <g b e-.> <g b d-.> <g b e-.> <g b d-.>]
  [<g8 ) c^"3" (> d'32^"4" c b c] \tsUpIh [e8^"3" \tsZero f32 e dis e] ) g8 r
  
  <g,4. c e> [<g8 c e-. (> <g b d-.> <g c e-.>]
  \property Voice.Script \override #'extra-offset = #'(0 . 0.5) <g4. b ) f'-^> \property Voice.Script \revert #'extra-offset [<g8 b f'-. (> <g b f'-.> <g b e-.>]
  [<g b e-.> \tsDownh <g_\crescendo b d-.> \tsZero <g b e-.> <g b d-.> <g b e-.> <g b d-.>]
  \tsDownI <g_#'(italic "dim. e poco rit.") ) c-.> c4 c c8
  \bar "||"
  }

VoiceII = \notes \relative c {
  \property Voice.DynamicText \override #'extra-offset = #'(0 . 0.5) \property Voice.TextScript \override #'extra-offset = #'(1.5 . 1) <f2 a c^\p^#'(italic "molto legato e leggiero")> \tsZero <f8 a c-. (> <f a ) c-.>
  <e2 bes' c> <e8 bes' c-. (> <e bes' ) c-.>
  <g2 bes c> <g8 bes c-. (> <g bes ) c-.>
  <f2 a c> <f8 a c-. (> <f a ) c-.>

  <d2 fis c'> <d8 fis c'-. (> <d fis ) c'-.>
  <g2 bes> <g8 bes-. (> <g ) bes-.>
  <c, g' bes> r <c g' bes> r <c g' bes> r
  <f2 a> \property Voice.DynamicText \set #'extra-offset = #'(0 . 2) \property Voice.TextScript \override #'extra-offset = #'(2 . 2.5) f,8^\pp^#'(large (italic "Fine.")) r
  
  \property Voice.TextScript \set #'extra-offset = #'(-0.5 . -0.5) \property Voice.DynamicText \set #'extra-offset = #'(0 . 1)
  [c''8^"3"^\mf ( d32 c b c-.] ) g2
  [d'8^"2" ( e32 d cis d] ) g,2
  [<g8 f'> <g f'> <g f'> <g f'> <g f'> <g f'>]
  \property Voice.noAutoBeaming = ##t <c2 e> ~ <c8 e> \property Voice.TextScript \override #'extra-offset = #'(0 . 0) g-.^"5"
  
  \tsZero \property Voice.noAutoBeaming = ##f [c8^"3" ( d32 c b c-.] ) g2
  [d'8^"2" ( \tsZero e32 d cis d] ) g,2
  [<g8 f'> <g f'> <g f'> <g f'> <g f'> <g f'>]
  <c_#'(large (italic "D.C. al Fine.")) e> [c-.^"1" ( <b c-.> <bes c-.> <a c-.> <g ) c-.>]
  }

\score {\notes {
\context PianoStaff <
  \property PianoStaff.midiInstrument = "acoustic grand"
  \property PianoStaff.instrument = #'(Large "8. ")
  \context Staff = "up" <
    \Global \clef treble
    \context Voice=VcI \VoiceI
  >
  \context Staff = "down" <
    \Global \clef bass
    \context Voice=VcII \VoiceII
  >
>
}
\paper {}
\midi {\tempo 4=100}
}

