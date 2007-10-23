\version "2.10.33"

\header {
	title = "Étude 5"
	subtitle = ""
	poet = ""
	composer = \markup { "Mauro Giuliani" \small "(1780-1840)" }
	meter = "Allegretto"
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
 footer = "Mutopia-2007/10/23-1078"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2007. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

global =  {

   \set Staff.midiInstrument = "acoustic guitar (nylon)"   
   \clef "G_8" 
   \time 6/8
   \key g \major
   } 


soprano = \relative c' 
{
   \stemUp
<g b>4. \acciaccatura c8 b ais b
g4. g8 a b
c4 a8 g4 g8
a4. d8 cis c
<g b>4. \acciaccatura c8 b ais b
g4. g8 a b
a d fis b, e cis
d a a e'8. fis16 e8
d a a e'8. fis16 e8
d4. \acciaccatura g8 <d fis> <cis e> <d fis>
<e g>4. <eis gis>
<fis a> \acciaccatura b8 <fis a>8 <eis gis> <fis a>
<g b>4. <gis b>
<a c>4 <g b>8 <fis a>4 <e g>8
<d fis>4 <c e>8 <b d>4 <ais cis>8
<a c>4. r4 r8
r4 r8 <b d> <ais cis> <a c>
<g b>4. \acciaccatura c8 b ais b
g4. g8 a b
c4 a8 b4 g8
a4. d8 cis c
<g b>4. \acciaccatura c8 b ais b
g4. g8 a b
c g c d g, d'
r8 e dis e c a
b d g, a c fis,
g4. r8 d b'
c4 a8 r d, c'
b4 g8 r g b
a4 d8 d4 d8
d4. r8 d, b'
c4. r8 d, c'
b4 g8 r8 g b
a4. d
g,8 b d <a c>4.
<g b> <a c>
<g b>4 r8 <a c fis>4.
<g b g'>2. \bar"|."
}

basse = \relative c
 {
   \stemDown
g8_Dolce b d g, b d
g, b d g, b d
fis, a d g, b d
fis, a d fis, a d 
g, b d g, b d
g, b d g,4.
fis4. g4 a8
<d fis>4. <cis g'>\sf
<d fis>4. <cis g'>\sf
d8\p d d d d\cr d 
d d d d d d 
d d d d d d
d\! d d d d d
d\decr d d d d d
d d d d d d
d\! d d d d d
d d d r4 r8
g,_Dolce b d g, b d
g, b d g, b d
fis, a d g, b d
fis, a d fis, a d
g, b d g, b d
g, b d f4.
e b
c4. c
d d
g,8 b d g,4.
fis8 a d fis,4.
g8 b d g,4.
fis8 a d fis,8 a d
g,8 b d g,4.
fis8 a d fis,4.
g8 b d g, b d
fis,8 a d fis, a d
g,4. fis8\mf a d
g,8 b d fis, a d
g,4 s8 d'4 r8
<g, b d>2.\f
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
      tempoWholesPerMinute = #(ly:make-moment 144 8)
      }
    }
}
