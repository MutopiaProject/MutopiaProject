\version "2.10.33"

\header {
	title = "Étude 3"
	subtitle = ""
	poet = ""
	composer = \markup { "Mauro Giuliani" \small "(1780-1840)" }
	meter = "Andantino mosso"
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
 footer = "Mutopia-2007/10/08-1048"
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
\partial 8 r8
r16 c a, r r c' a, r
r e'' e, r r e' e, r 
r a a, r r c' c, r
r b' b, r r gis' gis, r
r a' a, r r c' c, r 
r e' e, r r e' e, r
r g' g, r r b b, r
e4 r8 e
a8[ r16 b] c8[ r16 d]
e8[ r16 dis] e8[ r16 c]
a8[ r16 b] c8[ r16 a]
b8[ r16 a] gis8[ r 16 e] 
a8[ r16 b] c8[ r16 d]
e8[ r16 dis] e8[ r16 fis]
g8[ r16 e] b8[ r16 dis]
e4 e,8 r8
r16 cis' cis, r r e' e, r
r g' f, r r f' f, r %%possible erreur sur la septième mineure descendante ?
r d' d, r r b' b, r
r gis' gis, r r4
r16 f'' d, r r d' a, r %%début des décimes
r e'' c, r r c' c, r
r b' e, r r gis a b
a4 r8 e'16 d
cis8[ r16 d] e8[ r16 f]
g8[ r16 e] f8[ r16 e] 
d8[ r16 c] b8[ r16 a]
gis8[ r16 f] e8[ r16 c']
d8[ r16 c] b8[ r16 b]
c8[ r16 b] a8[ r16 a]
b8[ r16 d] gis,8[ r16 b]
a4 a, \bar"|."
}

basse = \relative c
 {
   \stemDown
\partial 8 e,8\mf
a8[ r16 b] c8[ r16 d]
e8[ r16 dis] e8[ r16 c]
a8[ r16 b] c8[ r16 a]
b8[ r16 a] gis8[ r16 e]
a8[ r16 b] c8[ r16 d]
e8[ r16 dis] e8[ r16 fis]
g8[ r16 e] b8[ r16 dis]
r e, g b e,8 r
r16\f a a' r r c, c' r
r e, e' r r e, e' r
r a,, a' r r c, c' r
r b, b' r r gis, gis' r
r a, a' r r c, c' r
r e, e' r r e, e' r
r g, g' r r b,, b' r
r e, g b e,8 e16\mf d
cis8[ r16 d] e8[ r16 f]
g8[ r16 e] f8[ r16 e]
d8[ r16 c] b8[ r16 a]
gis8[ r16 f] e e' b c
d8[ r16 c] b8[ r16 b]
c8[ r16 b] a8[ r16 a]
d8[ r16 f] e4
r16 a, c e a,8 a8\rest\f
r16 cis cis' r r e, e' r
r g, f' r r f, f' r
r d, d' r r b, b' r
r gis, gis' r r e, b'' r
r b, d' r r e,, b'' r
r a, c' r r f,, gis' r
r d c' r r e,, a' r
r a, c e a,4
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
      tempoWholesPerMinute = #(ly:make-moment 96 8)
      }
    }
}
