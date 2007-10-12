\version "2.10.33"

\header {
	title = "Étude 1"
	subtitle = ""
	poet = ""
	composer = \markup { "Mauro Giuliani" \small "(1780-1840)" }
	meter = "Maestoso"
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
 footer = "Mutopia-2007/10/08-1046"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2007. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

global =  {
   \set Staff.midiInstrument = "acoustic guitar (nylon)"   
   \clef "G_8" 
   \time 4/4 
   \key c \major
   } 


soprano = \relative c' 
{
   \stemUp
\partial 8*3 g8 a b
c2 c8. g16 e'8. b16
c2 r8 g8 b c
d2 d8. g,16 f'8. e16
d2 r8 g,8 d' f
e4 e e e
e2 r8 c b a
b d g, b a c fis, a
g4 r8 d'8 d4 r8 d8
d4 r8 d8 \acciaccatura d8 c b c e
d4 r8 d8 d4 r8 d8
d4 r8 d8 \acciaccatura d8 c b c a
g8. d16 g8. b16 d4 <d, a' c>
<d g b>8. d16 g8. b16 d4 <a c fis>
<g b g'>8 g8 g8 g g g b4
c cis d e
f2 r4 b,
c cis d e
f2 r4 e
f cis d e
f8 e( g) f e d c b
a g fis g gis a ais b
c2 c8. g16 e'8. d16
c2 r8 g b c
d2 d8. g,16 f'8. e16
e8 c e c f c g' c,
r8 c a' c, r8 a cis g'
g a, f' a, r8 g d' f
f( e) d c b a e' d
r8 e, g c r8 d, g b
c, c' e, e' g, g' e, e'
c, c'  g, g' e, e' g, g'
c4 s4 <g c e> s4
<e g c>2 s2
}

basse = \relative c
 {
   \stemDown
\partial 8*3 r8\mf r4
c8 g' e g c,4 r
c8 g' e g c,4 r
b8 g' d g b,4 r4
b8 g' d g b,4 r4
c8\< g' e g b, gis' d gis\!
c, a' e a a,4 b8 c
d4 r d r
g,8 d' b d fis, d' a d
g,8 d' b d fis, d' a d
g,8 d' b d fis, d' a d
g,8 d' b d fis, d' a d
g,4\f r4 r4 fis
g r r d'
g,4\p r r g8 g'
a, g' ais, g' b, g' cis, g'
d g( a) g g g g, g'
a, g' ais, g' b, g' cis, g'
d g( a) g g g cis, g'
d g e g f g cis, g'
\set crescendoText = \markup { \italic "dolce." }
\set crescendoSpanner = #'dashed-line
d2\< r2\!
r1
c8\mf g' e g c,4 r4
c8 g' e g c,4 r
b8 g' d g b,4 r4
c bes' a e
f2 e
d b
c f,
g g
c4 e g e
c g e g
c r c r
c2 r2
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
      tempoWholesPerMinute = #(ly:make-moment 112 4)
      }
    }
}
