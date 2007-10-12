\version "2.10.33"

\header {
	title = "Étude 2"
	subtitle = ""
	poet = ""
	composer = \markup { "Mauro Giuliani" \small "(1780-1840)" }
	meter = "Allegretto grazioso"
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
 footer = "Mutopia-2007/10/08-1047"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2007. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

global =  {
   \set Staff.midiInstrument = "acoustic guitar (nylon)"   
   \clef "G_8" 
   \time 6/8 
   \key c \major
   } 


soprano = \relative c' 
{
   \stemUp
\partial 8 g'8
g4 g8 g4 g8
g4. r8 g8 f
e4 e8 g f d
c4. r8 c e
d4 d8 d4 d8
d4 b8 a c e
r g, b d c a
g4. r4 g8
c4 c8 c4 c8
c4. r8 c cis
d4 d8 d4 d8
d4. r8 d e
f g, f' e d c
b g b c d e
r8 a, c \acciaccatura c b a b
%%nouveau
<e, c'>4. r4 r8
b' d c \acciaccatura c b a g
<e c'>4. r4 r8
b' d c \acciaccatura c b a g
%%fin
<g e'> <g e'>\p <g e'> <g e'> <g e'> <g e'>
<g f'> <g f'> <g f'> <g f'> <g f'> <g f'>
<g e'> <g e'>\p <g e'> <g e'> <g e'> <g e'>
<g f'> <g f'> <g f'> <g f'> <g f'> <g f'>
r16 g g' g, r8 r16 g g' g, r8
r16 g g' g, r8 r16 g g' g, r8
r16 g g' g, r8 r16 g g' g, r8
r16 g g' g, r8 r16 g g' g, r8
r16 c e c e c r c e c e c 
r c e c e c r c e c e c 
r c e c e c r c e c e c 
r c e c g c r c e c g c
r b d b g b r b d b g b
c4. <b d g>
<e g c> <g, c e>8 <g c e> <g c e>
<e g c e>2.
}

basse = \relative c
 {
   \stemDown
\partial 8 r8\mf
c8 e g b, f' g
c, e g c,4 r8
c e g b,4 r8
c g' e c4 r8
b d g fis, a d
g, b d c4.
d d
g,8 d' b g4 r8
c e g c, e bes'
c, f a c,4 r8
fis,8 a d fis, a d 
g, b d g,4 r8
b4 b8 c d e
f4 f8 e d c
f4. d
%%re
c8\sf c\p c c c c
<c f>4. r4 r8
c8\sf c\p c c c c
<c f>4. r4 r8
%%fin
c4.\sf r4 r8
b8 d c b a g
c4.\sf r4 r8
b8 d c b a g
c4\f e16 g c,4 e16 g
f4 d16 g b,4 g16 g'
c,4\f e16 g c,4 e16 g
f4 d16 g b,4 g16 g'
c,4. gis\sf
a\sf e
f\sf fis\sf
g\ff g
g g
c4. g'
c c,8 g e
c'2. \bar"|."
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
      tempoWholesPerMinute = #(ly:make-moment 132 8)
      }
    }
}
