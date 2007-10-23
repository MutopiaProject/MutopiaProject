\version "2.10.33"

\header {
	title = "Étude 6"
	subtitle = ""
	poet = ""
	composer = \markup { "Mauro Giuliani" \small "(1780-1840)" }
	meter = "Allegretto con moto"
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
 footer = "Mutopia-2007/10/23-1079"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2007. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

global =  {

   \set Staff.midiInstrument = "acoustic guitar (nylon)"   
   \clef "G_8" 
   \time 2/4
   \key a \major
   } 


soprano = \relative c' 
{
   \stemUp
\partial 16*3 a16 gis a
<cis e>4 r16 <a cis> <d fis> <cis e> 
<b d>4 r16 b ais b 
<d e>4 r16 <gis, b> <cis e> <b d>
cis4 r16 e a gis 
gis16( fis) eis fis r cis fis e
e d cis d r e, b' d
d( cis) b a gis'( fis) d b
r a cis a b a' gis a 
<cis, e>4 r16 <a cis> <d fis> <cis e>
<b d>4 r16 b' ais b
<d, e>4 r16 <gis, b> <cis e> <b d>
cis4 r16 a b cis
r a d a r a e' a,
gis'( fis) e d cis( d) fis, b 
r cis, e a r e b' e
<b d>4  cis16 a b cis 
d8 e fis16 d gis d
a' cis, e a eis( fis) d b
dis( e) cis a cis( d) b gis
r a cis e a cis e cis
d( b) gis e d e b e
cis e( a) gis \acciaccatura { fis16[ gis] } fis e d cis
\acciaccatura { b16[ cis] } b a gis fis \acciaccatura { e16[ fis] } e d cis b
r a' cis e a cis e cis
d( b) gis e d e b e
cis e a gis \acciaccatura { fis16[ gis] } fis e d cis
\acciaccatura { b16[ cis] } b a gis fis \acciaccatura { e16[ fis] } e d cis b
r e a cis r cis fis e
e d cis d r b e d
d( cis) b cis fis, d' e, cis'
d, b' cis, a' fis a gis b
a cis e a gis( e) d b
a cis e a gis( e) d b
a4 <cis e a>
<cis, e a>2 \bar"|."
}

basse = \relative c
 {
   \stemDown
\partial 16*3 r8.
r16\mf a( cis) e a,4
r16 e' b gis e4
r16 e( gis) b e,4
a16 a' e cis a4
d ais
b gis
a d
e <e, gis'>
r16 a( cis) e a,4
r16 e' b gis e4
r16 e( gis) b e,4 
a16 a' e cis a a' gis g
fis4 cis
d2
e,4 gis
r16 e fis gis <a a'> a' gis g
fis a cis, a' d,8 b
a4 d
e, e
a\f a
e e
a a
e e
a a
e e
a r
e e
a ais\sf
b gis
a fis'8 e
d cis d e,
a4 e
a e
a a'\f
a,2
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
      tempoWholesPerMinute = #(ly:make-moment 76 4)
      }
    }
}
