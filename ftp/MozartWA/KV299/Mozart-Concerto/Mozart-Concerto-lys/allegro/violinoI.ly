     \version "2.11.43"
     #(set-global-staff-size 22)
     \include "Misdefiniciones.ly"
     #(ly:set-option 'point-and-click #f)
     
     \header{
     
     
	title = "Concerto in C for Flute and Harp"
	composer = "W. A. Mozart (1756-1791) "
	opus = "K. 299"
	instrument = "Violino I "
          piece = \markup {\large  \bold "[ I. Allegro ] "}
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

     

    

     violinoINotes = \relative c'{
     \allowPageTurn
     \set Score.skipBars = ##t
     \override Score.MetronomeMark #' transparent = ##t
     \set Staff.instrumentName= "Violino I"
     \set Staff.midiInstrument = "string ensemble 1"
     \key c \major 
     \time 4/4 
     \tempo 4=110 
   

     %page 1

               c''4. \f g8 e c e g | 
               c4. g8 e c e g | 
               c4 r8 c,, \p r b r c |
               d8-. \f d-. r d \p  r cis r d |
               d-. \f d-. r e \p r dis r e  |
               r_\cresc  f r g r a r b | 
               c4 \f c'8-. r b-. r a-. r | 
               g4. f8 e4 r |
               r4 a8-. r g-. r f-. r |
               e4. d8 c4 r | 
               <d f>4^\div \f <f d'>2 <d f>4 |
               <c e > <e c'>2 <c e>4 |
               d4^\uni \grace {g16} f8 e16 d c4 b |
               c16-. \p  e-. d-. f-. e-. g-. f-. a-.  g8-. a-. b-. c-. |
               <d,f>4^\div \f < f d'>2 <d  f>4 | 

     %page 2

                    <c e>4 <e c'>2 <c e>4 | 
                    d16^\uni f e g f a g bes a g f e d c b! c | 
                    <d, b' g'>4^\div r8 <d' b'>8  <e c'>8 <e c'> <e c'> <e c'>| 
                    <d b'>4 r8 <d b'> <e c'> <e c'> <e c'> <e c'> | 
                    <d b'>4 <d, b' g'> g, r | 
                    e'8^\uni \p (c e c  e c e c) | 
                    f ( d f d  f d f d ) |
                    g4 r g'8-. a-. b-. c-. |
                    c (b a g) \grace {g 16(} f8) e16 f a8 f |
                    \grace {dis 16(} e4) r8 e16-. f-. g8-. a-. b-. c-. |
                    c (b a g ) \grace{g 16(} f8) e16 f a8 f |
                    e8 c'4 (bes a g8~ ) |
                    g8 f4  (c' bes a8~ ) |
                    a8 g4 (c bes gis8 ~) |
                    gis a-. b!-. c-. e,-. f-. gis-. a-. |
               
     %page 3 
               
                    cis,8-. d-. e-. f-. e-. f-. g!-. a-. |
                    <e, c'! g'>4 \f g'4. a16 g f8 e |
                    e8.(d16) c2 b4 |
                    c4 r \grace{ f16(} e8) \p d16 e \grace{ g16(} f8) e16 f |
                    g8 (c) g-. g-. \grace{ f 16(} e8) d16 e \grace { g16(} f8) e16 f |
                    g8 (c) g-. g-. \grace {f16(} e8) d16 e \grace {g16(} f8) e16 f |
                    g16 ( a g a f g f g  e f e f d e d e) |
                    c16 \f d e f   g a b c   a, b c d  e f g a |
                    g, a b c  d e f g  g8 (f) e-. d-. |
                    <g,, e' c'>4 r8 \times 2/3 { g'' 16 (a b } c4) r8 \times 2/3 {g16 (a b } |
                     c4)  r8 \times 2/3 { g16 ([a b ]} c8) \times 2/3{ g16 ([a b] } c8) \times 2/3{ g16 ([a b] }
                     c4) r8 c,8 \p r b r a |
                    g8-. \f g-. r f \p r e r d |
     %pagina 4
                    
                   c4.\f g'8 \p e c e g | 
                   c4. g8 e c e g |
                   c4 r8 c, r b r c |
                   d-. d-. r d r cis r d | 
                   e-. e-. r e r dis r e |
                   r f r g r a r b |
                   c4 r r2 |
                   R1*3 |
                   r8 g \p g g g g g g |
                   
    %pagina 5
               
                    r8 a a a a a a a | 
                    r g g g g g g g|
                    g ( f) e-. e-. e (g f d) |
                    c r c' r e r g r |
                    a r c, r f r a r |
                    g r c, r e r g r |
                    r g,-. c-. e-. g-. e-. f-. d-. |
                    c4 r r2 | R1*2 |
                    
     %pagina 6 
                    
                    r8 g-. a-. b-. c-. d-. e-. fis-. |
                    g-. g16 \trill (fis32 g b8) g-. d-. g-. b,-. d-. | 
                    g,8-. \grace {a 32 } g16 ( fis32 g b8) g-. d-. g-. b,-. d-. |
                    g,4 r r2 | 
                    R1*7 |
                    
     %pagina 7
     
                    g'8 \p g g g  g g g g |
                    e e e e  e' e e e |
                    c'4 (a8) r a4 (fis8) r |
                    fis4 (d8) r c4 (a8) r |
                    b4 b16 \trill (a b c d4) r4 |
                    b'4 b16 \trill (a b c d4) r |
                    c4 (a8) r a4 (fis8) r |
                    fis4 (d8) r c4 (a8) r |
                    b4 b16 \trill (a b c d4 ) r |
                    b'4 b16 \trill (a b c d4) r |
                    
     %pagina 8 
                  
                    d,,4 \f r8 <d' a'>8 <d a'> <d a'> <d a'> <d a'> |
                    <d a'>4 r8 <d a'> <d a'> <d a'> <d a'> <d a'>|
                    <d a'>4 <d, d' d'> d r |
                    b'8 \p (g b g  b g b g ) |
                    c (a c a c a c a) |
                    d4 r d,8-. e-. fis-. g-. 
                    g (fis e d) \grace {d16} c8 b16 c e8 c |
                    \grace{ais 16} b4 r8 b16-. c-. d8-. e-. fis-. g-. |
                    g8 ( fis e d ) \grace {d16} c8 b16 c e8 c |
                    b8 g'4 (f! e d8 ~ ) |
                    d8 c4 (g' f! e8 ~) |
                    e8 d4 (g f! dis8 ) |
                    e8-. g-. c-.  e-. d4 r |
                    e,8-. g-. c-. e-. d4 r |
                    
     %pagina 9
     
                    r4 <e, c'>4 r <d c'> |
                    r <d b'> r <e b'> |
                    a4.  e'8 d-. c-. b-. a-. |
                    g8-. a-. b-. c-. d4 r | 
                    R1*2 |
                    e2 (d8 ) c-. b-. a-. |
                    g4 r r2 |
                    R1*3 |
                    
     %pagina 10
          
                    r2 g'8^\piz r fis r |  
                    g4 r4 g8 g fis fis |
                    g4 r g8 r fis r |
                    g r a r b r a r |
                    g4 r e r |
                    d8 r b r a r c r |
                    R1 |
                    r8^\arc b8 b b b b b b |
                    a16_\cresc a a a a a a a c c c c fis fis fis fis |
                    
     %pagina 11 
     
                    g4 \f g8-. r fis-.  r e-. r |
                    d4. c8 b4 r |
                    r e8-. \p r d-. r c-. r |
                    b4. a8 g4 r |
                    <d c'>4 \f <d' c'>2 <d, c'>4 |
                    <d b'>4 <d' b'>2 <d, b'>4 |
                    a'4 \grace {fis'16} e8 d16 c b4 a |
                    d'16 c b a g fis e d e8-. g-. c-. e-. |
                    d,,4  d''4. e16 d c8 b |
                    b8. (a16) g2 fis4 |
                    g4 r8 g,  \p r fis r e |
                    dis-. \f dis-. r e \p r d! r c |
                    b-.  \f b-. r c \p r b r a |
                    r gis \p ( b e ) r gis, (b e ) |
                    r a, (c e) r a, ( c e ) |
                    
   %pagina 12 
          
                    r8 b (d e ) r b (e gis) |
                    r c, (e  a) r c, (e a) |
                    r4 d4 ( c b) |
                    c-. gis-. a-. r |
                    f!4. (d'8)  c4 (b) |
                    a8-. \f a-. r c \p r b r a |
                    gis-. \f gis-. r a r g r f |
                    e8-. \f  e-. r f \p r e r d 
                    r cis \p (e  a) r cis, (e a ) |
                    r d, (f a )  r d, (f a ) |
                    r e (g bes) r e, (cis' e) |
                    r a,-. a'-. f-. d-. a-. f-. d-. |
                    r4 bes'4 (a g ) |
                    f4-. cis-. d-. r |
                    
  %pagina 13 
                       
                    g4. (a16 bes ) f4 e \trill |
                    d r r2 | 
                    R1*2 |
                    f1 \p ~|
                    f1_\cresc |
                    e1 \f |
                    a4 r r2 |
                    R1*2 |
                    
   %pagina 14
                    
                    g'4. (ees8 g) r ees-.  r |
                    d4 r r2 |
                    g4. (ees8 g) r ees-. r |
                    d4 r r2 |
                    R1|
                    r8 g8 (fis g) r2 |
                    r8 g (fis g) r2 |
                    r8 d, d d r e!_\cresc e e |
                    r f f f r g g g |
                    r a \f a a r <d, b'> <d b'> <d b'> |
                    <g, e' c'>4. \f g''8 e c e g |
                    c4. g8 e c e g |
                    c4 r8 c,, \p r b r c |
                    
  %pagina 15 
                  
                  d8 \f d r d \p r cis r d |
                  e-. \f e-. r e \p r dis r e |
                  r f_\cresc r g r a r b |
                  c4 \f r r2 | 
                  R1*10 |
                  
   %pagina 16
   
                    r8 g-. \p a-. b-. c-. d-. e-. fis-. |
                    g g16 \trill \f (fis32 g  b8) g-. d-. g-. b,-. d-. |
                    g,8 \grace {a 32} g16 (fis32 g  b8) g-. d-. g-. b,-. d-. |
                    g,4 r r2 |
                    R1*7|
                    
  %pagina 17 
                    
                    r8 e'' \p e e e e d (b) |
                    a c c c c c bes (g) |
                    f a a a a a g (e) |
                    d4 ( cis) a' (d,) |
                    f' (d8) r d4 (b!8) r |
                    b4 ( g8) r f4 (d8) r |
                    e4 e16 \trill ( d e f g4) r |
                    e'4 e16 \trill ( d e f g4 ) r |
                    
   %pagina 18
   
                         f4 (d8) r d4 (b8) r |
                         b4 (g8) r f4 (d8) r |
                         e4 e16 \trill ( d e f g4) r |
                         e'4 e16 \trill ( d e f g4 ) r |
                         <g,, g'>4 \f r8 <d'' b'>8 <e  c'> < e c'> <e c'> <e c'> |
                         <d b'>4 r8 < d b'>8 <e c'> <e c'> <e c'> <e c'> |
                         <d b'>4 <d, b' g'> g, r |
                         e'8 \p (c e c e c e c ) |
                         f (d f d f d f d  )  |
                         e4 r g8-. a-. b-. c-. |
                         c (b a g ) \grace {g16} f8 e16 f a8 f |
                         \grace {dis16(} e4) r8 e16-. f-. g8 a-. b-. c-. |
                         c8 ( b a g ) \grace { g16} f8 e16 f  a8 f |
                         
   %pagina 19
   
                         e8 c'4 ( bes a g8 ~) |
                         g8 f4 (c' bes a8 ~) |
                         a8 g4 (c bes gis8 ) |
                         a8-. c-. e-. a-. g4 r |
                         a,8-. c-. e-. a-. g4 r |
                         r < a, f'>4 r <g f'> |
                         r4 <g e'> r < a e'> |
                         d4. (f8) e-. d-. c-. b-. |
                         c-. d-. e-. f-. g4 r |
                         R1*2 |
                         a,2 (g8) f-. e-. d-. |
                         
  %pagina 20
                    
                         c4 r r2 |
                         R1*3 |
                         r2 c''8^\piz r8 b r |
                         c4 r c8 c  b b |
                         c4 r c8 r b r |
                         c r g r c r b r |
                         <e,, c' g'>4 r <f c'  a'> r |
                         g'8 r e r d r f r |
                         
 %pagina 21
                         R1|
                         r8 e8^\arc e e e e e e |
                         d16_\cresc d d d d d d d f f f f b b b b |
                         <e, c'>4. \f g8 e c e g |
                         c4. g8 e c e g |
                         c4. b8 a4. g8 |
                         f4. e8 d4. cis8 |
                         d16 f e g f a g bes a g f e d c! b! c |
                         <b g'>4 r8 <d b'> <e c'> <e c'> <e c'> <e c'> |
                         <d b'>4 r8 < d b'>  <e c'> <e c'> <e c'> <e c'>|
                         g,,4 r r2 \fermata |
                         <g e' c'>4 \f c''8-. r b-. r a-. r |
                         g4. f8 e4 r |
                         r a8 r g r f r |
                         
  %pagina 22 
                         e4. d8 c4 r |
                         < d f >4 \f <f d'>2 < d f>4 |
                         <c e > <e c'>2 <c e >4 |
                         d4 \grace{g16} f8 e16 d  c4 b |
                         c16 d e f g a b c a, b c d e f g a |
                         g, a b c d e f g g8 (f) e-. d-. |
                         <g,, e' c'>4 r8 \times 2/3 {g''16 ( a b } c4) r8  \times 2/3 {g16 ( a b } |
                         c4) r8  \times 2/3 {g16 ( [a b ]} c8)  \times 2/3 {g16 ( [a b] } c8)  \times 2/3 {g16 ( [a b] } |
                         c4.) g8 e c e g |
                         c4. g8 e c e g |
                         c4 <e, c'> <e c'> <e c'> |
                         <e c'>  r r2 
                         \bar "|."


}
     \score {
     
     
     \new Staff =

     violinoI \violinoINotes

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
                 line-width=180\mm
                 after-title-space = 0.5\mm
                 between-system-space = #(* 10 mm)
                 ragged-last-bottom = ##t
     }
