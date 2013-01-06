\include "norsk.ly"
#(set-global-staff-size 20)

\header{
	title =       "3. VĔTA ZE SONÁTY G DUR"
	subtitle =    "3. SATZ AUS DER SONATE IN G-DUR"
	composer =    "Jiři Antonìn Benda"

	mutopiatitle = "3. Satz aus der Sonate in G-Dur"
	mutopiacomposer = "BendaJA"
	mutopiainstrument = "Piano"
	date = "18th Century"
	source = "Editio Supraphon Praha"
	style = "Classical"
	copyright = "Public Domain"

	filename = "Benda_SonateG3.ly"
	enteredby =  "Rune Zedeler"
	maintainer = "Rune Zedeler"
	maintainerEmail = "rz@daimi.au.dk"

 footer = "Mutopia-2013/01/06-45"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } } }
}

\version "2.16.1"

au =  {\stemUp \tieUp \slurUp}
ad =  {\stemDown \tieDown \slurDown}
ab =  {\stemNeutral \tieNeutral \slurNeutral}

su = {\change Staff = up}
sd = {\change Staff = down}

mela =  \relative c'' {
   \ab
   h8[^3\mf( d16 h]  g8)-- r |
   r <h d>[-. <c e>-. <h d>-.] |
   <<c \\ a_5_3>> a16 fis d8-- r |
   r <a' c>[-. <h d>-. <a c>-.] |
   h8_1( g'16 h, c8 g'16 cis,_2 |
   d8_3 g16 dis_2 e8)-. g,-. |
   fis[-2( g-1 c  h)\>] |
   a16-5( g fis  e)  d8\!-- r |  
   h'8[^3\f( d16 h]  g8)-- r |
   r <h d>[-. <c e>-. <h d>-.] |
   <<c \\ a_5_3>> a16 fis d8-- r |
   r <a' c>[-. <h d>-. <a c>-.] |
   \grace c16 h8( a16-2 h-3 \grace d16 c8 h16 c |
   \grace e16 d8 c16 d   e8)-. c -. |
   \grace c16 h8( a16 g \grace h16 a8 g16 fis |
   g4)-- g,-- |
}

melb =  \relative c'' {
   \au h8-2\p( e4-5  dis8)-2 e16( fis g fis  e8)-. h-. a8-2( d!4-5  cis8)-2 d16 e fis e d8-. a-. |
   \ab g8\f (  g') r g-3-- r g-- r g-- \grace g16 fis8( e16 d  h'8)-. d,-. cis16-3( \> d e cis  a8\!)-. r |
   \au fis'8( a16 fis  d8)-- r r <fis a>[-. <g h>-. <fis a>-.] <<g \\ e>> e,16-1_"l.h."( cis  a8)-- r r <e'' g>[-. <fis a>-. <e g>-.] |
   \ab \grace g16 fis8( e16-2 fis-3  \grace a16 g8 fis16 g 
   \grace h16 a8 g16 a  h8)-. g-. \grace g16 fis8( e16 d \grace fis16 e8 d16 cis  d4)-4-- d,-- |
   h'8^2\p( \cresc  e)  r e^3-- r e-- r e-- r e-- r e-- e16^5\f( \> d c! h  a4\!)-- 
   a8^2\p( \cresc  d)  r d^3-- r d-- r d-- r d-- r d-- d16^5\f( \> c h a  g4\!)--
   \grace f'16 e8( d16 c  \grace e16 d8 c16 h 
   \grace d16 c8 h16 a  \grace c16 h8 a16 g 
   \grace h16 a8 g16 fis  \grace a16 g8 fis16 e fis-3\p g a  fis) d4-- |  
}

basa =  \relative c' {
   g4 r8 d'16( h  g8)-- r8 r4 d4 r8 a'16( fis  d8)-- r8 r4 |
   g4-5-- a-- h-- c--  d8[( h-2 fis-5  g)-2] d4-- r16 c'( h a |
    g4) r8 d'16( h  g8)-- r8 r4 d4 r8 a'16( fis  d8)-- r8 r4 |
   g,8-5-. g'-. a,8-5-. g'-. h,8-5-. g'-. c,8-4-. e-. d4-1-- d,-- g-- r |
}

basb =  \relative c' {
   \su \ad g'4_- fis_- g_- r fis_- e_- fis_- r |
   \sd \ab e d cis a d g, a \su \ad r16 g'( fis e |
    d4) r8 a'16( fis  d8) r r4 \sd \ab a4 r8 e16(^"r.h."( cis  a4)--^"l.h." r |
   d8-5-. d'-. e,-5-. d'-. fis,-4-. d'-. g,-4-. h-. a4-1-- a,-- d-- r |
   r <gis-5 h-3 d-1> <a c> <gis h d> <a c> <gis h d> <a c> r |
   r <fis-5 a-3 c-1> <g! h> <fis a c> <g h> <fis a c> <g h> r |
   c,8-5-. a'-. h,-5-. g'-. a,-. fis'-. g,-. g'-. fis,-. d'-. e,-. cis'-. d,4-- r16 c''16 h a |
}

\score{
  \context PianoStaff <<
    \context Staff = "up" {
      \key g \major \clef "G" \time 2/4
      \repeat volta 2 {\mela} \melb \mela \bar "|."
    }
    \context Staff = "down" {
      \key g \major \clef "F" \time 2/4
      \repeat volta 2 {\basa} \basb \basa \bar "|."
    }
  >>
  \midi{}
  \layout{
  }
}
