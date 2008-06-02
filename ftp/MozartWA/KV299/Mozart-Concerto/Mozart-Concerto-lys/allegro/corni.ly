\version "2.11.43"
#(set-global-staff-size 23)
\include "Misdefiniciones.ly"
#(ly:set-option 'point-and-click #f)

\header{
title= "Concerto in C for Flute and Harp"
          composer = "W. A. Mozart (1756-1791) "
          opus = "K.299"
          instrument = "Corni in DO\C "
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

corniNotes = \relative c'' {
\override Score.MetronomeMark #' transparent = ##t
\set Staff.instrumentName = "Corni in Do"
\set Score.skipBars = ##t
\set Staff.midiInstrument = "french horn"
\tempo 4=110
\time 4/4
\key c \major 

%pagina 1 

               c4.^\markup \column {  \bold \large "[I. Allegro] " "a 2." } \f g8 e c e g | 
               c4. g8 e c e g |
               c4 r r2 |
               c4 \f r r2 |
               <e, e'>4 r r2 |
               R1 | \break
               < c c'> \f ~| 
               < c c'>2. < c c'>8. < c c'>16 |
               
               <c c'>2 \p ~<c c'> ~|
               < c c'>2. <e c'>8. <e c'>16 |
               <g d'>1 |
               < c e> | \break
               <d f>2 < c e>4 < g d'> | 
               <<{ c8-. d-. e-. f-. g4}\\{ c,,8-. r e-. r g4}>> r4 |
               <g d'>2 \f < g d'>4 < g d' > | 
               
%pagina 2 

               <c e>2 < c e>4 <c e> | 
               <<{d8 e f g f4 d }\\{ c2. c4 }>>|
               <g d'>4 r8 < g d'>8  <c e> <c e> <c e> <c e>  | \break
               <g d'>4 r8 < g d'> < c e> <c e> <c e> <c e> | 
               < g d'>4 < g g'> <<{g}\\{g}>> r | 
               a1^"a 2." \p |
               g| 
               
               c,4 r r2 | 
               R1*3 | \break
               <c c'>1 ~|
               < c c'> ~| 
               <c c'> ~| 
               < c c'>4 r r2 |
               
%pagina 3 
 
               R1|
               < e' g>4 \f < e g>2 <d f>8 < c e> | \break
               <e g>8. ( < d f>16) < c e> 2 <g d'>4 |
               < e c'>4 r < c' e>8 \p r < b d > r | 
               <e, c'>4 r <c' e>8 r < b d> r | 
               <e, c'>4 r <c' e>8 r < g d'> r | 
               < e c'>8 r < g d'> r < c e> r < g d' > r |
               
               <c, c'>4 \f <<{c'8 c d4 d8 d }\\{c8 c c4 c8 c }>> |
               < c e>4 < c e>8 < c e>  <e  g> ( < d f >) <c e>-. <g d'>-. |
               < e c'>4  < e c'>8. < e c'>16  < e c'>4 < c' e>8. < c e>16 | \break
               < c e >4 < e g>8. < e g>16 < e g>4 < c e>8. < c e>16| 
               < c e>4  r r2 |
               < g g'>4 \f r r2 | 
               
%pagina 4,5,6,7 

               <c, c'>4 r r2 |
               R1*41| 
               
%pagina 8,9,10 

               <<{d'4 \f }\\{d}>> r8 <<{ d8 d d d d}\\{d g, g g g}>>| \break
               <<{ d'4}\\{d}>> r8 << { d8 d d d d}\\{ d g, g g g}>> | 
               <<{ d'4 d d}\\{ d d d}>>r  |
               R1*6|
               
               g,1^"a 2." ~|
               g ~|
               g|\break
               R1*22| 
               
 %pagina 11,12,13  
 
               g1 \f ~|
               g2.  g8. g16 |
               g2  \p ~ g ~|
               g2. <g d'>8. \f <g d'>16|
               < d' d>1 | \break
               <g, d'> | 
               < c e>2 <<{d4 d }\\{d d }>> |
               
               <g, d'>4 <g d'>8 <g d'> < c e>4 < c e>8 < c e > |
               d1^"a 2." ~|
               d4 d8. d16 d4 d | \break
               < g, d'>4 r r2 | 
               R1*35|
 
 %pagina 14   
 
                g1^"a 2."_\cresc ~|
                g1 ~ |
                g1 \f |
                c4. g8 e c e g | \break 
                c4. g8 e c e g |
                c4 r r2 |
                
 %pagina 15,16,17 
 
               d4 r r2 |
               <e, e'>4 r r2 |
               R1*31 |
               
%pagina 18

               <g d'>1 \p ~| \break 
               < g d'> |
               < c e> ~|
               <c e> |
               < g d'>4 r8 < g d'> < c e > < c e> < c e> < c e> |
               
               < g d'>4 r8 < g d'> < c e>  <c e> <c e> <c e> |
               < g d'>4 < g g'> <<{g}\\{g}>> r4 | \break
               c1^"a 2."  \p |
               g |
               c,4 r r2 |
               R1*3|
               
%pagina 19

               <c c'>1 \p ~|
               <c c'> ~|
               < c c'> |
               R1*13 |
               r2 < c' e>8 \p r < g d'> r| 
               <e c'>4 r < c' e >8 r < g d'> r |
               <e c'>4 r < c' e >8 r < g d'> r |
               < e c'>8 r < g d'> r < c e>  r < g d'> r |
               R1*3|
               
 %pagina 21 
 
               <<{g1\p ~}\\{g ~}>> |
               <<{g_\cresc }\\{g}>>|
               <e c'>4 r c'4.^"a 2." g8|
               e c e g c4. g8 |
               <<{e c e g c4. e8}\\{s2 e,2}>>
               <c c'>4 r r2|
               
               r2 r8 <<{d' d d}\\{d d d}>>|
               <g, d'>4 r8 <g d'> <c e> <c e>  <c e>  <c e> |
               <g d'>4 r8 < g d'>8 <c e> <c e>  <c e>  <c e> |
               < c e>4 r r2 \fermata |
               <c, c'>1 \f ~|
               < c c'>2.<c c'>8. < c c'>16|
               <c c'>2  ~ <c c'>\p ~|
               
%pagina 22

               < c c'>2. < e c'>8. \f < e c'>16 |
               < g d'>1|
               <c e>|
               <d f>2 <c e>4 < g d'> |
               < c, c'>4 <<{c'8 c d4 d8 d }\\{c8 c c4 c8 c }>> |
               <c e>4 < c e>8 <c e>  <e g> ( <d f>) < c e>-. < g d'>-.|
               
               < e c'>4 <e c'>8. < e c'>16 <e c'>4 <c' e>8. <c e>16 |
               < c e>4 < e g>8. < e g>16 < e g>4 <c e>8. <c e>16 |
               < c e>4  r c4.^"a 2." g8|
               e c e g c4. g8|
               e c e g e c e g |
               < e c'>4 r r2 \bar "|."
               
}
\score{
          
          \new Staff =
          corni  \corniNotes 
          
            \midi{}
     \layout{
    
     
     }
      
      
 }
     \paper{
                            
                 #(define page-breaking ly:page-turn-breaking)
                 raggedbottom = ##f
                 between-system-padding = 5.0\mm
                 print-page-number = ##t
                 line-width=182\mm
                 ragged-last-bottom = ##t
     }
