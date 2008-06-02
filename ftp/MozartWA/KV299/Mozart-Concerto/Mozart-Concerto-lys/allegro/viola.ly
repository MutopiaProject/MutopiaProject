\version "2.11.43"
#(set-global-staff-size 22)
\include "Misdefiniciones.ly"
#(ly:set-option 'point-and-click #f)

\header{
          title= "Concerto in C for Flute and Harp"
          composer = "W. A. Mozart (1756-1791) "
          opus = "K.299"
          instrument = "Viola "
          piece = \markup {\large  \bold "[ I. Allegro] "}
           mutopiacomposer= "MozartWA"
	mutopiaopus = "K.299"
	mutopiainstrument = "Violino I "
	source = "Breitkopf & Härtel (from complete works edition 1877-1883)"
	style = "Classical"
	copyright = "Public Domain"
	maintainer = "César Penagos"
	maintainerEmail = "penagos.cesar@gmail.com"

 footer = "Mutopia-2008/06/01-1026"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}



violaNotes = 
     \relative c' {
     \tempo 4=110
     \set Score.skipBars = ##t
     \set Staff.instrumentName= "Viola"
     \override Score.MetronomeMark #' transparent = ##t
     \set Staff.midiInstrument =  "string ensemble 1"
     \key c \major
      \clef alto 
      \time 4/4
      
%pagina 1
      
      
               c4. \f g8 e c e g | 
               c4. g8 e c e g |
               c4 r4 r2 |
               d,4 \f d \p (cis d) |
               e-. \f e \p (dis e) |
               f_\cresc ( g a b) | 
               c \f <a' c>8-. r <g b>-. r <f a>-. r|
               <e g>4. <d f>8 < c e>4 <<{e16( f g e )}\\{c16 (d e c )}>>|
               <f a>4  <<{a8-. r g-. r f-. r}\\{c8-. \p r b-. r a-. r}>>|
               <<{e'4. d8 c4 c16 ( d e c)}\\{g4. f8 e4 c'16 \f (b c g)}>>| 
               b8 d' b g f d b g |
               c e'  c g e g e c |
               f f f f g g g g |
               c,-. d-. e-. f-. g4 r |
               b8 \f d b g f d b g |
               c e' c gis a c a e |
               a g! c c, c a'4 a8|
               g b d g, c g e c |
               g' b d g, c g e c |
               g4 g' g, r |
               R1*2 |
               <<{g'16 ( a g f e4) }\\{e16 \p ( f e d c4)  } >> r2 |
               R1|
               <<{g'16 ( a g f e4) }\\{e16  ( f e d c4)  }>> r2 |
               R1 |
               <<{g16 (a g f e4) }\\{e16(f e d c4) }>> r2 |
               <<{c'16 ( d c bes! a4) }\\{a16 (bes! a g f4)  }>>r2 |
               <<{bes16 (c bes! a g4) }\\ { g16 (a g f e4) }>> r2  |
               R1*2 |
               
%pagina 3 

               
               <g \f g'>8 <g g'> <g g'> <g g'> <g g'> <g g'> <g g'> <g g'> |
               <g g'> <g g'> <g g'> <g g'> <g g'> <g g'> <g g'> <g g'> |
               <g g'>4 r r2 |
               R1*3 | 
               e'8 \f e e e f f f f |
               g g g g g g g, g |
               c e g e c e g e |
               c e g e c e g e |
               c4 c \p ( b a ) |
               g-. \f f \p ( e d ) |
               
%pagina 4 

               c4. \f g'8 \p e c e g |
               c4. g8 e c e g |
               c4 r4 r2 | \allowPageTurn
               d,4-. d ( cis d) |
               e-. e (dis e) |
               f ( g a b) |
               c4 r r2 | 
               R1*3 |
               r8 c \p c c c c c c|
               
%pagina 5
               
               r8 c c c c c c c |
               r c c c c c c c |
               a2 (g) |
               g4 r r2 |
               c'1~|
               c1 ~|
               c4 g2 g4 |
               g r r2 |
               R1*2| 
               
%pagina 6 

               r8 g,-. a-. b-. c-. d-. e-. fis-. |
               g4 r r2 |
               r8 g-. \f b-. g-. d-. g-. b,-. d-. |
               g,4 r r2 |
               R1*9 | 
               
%pagina 7

               d8^\piz \p r d' r gis r d r |
               c r a r fis r d' r |
               <g, d' >4 r r2 |
               R1|
               d8 r d' r gis r d r |
               c r a r fis r d' r |
               <g, d'>4 r r2 |
               R1 |
               
%pagina 8

               d'8^\arc \f fis a d, g d b g |
               d' fis a d, g d' b g |
               d4 d d, r |
               R1*2 |
               g'2 \p (b) |
               a (d,) |
               g (b) |
               a ( d,) |
               g, (f!) |
               e (c') |
               b b' (|
               c4) r r8 g8-. d-. b-. |
               c4 r r8 g'-. d-. b-. |
               
%pagina 9 

               a4 a r d, |
               r g r e |
               c'2 d4. (c8) |
               b8-. a-. b-. c-. d4 r |
               R1*2 |
               c2 (d) |
               g,4 r r2 |
               R1*3 | 
               
%pagina 10

               r2 g'8^\piz r d r |
               b4 r g'8 g d d |
               b4 r g'8 r d r |
               b8 r d r g r  d r |
               g,4 r <c e>4 r |
               d r d r | \allowPageTurn
               b2^\arc (c) |
               d8 d d d d d d d |
               d_\cresc d d d d d d d |
               
%pagina 11 

               <<{d4 \f g8-. r fis-. r e-. r}\\{ s4 e8 r d r c r}>>|
               <<{d4. c8 b4 b16 (c d b)}\\{b4. a8 g4 g16 (a b g)}>>|
               <<{e'4  g8-. r  fis-. r e-. r}\\{c4 e8-. \p r d-. r c-. r}>>|
               <<{d4. c8 b4 g'16 (a b g)}\\{b,4. a8 g4 g'16 \f (fis g d)}>>| 
               fis8 a fis d fis a fis d |
               g8 b g d b d b g |
               c c c c d d d d |
               b b b b c c c c |
               d d d d d d d d |
               d d d d d d d d |
               g,4 g' \p ( fis e ) |
               dis-.  \f (e \p d! c ) |
               b-. \f c \p ( b a) |
               gis \f r r2 | 
               R1 |
               
%pagina 12 
	
               <d' e>1 ( |
               <c e> )
               b2 e|
               e4-. e-. e-. r |
               d4. (f!8) e4 ( d) |
               c-. \f c \p (b a) |
               gis4-. \f a \p (g f) |
               e \f f \p ( e c ) |
               cis \f r r2 |
               R1 |
               <e cis'> \p |
               <f d'>|
               bes4 (g) a2 |
               a4-. a-. a-. r |
               
%pagina 13 

               bes2 (a) |
               a4 r r2 |
               R1*2 |
               f1 ~|
               f_\cresc |
               e \f |
               a4 r r2 |
               R1*2 |
               
%pagina 14 

               g'1 \p ~ |
               g4 r r2 |
               g1 \p ~|
               g4 r r2 | 
               R1 | \allowPageTurn
               r2 fis \fp ( |
               g4) r fis2 \fp (|
               g4) r8 g g,4 r8 g'8_\cresc |
               g,4 r8 g' g,4 r8 g' |
               g,4 \f r8 g' g,4 r8 g' |
               c,4. \f g8 e c e g |
               c4. g8 e c e g |
               c4 r r2 |
               
%pagina 15 

              d,4 \f d\p (cis d ) |
              e \f (e dis e ) |
              f_\cresc (g a b ) |
              c \f r r2 |
              R1*10 |
              
%pagina 16

               r8 g8-. \p a-. b-. c-. d-. e-. fis-. |
               g4 r r2 |
               r8 g8-. \f b-. g-. d-. g-. b,-. d-. |
               g,4 r r2 |
               R1*7 |
               
%pagina 17 

               c2. \p gis4 |
               a2. e4 |
               f2. (e4) 
               d4 (bes') a (c) |
               b!8-. r g'^\piz r b r g r |
               f r d r b r g' r |
               <c, g'>4 r r2 |
               R1 |
               
%pagina 18

               g8 r g' r b r g r |
               f r d r b r g' r |
               <c, g'>4 r r2 |
               R1 |
               g'8^\arc  \f  b d g, c g e c |
               g'8 b d g, c g e c |
               g4 g' g, r |
               R1*2 |
               c2 \p (e) |
               d (g,) |
               c (e) |
               d (g,) |
               
%pagina 19

               c (bes) |
               a (f) |
               e ( e') |
               f4 r r8 c'8-. g-. e-. |
               f4 r r8 c-. g-. e-. |
               d4 d' r g |
               r4 c, r a |
               f2 g4. (f8) |
               e-. d-. e-. f-. g4 r |
               R1*2 |
               f2 (g) |
               
%pagina 20 

               c,4 r r2 |
               R1*3 |
               r2 <c' e>8^\piz r < d f> r |
               <e g >4 r <<{e8 e f f }\\ {c8 c  d d }>>|
               <<{g4}\\{e4}>> r4 < c e>8 r < d f> r  |
               <e g> r < d f > r < c e> r <b d> r |
               <c e >4 r f r |
               g r g, r |
               e2^\arc (f) |
               g8 g' g g g g g g |
               g_\cresc g g g g g g g |
               g4 \f r c4. g8  |
               e c e g c4. g8 |
               g4. g8 e4. e8 |
               c4. c8 a4. a8 |

%Pagina 22 
 
               a8 cis d e f f fis fis |
               g b d g, c  g  e c |
               g' b d g, c g e c |
               g4 r r2 \fermata |
               <c, c'>4 \f <a'' c>8-. r <g b>-. r <f a>-. r |
               <e g>4. <d f>8 < c e>4 <<{e16 (f g e)}\\{c16 (d e c)}>>|
               <f a>4 <c a'>8-.  \p r <b g'>-. r < a f'>-. r |
               
%pagina 22 

               <<{e'4. d8 c4 c16 (d e c)}\\{g4. f8 e4 c'16 \f ( b c g ) }>>|
               b8 d' b g f d b g |
               c e' c gis a c a e |
               f f f f g! g g g |
               e e e e f f f f |
               g g g g g g g, g  |
               c e g e c e g e |
               c e g e c e g e |
               c4 r c'4. g8 |
               e c e g c4. g8 |
               e c e g e c e g |
               <c,, g' e'>4 r r2 
               \bar "|."
              
         

   }            


  \score {
     
     
     \new Staff =

     violaI \violaNotes

     \midi{}
     \layout{
     
     }
      
      
 }
     \paper{
                            
                  #(define page-breaking ly:page-turn-breaking)
                
                
               
                 between-system-padding = 5.0\mm
                 print-page-number = ##t
                 line-width=180\mm
                 ragged-last-bottom = ##t
     }
