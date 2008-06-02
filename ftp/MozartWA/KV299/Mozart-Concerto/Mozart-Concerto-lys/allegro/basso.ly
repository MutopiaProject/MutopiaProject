\version "2.11.45"
#(set-global-staff-size 22)
\include "Misdefiniciones.ly"
#(ly:set-option 'point-and-click #f)


\header{

           title = "Concerto in C for Flute and Harp"
	composer = "W. A. Mozart (1756-1791) "
	opus = "K. 299"
	instrument = "Contrabasso"
          mutopiacomposer= "Mozart W.A."
	mutopiaopus = "K.299"
	mutopiainstrument = "Contrabasso"
	source = "Breitkopf & Härtel (from complete works edition 1877-1883)"
	style = "Classical"
	copyright = "Public Domain"
	maintainer = "César Penagos"
	maintainerEmail = "penagos.cesar@gmail.com"
 footer = "Mutopia-2008/06/01-1026"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}


 bassoNotes= 
      \relative c{
     \set Score.skipBars = ##t
     \override Score.MetronomeMark #' transparent = ##t
     \set Staff.instrumentName = "Contrabasso"
     \set Staff.midiInstrument =  "string ensemble 1"
     \key c \major
      \clef bass 
      \time 4/4
     \tempo 4=110

%Pagina 1 

                c'4.^\markup{ \hspace #-4 \bold \large "[I. Allegro] " } \f g8 e c e g | 
                c4. g8 e c e g | 
               c4 c, \p (b c ) |
               d-. \f d \p ( cis d ) |
               e-. \f e \p ( dis e ) |
               f_\cresc ( g a b ) |
               c8 \f c c c c c c c |
               c c c c c c c c |
               
               c-. c, \p c c c c c c |
               c c c c c c' \f c c |
               b d b g f d b g |
               c e' c g e g e c |
               f f f f  g g g g |
               c,8-. \p d-. e-. f-. g4 r |
               b8 \f d b g f d b g|
               
 %pagina 2
               
               c8 e' c gis a c a e |
               f g! a e f f fis fis |
               g b d g,  c g e c |
               g' b d g, c g e c |
               g4 g' g, r |
               R1*2 |
               
               c4^\piz \p r e r |
               d r g, r |
               c r e r |
               d r g, r|
               c r c r |
               c r c r |
               c r c r |
               f r r2 |
               
 %pagina 3 

               R1 | 
               g8 \f g g g g g g g |
               g g g g g g g g |
               c,4 r r2 | \pageTurn
               R1*3| 
               
               e8 \f e e e f f f f |
               g g g g g g g, g |
               c e g e  c e g e |
               c e g e c e g e |
               c4 c' \p ( b a ) |
               g-. \f  f \p ( e d ) |
 
 %pagina 4 
               
               c4. \f g'8 \p e c e g |
               c4. g8 e c e g |
               c4 c, (b c ) |
               d-. d ( cis d) |
               e-. e (dis e ) |
               f ( g a b ) |
               
               c4 r r2 | 
               R1*3 | 
               c,4 \p r r2 |
               
%pagina 5 

               c4 r r2 |
               c4 r r2 |
               f2 (g) |
               c,4 r r2 |
               c4 r r2 |
               
               c4 r r2 |
               g'2 g, |
               c4 r r2 |
               R1*4 |

%pagina 6

               r8 g'-. \f b-. g-. d-. g-. b,-. d-. |
               g,4 r r2 | 
               R1*11 |
               
%pagina 7

              g8^\piz \p  r8 g' r d' r b r |
              
              g8 r b r g r g, r |
              d'4 r r2 |
              R1 |
              g,8 r g' r d' r b r |
              g r b r g r g,  r | 
              
%pagina 8

               d'8^\arc \f fis a d, g d b g |
               d'  fis a d, g d' b g |
               d4 d' d, r |
               R1*2 | 
               g4^\piz r4 b r | 
               a r d, r |
               g r b r | 
               
               a4 r d, r |
               g r g r |
               g r g r |
               g r g r |
               R1*2 | 
               
%pagina 9

               a4^\arc r d, r |
               g r e r | 
               c2 (d) |
               g8-. a-. b-. c-. d4 r |
               R1*13|
               
%pagina 10

               b,2 (c) |
               d4 r d r | \pageTurn
               d8_\cresc d d d d d d d |
              
              %pagina 11

               g8 \f g g g g g g g |
               g g g g g g g g |
               g \p g g g g g g g |
               g g  g g g g \f f f |
               fis a fis d fis a fis d |
               g b g d b d b g | 
               c c c c d d d d |
               
               b b b b  c c c c |
               d d d d d d d d |
               d d d d d d d d |
               g,4 g' \p (fis e) |
               dis-. \f e \p (d! c ) |
               b-. \f c \f (b a) |
               gis \f  r gis \p r | 
               a r a r |
               
%pagina 12 

               b r b r |
               c r c r | 
               d2 e4 e |
               a4-. b-. c-. r |
               d2 e4 e, |
               a-. \f c \p (b a ) |
               gis-. \f a \p ( g! f ) |
               
               e4-. \f f \p ( e d ) |
               cis \f r cis \p r |
               d r d r |
               e r e r |
               f r f r |
               g2 a4 a |
               d,-. e-. f-. r |
               
%pagina 13

               bes2 a4 a, |
               d r r2 |
               R1* 15 |
               
%pagina 14 

               g4 r g r |
               g_\cresc  r g r |
               g \f r g r |
               c4. \f g8 e c e g |
               c4. g8 e c e g |
               c4 c, \p ( b c ) |
               
%pagina 15 

               d4-. \f d \p (cis d ) |
               e-. \f e \p (dis e ) |
               f_\cresc (g a b ) |
               c4 \f r r2 | 
               R1*12 |
               
%pagina 16 

               r8 g-. \f b-. g-. d-. g-. b,-. d-. |
               
               g,4 r r2 |
               R1*9 |
               
%pagina 17 |

               f'2. \p cis4 |
               
               d4 ( e f fis) |
               g r r2 |
               R1| 
               c,8^\piz r c' r g r e r |
               c r e r g r c r |
               
%pagina 18 

               g4 r r2 |
               R1|
               c,8 r c' r g r e r |
               c r e r g r c r |
               g^\arc  \f b d g,  c g e c |
               
               g' b d g, c g e c |
               g4 g' g, r |
               R1*2 |
               c4^\piz  \p  r e r |
               d r g, r |
               c r e r |
               d r g, r |
         
%pagina 19

               c4 r c r c r c r c r c r |
               R1*2 |
               d2^\arc (g) |
               
               c, (a')|
               f (g) |
               c,8-. d-. e-. f-. g4 r|
               R1*3 |
               
%pagina 20 

               c,4 r r2 |
               R1*10|
               
%pagina 21
               
               g'4 r g r |
               g8_\cresc g g g g g g g |
               c,4 \f r4 c'4. g8 |
               e c e g c4. g8 |
               e c e g c a c e |
               a, f a c f, d f a |
               
               f cis d e f f fis fis |
               g b d g, c g e c |
               g' b d g, c g e c |
               g4 \fermata r r2 \fermata | \pageTurn
               c8 \f c' c c c c c c |
               c c c c c c c c |
               c-. c, \p c c c c c c |
               
%pagina 22 

               c c c c c c' \f c c |
               b d b g f d b g |
               c e' c gis a c a e |
               f f f f g! g g g 
               e e e e f f f f |
               g g g g g g g, g |
               
               c e g e c e g e |
               c e g e c e g e |
               c'4. g8 e c e g |
               c4. g8 e c e g |
               c4 c g e |
               c r r2 \bar"|."
               
               

 
}

\score {
     
      \new Staff =

    basso \bassoNotes

     \midi{}
     \layout{}
    }  
      
 
     \paper{
                              
               
                  between-system-padding = 5\mm
                 print-page-number = ##t
                 line-width=180\mm
                 ragged-last-bottom = ##t
                 
     }
