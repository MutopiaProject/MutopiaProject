\version "2.11.43"
#(set-global-staff-size 23)
\include "Misdefiniciones.ly"
#(ly:set-option 'point-and-click #f)

\header{
          title= "Concerto in C for Flute and Harp"
          composer = " W.A Mozart (1756-1791) "
          opus = "K.299"
          instrument = "Oboi "
          mutopiacomposer= "MozartWA"
	mutopiaopus = "K.299"
	mutopiainstrument = "Oboi"
	source = "Breitkopf & Härtel (from complete works edition 1877-1883)"
	style = "Classical"
	copyright = "Public Domain"
	maintainer = "César Penagos"
	maintainerEmail = "penagos.cesar@gmail.com"
 footer = "Mutopia-2008/06/01-1026"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

oboiNotes = \relative c''{
 \override Score.MetronomeMark #' transparent = ##t
\set Staff.instrumentName = "Oboi"
\set Staff.midiInstrument = "oboe"
\set Score.skipBars = ##t
\tempo 4=110
\time 4/4
\key c \major 

% Page 1 

               c'4.^\markup \column {  \bold \large "[I. Allegro] " "a 2." } \f  g8 e c e g | 
               c4. g8 e c e g |
               c4 c, \p (b c) | 
               d-. \f d \p (cis d) | 
               e-. \f e \p (dis e) | 
               f_\markup{\italic "cresc."} (g a b) | \break
               <<{c1~} \\{c4 c,2.~}>> |
               <<{c'2. e,16 (f g  e) }\\{ c2. c16 (d e c )}>>
               
               <f a >4 r r2 |
               r r4 <<{ c16 \f (d e c) }\\{ c16 (b c e) }>>|
               <d f>1 |
               <c e> |
               <<{ d4. (e16 f) c4 b}\\{c2 e,4 d }>>|
               R1| \break
               < d' f>1 |
               
%pagina 2 

               <c e> |
               <<{ d8 e f g a16 g f e d c b c}\\{c2. a4 }>>|
               <<{b8 (d ) f!-. f-. e4  }\\{ b8 (d) b-. b-. c4  }>> r8 < c e>8 |\break
               <<{d8 d f f e4}\\{b8 (d8 ) b-. b-. c4}>> r8 <c e>8 |
               <b d >4 <<{g' }\\{g}>> <<{g,}\\{ g}>> r |
               R1*2 |
               
               <<{g'16 \p (a g f ) e4} \\{ e16 (f e d ) c4}>> r2 |
               R1|
               <<{g'16 (a g f e4)}\\{ e16 (f e d c4)}>> r2 |
               R1|
               <<{g'16 (a g f e4) }\\{e16 (f e d c4)}>> r2|
               <<{c'16 (d c bes a4)}\\{a16 (bes a g f4)}>> r2 |
               <<{bes16 (c bes a g4)}\\{g16 (a g f e4) }>> r2 |
               R1*2|
               
%pagina 3 

               
               <<{g4 \f g4. a16 g f8 e}\\{e4 e4. f16 e d8 c}>>|
               <<{e8. (d16) c2 b4 }\\{g8. (f16) e2 d4 }>>|
               <e c' >4 r r2 |
               R1|
               r2 <c' e>8-.  \p r < d f>-. r |
               <e g>-. r <d f>-. r <c e>-. r < b d>-. r |
               
               <<{c2 \f a'}\\{c,1}>>|
               <<{ e4. f16 g g8 (f) e-. d-. }\\{c4. d16 e e8 (d) c-. b-. }>>|
               <<{c4 c8. c16 c4 e8. e16}\\{c4 g8. g16 g4 c8. c16}>>|
               <<{e4 g8. g16 g4 c8. c16}\\{c,4 e8. e16 e4 e8. e16}>>|\break
               <e c'>4 c'^"a 2." (b a) |
               g-. \f f \p (e d) | 
               
%paginas 4 a 7 

               c4 r r2 | 
               R1*41|
               
%pagina 8, 9, 10

               <<{d8 \f (a') c-. c-. b4}\\{d,8 a' fis-. fis-.g4 }>> r8 <g b>8 |
               <<{a8 a c c b4}\\{fis8 a fis-. fis-. g4 }>> r8 <g b>8 |
               <fis a>4 <d d'> <d, d'> r |
               
              R1*31|
              
%pagina 11, 12, 13

               <g g'>1\f ~|
               <g g'>2. <<{b16 (c d b)}\\{g (a b g)}>>|
               <c e>4 r r2 |
               r r4 <<{g'16 \f (a b g)}\\{g fis g b}>>|
               <a c>1 |
               <g b> |
               <<{a4. (b16 c ) g4 fis}\\{ e2 b4 a }>>|
               <<{g'1}\\{g,2 e'}>> | 
               <<{d4 d4. e16 d c8 b }\\{ d4 b4. c16 b a8 g}>>|
               <<{d'8. (c16) b2 a4 }\\{b8. a16 g2 fis4}>>|
               g4 r r2 |
               R1*38|
               
%paagina 14

               c'4.^"a 2."  \f g8 e c e g |
               c4. g8 e c e g |
               c4 c, \p (b c) |
               
%pagina 15, 16,17
               
               d4-. (\f d \p (cis d) |
               e-. \f e \p (dis e) |
               f_\cresc (g a b ) |
               c \f r r2 |
               
               R1*29|
               
%pagina 18, 19

               <b, f'>1 \p~|
               <b f'> |
               <c e> ~|
               <c e> |
               <<{d8-. \f d (f) f-.  e4}\\{b8 d (b) b-. c4}>> r8 < c e>8 |
               <<{d8-. d (f) f-. e4}\\{b8 d (b) b-. c4}>> r8 <c e>8 |
               < b d>4 <<{g'}\\{g}>> <<{g,}\\{g}>> r4 |
               R1*24|
               
%pagina 20

               r2 <c e>8 r <d f> r |
               <e g> r < d f> r < c e> r <b d > r |
               R1*2|
               
%pagina 21 

               < e g >2 \p < d f> |
               < c e>4 < c e>8-. r < e g>4 ( <c e>) |
               r4 < b d >8-.  r <d f>4 ( < b d>) |
               c4.^"a 2." \f g'8 e c e g  |
               c4. g8 e c e g|
               <e c'>4. < d b'>8 <c a'>4. < b g'>8|
               < a f'>4. < g e'>8 < f e'>4. <e cis'>8 |
               
               <<{ d'8 e f g a16 g f e d c! b c}\\{ a1}>>|
               <<{b8 d (f) f-. e4}\\{g,8 d' (b) b-. c4}>> r8 < c e>|
               <<{ d8 d (f) f-. e4}\\{b8 d (b) b-. c4}>> r8 <e c'> |
               <<{g,4}\\{g}>> r r2 \fermata |
               <a c'>1 \f ~
               <a c'>2. <<{ e'16 (f g e)}\\{c16 ( d  e c)}>>|
               < f a>4 r r2 |
               
%pagina 22 

               r2 r4 <<{ c16 \f ( d e c)}\\{c( b c e)}>>|
               < d f>1 |
               <c e>|
               <<{d4. (e16 f) c4 b }\\{ a2  e4 d }>> |
               <g c>2 <c a'> |
               < c e >4.  <<{f16 g g8 (f) e-. d-. }\\{ d16 e e8 (d) c-. b-. }>>|
               <<{c4 c8. c16 c4 e8. e16 }\\{c4 g8. g16 g4 c8. c16 }>> 
               <<{ e4 g8. g16 g4 c8. c16}\\{ c,4 e8. e16 e 4 e8. e16}>>|
               <e c'>4 r c'4.^"a2."  g8 |
               e c e g c4. g8 |
               e c e g e c e g |
               < c, e>4 r r2 \bar "|." 
               
}

\score {
               \new Staff =
               oboi  \oboiNotes
               
               \midi{}
               \layout{
               indent = 2\cm
               }
               
}

\paper{
                              
                #(define page-breaking ly:page-turn-breaking)
                
                 between-system-padding = 8\mm
                 print-page-number = ##t
                 line-width=182\mm
                 ragged-last-bottom = ##t
     }
