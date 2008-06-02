\version "2.11.43"
#(set-global-staff-size 22)
\include "Misdefiniciones.ly"
#(ly:set-option 'point-and-click #f)

\header{
          
          title = "Concerto in C for Flute and Harp"
	composer = "W. A. Mozart (1756-1791) "
	opus = " K. 299"
	piece = \markup {\large  \bold "[ I. Allegro ] "}
	instrument = "Violino II" 
          mutopiacomposer= "MozartWA"
	mutopiaopus = "K.299"
	piece = \markup {\large  \bold "[ I. Allegro] "}
	mutopiainstrument = "Violino II"
	source = "Breitkopf & Härtel (from complete works edition 1877-1883)"
	style = "Classical"
	copyright = "Public Domain"
	maintainer = "César Penagos"
	maintainerEmail = "penagos.cesar@gmail.com"
 footer = "Mutopia-2008/06/01-1026"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
    }


violinoIINotes = \relative c'{
     \set Staff.instrumentName = "Violino II"
     \allowPageTurn
     \set Score.skipBars = ##t
     \override Score.MetronomeMark #' transparent = ##t
     \set Staff.instrumentName= "Violino I I"
     \set Staff.midiInstrument = "string ensemble 1"
     \key c \major 
     \time 4/4 
     \tempo 4=110 
     \key c \major
     \time 4/4 
     
 %pagina 1 
 
               c'4. \f g8 e c e g |
                c4. g8 e c e g | 
                c4 r8 c, \p r b r c 
                d8-. \f d-. r d \p r cis r d |
                e-. \f e-. r e\p r dis r e |
                r_\cresc f r g r a r b |
                c4 \f a'8-. r g-. r f -. r |
                
                e4. d8 c4 r |
                r4 c8-. r b-. r a-. r |
                g4. f8 e4 r |
                g16 \f d b g g' g g g g d b g g' g g g |
                g e c g g' g g g g e c g g' g g g |
                a4 \grace{b 16} a8 g16 f e4 d |
                c16-. \p e-. d-. f-. e-. g-. f-. a-. g8-. a-. b-. c-. |
                g16 \f d b g g' g g g g d b g g' g g g |
                
 %pagina 2 
               
               g16 e c g c' c c c c a e c c' c c c |
               d f e g f a  g bes a g f e d c b! c |
               b (d) g-. g-.  g g g g c, (e) g-. g-. g g g g |
               b, (d) g-. g-. g g g g c, (e) g-. g-. g g g g |
               g4 <d, b' g'> g, r | c8 \p (g c g  c g c g )
               d' (g, d' g, d' g, d' g, ) |
               e'4 r g8-. a-. b-. c-. |
               
               c ( b a g) \grace { g16 } f8 e16 f a8 f | 
               \grace {dis16 (} e4) r8 e16-. f-. g8-. a-. b-. c-. |
               c ( b a g ) \grace {g16} f8 e16 f a8 f |
               e8 c'4  ( bes a g8 ~) |
               g8 f4 ( c' bes a8 ~) |
               a g4 ( c bes gis8 ~) |
               gis8-. a-. b!-. c-. e,-. f-. gis-. a-. |
               
%pagina 3 
               
               cis,8-. d-. cis-. d-. cis-. d-. e-. f-. |
               <e c'! e>4 \f e'4. f16 e d8 c |
               g8. (f16) e2 d4 |
               c16 g-. a-. b-. c-. d-. e-. d-. c8-. \p g-. d'-.  g,-. |
               e'-. g,-. e'-. g,-. c-. g-. d'-. g,-. |
               e'-. g,-. e'-. g,-. c-. g-. d'-. g,-. |
               e'-. g,-. d'-. g,-. c-. g-. b-. g-. |
               
               c16 \f d e f g a b c a, b c d e f g a |
               g, a b c d e f g g8 (f) e-. d-. |
               c4 r8 \times 2/3 {g'16 (a b} c4) r8 \times 2/3 { g16 (a b } |
                c4) r8 \times 2/3 { g16 [ ( a b ] } c8) \times 2/3 {g16 [ ( a b] } c8) \times 2/3 {g16 [(a b ] } |
                c4) r8 c8 \p r b r a |
                g-. \f g-. r f \p r e r d |
                
 %pagina 4 
 
               c4. \f g'8 \p e c e g |
               c4. g8 e c e g |
               c4 r8 c,8 r b r c |
               d-. d-. r d r cis r d |
               e-. e-. r e r dis r e |
               r f r g r a r b |
               
               c4 r r2 | 
               R1*3|
               r8 g \p g g g g g g |
               
%pagina 5

               r8 f f f f f f f |
               r e e e e e e e |
               e (d) c-. c-. c ( e d b) |
               c r g' r c r e r |
               f r a, r c r f r |
               
               e r g, r c r e r |
               r e,-. g-. c-. e-. c-. d-. b-. |
               c4 r r 2 |
               R1*2|
               
%pagina 6

               r8 g,-. a-. b-. c-. d-. e-. fis-. |
               g g'16 \trill \f ( fis32 g b8)  g-. d-. g-. b,-. d-. |
               g,-. \grace { a32} g16 ( fis32 g  b8) g-. d-. g-. b,-. d-. |
               g,4 r4 r2 |
               R1*7 |
               
%pagina 7

               g8 \p g g g  b b b b  |
               c c c c c c cis cis |
               d ( fis a fis d fis a fis ) |
               d (fis a fis d fis a fis ) |
               g4 g16 \trill (fis g a b4) r |
               g'4 g16 \trill ( fis g a b4) r |
               d,,8 (fis a fis d fis a fis ) |
               d (fis a fis d fis a fis ) |
               g4 g16 \trill ( fis g a b4) r |
               g'4 g16 \trill ( fis g a b4 ) r |
               
%pagina 8

               d,,4 \f r8 <a' fis'>8^\div  <b g'>  <b g'> <b g'> <b g'> |
               <a fis'>4 r8 <a fis'>8 <b g'> <b g'>  <b g'>  <b g'>  |
               <a fis'>4 <d, d' d'> d r | 
               g8^\uni \p (d g d g d g d) |
               a' (d, a' d, a' d, a' d, ) |
               b'4 r r2 | 
               r2 <a, fis'>2 ( |
               <g g'>4 ) r r2 |
               r2 <a  fis'>2 ( |
               <g g'>4 ) r r2 |
               R1*2 |
               r4 r8 g'8-. g-. b-. g-. d-. |
               g4 r8 g-. g-. b-. g-. d-. |
               e4 <g a>^\div  r  <fis a> |
               r <b, g'> r <b g'> |
               e4.^\uni c'8 b-. a-. g-. fis-. |
               g-. a-. b-. c-. d4 r |
               R1*2 |
               c2 (b8)  a-. g-. fis-. |
               g4 r r2 | 
               R1*3 |
               
%pagina 10 

               r2 b8^\piz r a r |
               g4 r b8 b a a |
               g4 r b8 r a r |
               g r fis r d' r c r |
               b4 r <g a > r |
               b8 r g r fis r fis r |
               R1|
               r8^\arc  g g g g g g g |
               fis16_\cresc fis fis fis  fis fis fis fis a a a a c c c c |
               
%pagina 11

               b4 \f e8-. r d-. r  c-. r |
               b4. a8 g4 r |
               r g8-. \p r fis-. r e-. r |
               d4. c8 b4 r |
               d'16 \f a fis d d' d d d d a fis d  d' d d d |
               d b g d  d' d d d d b g d d' d d d |
               e,4 \grace {d'16} c8 b16 a g4 fis |
               d'16 c b a g fis e d e8-. g-. c-. e-. |
               d,4 b''4. c16 b a8 g |
               d8. (c16) b2 a4 |
               <g, d' b'>4 r8 g'8 \p r fis r e |
               dis-. \f dis-. r e r d! r c |
               b-. \f b-.  r c \p r b r a |
               gis4 \f r4 r2 
               R1|
               
%pagina 12
               
               <b gis'>1\p  |
               <a a'> |
               a'2. (gis4) |
               a4-. d,-.  c-. r |
               b4. (b'8)  a4 (gis) |
               a8-.\f a-. r c \p r b r a |
               gis-. \f gis-. r a \p r g! r f |
               e-. \f e-.  r f \p  r e r d |
               cis4 \f r r2 |
               R1|
               <bes g'>2. \p <a g'>4 |
               <a f'>1 |
               d4. (e8) f4 (e) |
               d-. g,-. a-. r |
               
%pagina 13

               d2. (cis4) |
               d4 r r2 |
               R1*2 |
               f1 \p ~|
               f1_\cresc |
               e \f |
               a,4 r r2 |
               R1*2 |
               
%pagina 14

               ees''4. \p ( c8 ees) r c-. r |
               b4 r r2 |
               ees4. (c8 ees) r c-. r |
               b4 r r2 |
               R1|
               r8 g8 (fis g) r2 |
               r8 g (fis g) r2 |
               r8 b,8 b b r c c c_\cresc |
               r8 d d d r e! e e  |
               r f \f f f r f f f |
               <g, e'>4. \f g'8 e c e g |
               c4.  g8 e c e g |
               c4 r8 c,\p  r b r c | 
               
%pagina 15

               d8-. \f d-. r d \p r cis r d |
               d-. \f d-. r  e \p r dis r e |
               r f_cresc r g r a r b |
               c4 \f r r2 |
               R1*10|
               
%pagina 16 

               r8 g, \p a-. b-. c-. d-. e-. fis-. |
               g8 g'16 \f (fis32 g b8) g-. d-. g-. b,-. d-. | 
               g,8 \grace{a16} g16 (fis32 g b8) g-. d-. g-. b,-. d-. |
               g,4 r r2 |
               R1*7 |
               
%pagina 17

               r8 g' \p g g g g e4 ~|
               e8 e e e e e c4 ~|
               c8 c c c c c a4 ~ |
               a g a2 | g8 (b! d b g b d b ) |
               g ( b d b  g b d b ) |
               c4 c16 \trill (b c d e4) r |
               c' c16 \trill ( b c d e4) r |
               
%pagina 18

               g,,8 (b d b g b d b ) |
               g (b d b g b d b ) |
               c4 c16 \trill (b c d e4 ) r |
               c'4 c16 \trill ( b c d e4 ) r |
               b16 \f (d) g-. g-. g g g g c, (e) g-. g-. g g g g |
               b,16 (d) g-. g-. g g g g c, (e) g-. g-.  g g g g |
               g4 <d, b' g'>4 g, r |
               c8 \p (g c g c g c g) |
               d' (g, d' g, d' g, d' g,)|
               c4 r r2 | r2 <b d>2 ( |
               c4 ) r4 r2 |
               r2 <b d >2 (|
               
%pagina 19

               c4) r r2 |
               R1*2 |
               r4 r8 c'8-. c-. e-. c-. g-. |
               c4 r8 c,8-. c-. e-. c-. g-.  |
               a4 <d c'>4 r <d b'> |
               r4 <e c'> r <e c'> |
               a2 g8-. f-. e-. d-. |
               c-. d-. e-. f-. g4 r |
               R1*2 |
               f2 ( e8)  d-. c-. b-. 
               
%pagina 20

               c4 r r2 |
               R1*3|
               r2 c'8^\piz r b r |
               c4 r c8 c b b |
               c4 r c8 r b r |
               c r g r c r g r |
               <g c>4 r <d c'> r |
               <e c'>8 r c' r b r b r |
               
%pagina 21 

               R1|
               r8 c8^\arc c c c c c c |
               b16_\cresc b b b b b b b d d d d f f f f |
               <c e>4. \f g8 e c e g |
               c4. g8 e c e g |
               <c e>4. d8 <e, c'>4. b'8 |
               <f a>4. g8 <a, f'>4. e'8
               a8 e'16 g f a g bes a g f e d c b! c |
               b (d) g-. g-. g g g g c, (e) g-. g-. g g g g |
               b,16 (d) g-. g-. g g g g c, (e) g-. g-. g g g g |
               g,,4 r r2 \fermata |
               <g e' c'>4 \f a''8-. r g-. r f-. r |
               e4. d8 c4 r |
               r c8-. r b-. r a-. r |
               
%pagina 22 

               g4. f8 e4 r |
               g16 \f d b g g' g g g g d b g g' g g g |
               g d b g c' c c c c a f c c' c c c |
               a4 \grace {b16} a8 g16 f  e4 d |
               c16 d e f g a b c a, b c d e f g a |
               g, a b c d e f g g8 (f) e-. d-. |
               c4 r8 \times 2/3 {g'16 a b (} c4) r8 \times 2/3 { g16 a b (} |
               c4) r8 \times 2/3 {g16 [a b ] (} c8) \times 2/3 {g16 [ a b] (} c8 ) \times 2/3{g16 [a b ] (}|
               c4.) g8 e c e g |
               c4. g8 e c e g |
               c4 < g c e> < g c e> <g c e> |
               <g c e> r r2  \bar "|."
               
               
}

   \score {
     
     
     \new Staff =

     violinoII \violinoIINotes

     \midi{}
     \layout{
     indent = 2\cm
     }
      
      
 }
     \paper{
                              
                #(define page-breaking ly:page-turn-breaking)
                after-title-space = 5\mm
                 bottom-margin = 5\mm
                 raggedbottom = ##t
                 between-system-padding = 8\mm
                 print-page-number = ##t
                 line-width=182\mm
                 after-title-space = 0.5\mm
                 between-system-space = #(* 10 mm)
                 ragged-last-bottom = ##f
     }
