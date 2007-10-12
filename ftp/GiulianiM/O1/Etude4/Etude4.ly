\version "2.10.33"

\header {
	title = "Étude 4"
	subtitle = ""
	poet = ""
	composer = \markup { "Mauro Giuliani" \small "(1780-1840)" }
	meter = "Allegro grazioso"
	opus = "Opus 1"
        maintainer = "Laurent Ducos" 
        maintainerEmail = "laurent-ducos@cerell.fr"
	arranger = ""
	instrument = "Guitare"
        style = "Classique"
	dedication = ""
	piece = ""
	source = "Statens musikbibliotek - The Music Library of Sweden"
	copyright = "Creative Commons Attribution-ShareAlike 3.0"

	mutopiacomposer = "GiulianiM"
	mutopiastyle = "Classical"
 footer = "Mutopia-2007/10/12-1049"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2007. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

global =  {

   \set Staff.midiInstrument = "acoustic guitar (nylon)"   
   \clef "G_8" 
   \time 2/4
   \key c \major
   } 


soprano = \relative c' 
{
   \stemUp
\partial 16*4 c16 d e f\mf
g8 g fis fis
g g e e
f f e e
d16( b) g8 c16 d e f
g8 g fis fis
g g f16 e d c
b a e' d r16 <e, c'> r <d b'>
<e c'>4 g16 a b c
r d8. ~ d16 b e d
r c8. ~ c16 a d c
b d, g b d c a b 
g8 <b d> <a c> <c fis>
<g b g'> <b d> < a c> <c fis>
<g b g'> <b d> < a c> <c fis>
<b g'> <b g'> <g b g'> <g b g'>
<g b g'>4 f'16 e d c
b8^slargandosi <g b> <g b> <g b>
<g b>4\fermata c16( d) e f
g8 g fis fis
g g e e
f f e e
d16( b) g8 c16 d e f
g8 g fis fis
g g f16 e d c
b a e' d r16 <e, c'> r <d b'>
c'4 d 
e g16( f) d e
c4 d 
e16 g, c e g( f) d e
c16.[ g32 c16. e32] g8 <g, d' f>
<c e>16.[ g32 c16. e32] g8 <f, g b>
<e g c>4 r \bar "|."
}

basse = \relative c
 {
   \stemDown
\partial 4 r4
e16 g e g dis g dis g
e g e g c, g' c, g' 
d g d g c, g' c, g'
g,4 r
e'16 g e g dis g dis g
e g e g e,4
f g8 g
r c r4
b8 b16 a gis4\sf
a8 a16 g fis4\sf
g d'
g16 d b' d, a'\f d, a' d,
g d b' d, a'\sf d, a' d,
g d b' d, a'\sf d, a' d,
g8 g d b
g4 r
r8 g b d
f4 r\mf
e16 g e g dis g dis g
e g e g c, g' c, g' 
d g d g c, g' c, g'
g,4 r
e'16 g e g dis g dis g
e g e g e,4
f g8 g
c16 g' e g b, g' d g
c, g' e g b,4 
c16 g' e g b, g' d g
c,4 g
c4 r8 b
c4 r8 g
c4  s \bar "|."
}

\score {
  {
    <<
      \new Staff = "giuliani-opus1" << 
        \global
        \new Voice = "voix1" { \soprano }
        \new Voice = "voix2" { \basse }
      >>   
    >>
  }
\layout { }

\midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 120 8)
      }
    }
}
