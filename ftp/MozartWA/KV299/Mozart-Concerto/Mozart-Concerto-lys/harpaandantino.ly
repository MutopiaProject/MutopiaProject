\version "2.11.33"

%#(set-default-paper-size "letter")
#(set-global-staff-size  18)
\header {
 copyright = "Public Domain"
 maintainer = "César Penagos"
 footer = "Mutopia-2007/10/23-1026"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

staffHarp = \new PianoStaff{
\set PianoStaff.midiInstrument = "acoustic guitar (steel)"
\set PianoStaff.instrumentName= "Arpa sola"
<<
\context Staff = "RH"{
\relative c''{
\time 3/4
\key f \major
\clef treble
\tempo 4=70
\override Score.MetronomeMark #'stencil = ##f
\set Score.skipBars=##t

%pagina 35
            R2.*12|
            <a,c f a>8 \p \arpeggio r8 <a c f a>8 \arpeggio r8 <a c f a>8 \arpeggio r|
            \acciaccatura{bes32 [c e]} g4~g8. e16 <a,e'>8 r8|
            <<{a'16 bes c d c d e f e f e f }\\{f,16 \p f a bes a bes g a  g a g a}>>| 
            <f bes>4~ \slurDotted bes8. (c32 d e8) r8 \slurSolid |
            s16 \f \change Staff= LH a,,32 \change Staff= RH c32 f a f c s16 \change Staff = LH 
            a32 \change Staff = RH d32 f a f d s16 d32 f g d' g, f |
            s16 c32 f g c g f  s16 c32 e g c g e  s16 c32 e f c f e | 
            
%pagina 36 #19
               s16 \change Staff = LH bes32 \change Staff = RH  d32 f bes f d s16
               \change Staff = LH bes32 \change Staff = RH d32 g bes g d s16
               \change Staff = LH bes32 \change Staff = RH d32 g bes g d |
               s16 \change Staff = LH a32 \change Staff = RH c32 f a f c <e g>4 r4 |
               R2.*4|
               g'4. a16 g c b a g |
               g8.(a16) g4 r4 |
               \acciaccatura{d16} d'4. c32 b a g f16-. f-. f-. f-. |
%pagina 37 #28
               \slurDotted 
               g8.(e16) g4 r4 |
               \slurSolid
               fis16 c d c fis c d c fis c d c |
               g' b, d b g'b,d b fis' c d c |
               g' b, d b g'4 r|
               R2.*4|
               c,,16 g'e g c, g' e g d g f g |
               c, g' e g c, g' e g  c, g' e g |

%pagina 38 #38
               r16 a f' d r g, e' c r f, d' b |
               <e,g c>4 r r |
               R2.*3|
               R2. |
               g'4 g8. \trill f32 g b8. \trill a32 b |
               c8. (g16) c4 r |
               g4 g8. \trill f32 g b8. \trill a32 b |
               c4 r r |
               R2.*2|
 
%pagina 39 # 49 
              \times 2/3{ c16 [d c]} \times 2/3{ b [c b]} 
              \once \override TupletNumber #'transparent = ##t
              \times 2/3{ a [b a] } \times 2/3{ g [a g] }
              \times 2/3{f g f} \times 2/3{e [f e ]} |
               d32 e d cis d e d e f g f e f g f g a b a g a b a b |
               c b c g \appoggiatura{b32} a16 g32 f e4 d8. \trill c32 d | 
               c8 \p c r16 c b c e c g' e | 
               d8 d \< r16 d cis d f d a' f |
               \appoggiatura{f16} e8-. e-. \! r16 e f e g e bes' g|
               \appoggiatura{g16} f8-. \f f-. r16 f e f a f c' a | 
               
%Pagina 40 # 57
               <g bes>8 <g bes>8~ <g bes>16 <f a>16 <e g>16 <d f>16 <c e> <bes d> <a c> <g bes>|
               <a, c e a>8 \p \arpeggio r <a c e a> \arpeggio r <a c e a> \arpeggio r |
               \appoggiatura{bes32 [c e]} g4~ g8. e16 <a, f'>8 r|
               <<{a'16 bes c d  c d e f  e f e f}\\{f,16 \p g a bes a bes g a g a g a}>>
               < f bes>4~ bes8. (c32 d c8) r|
%#62           
               s16 \f \change Staff = LH a,32 \change Staff = RH c32 f a f c s16 \change Staff = LH a32\change Staff = RH d32 f a f d s16 d32 f g d' g, f |
               s16 c32 f g c g f s16 c32 e g c g e  s16 c32 e f c' f, e |
               s16 \change Staff = LH bes32 \change Staff = RH d32 g bes g d s16 \change Staff = LH bes32 \change Staff= RH d32 g bes g d s16 \change Staff=LH bes32 \change Staff=RH d32 g bes g d|

%pagina 45 #65
               s16 \change Staff=LH a32 \change Staff=RH c32 f a f c <e g>4 r4 |
               R2.*4|
               c'4. d16 c f e d c |
               c8.(d16) c4 r \appoggiatura{g16} g'4. f32 e d c c16-. c-. c-. c-. |
               c8. (a16) c4 r |
               f16 g, b g f'g,b g f' g, b g |
               g'g,c g e' g, c g b' f g f |
               
%pagina 42 #76
               c'16 e, g e c'4 r |
               R2.*4|
               f,,16 c' a c f, c' a c g c bes c|
          %#82
               f,16 c' a c f, c' a c f, c' a c |
               r16 d bes' g r c, a' f r bes, g' e |
               <a, c f>4 r r |
               R2.*3|
               
%pagina 43 #88
               R2.|
               c4~ \times 2/3{ c16 [d e]} \times 2/3{f [g a]} \times 2/3{ bes [a g] }
               \times 2/3{ f [g e]} |
               f4 r r |
               \appoggiatura{c16} \tieDotted c'4~c16 c \tieSolid \appoggiatura{d32} c16 bes32 c 
               e16 e \appoggiatura{f32} e16 d32 e |
          %#92
               f4 r r |
               R2.*2|
               \times2/3{r16 [f, f']} \times 2/3{ r16 [e, e']} \times2/3{ r16 [d, d']}
               \times 2/3{r16 [c, c']} \times 2/3{ r16 [bes, bes']} \times 2/3{r16 [a, a']}|
               g,16 a32 bes c d e fis g d e fis g a bes c \times 2/3{ d16 [bes g]}
                \times 2/3{d'16 [bes g]}|
                
%pagina 44 # 97
               c8. \trill bes32 c d16-. c-. bes-.\trill  a-. g-. \trill f e \trill d |
               c8 f' c a f c |
               e2. \startTrillSpan |
               f4 \stopTrillSpan r r |
               R2.|
               r4 <f a>8 <f a> <f a> <f a> |
               <f a>4 \fermata r8. f16 e4 \trill |
               f4 r r |
               r8 c,32 e g bes r8 g32 bes c e <a,f'>8 r8| 
               R2.*2|
               r4 <f a d f>4 \f \arpeggio <g bes d f> \arpeggio|
               r4 <e g c e>4 \arpeggio <f a c e> \arpeggio |
               r4 <d f bes d> \arpeggio <d g bes d> \arpeggio |
               R2.|
               <bes d f g bes>4 \p <a c f a> <bes c e g>|
               <a c f> r4 r4 |
         %#114
               s32 s32 s32 d32 f bes f d s32 s32 s32 c f a f c s32 s32 s32 c e a f c|
               f16 c' a c  f, c' a c g c bes c |
               r8 c' \noBeam c8. \trill bes32 c e8. \trill d32 e |
               f8 r <c,, f a c>8 \pp \arpeggio r <c f a c> \arpeggio r |
               <c f a c>4 \arpeggio r4 r 
               \bar".|."
               
          }
        }
        
\context Staff ="LH"{
        \clef bass
        \key f \major
        \time 3/4
        \relative c{
        \set PianoStaff.midiInstrument = "acoustic bass"
        
 %pagina 35
            R2.*12|
            \acciaccatura{f,16} f'8 r \acciaccatura{f,16} f'8 r \acciaccatura{f,16} f'8 r|
             \acciaccatura{c,32 [e g bes]}c2 f,8 r|
             s2.|
             <f' d'>8 r <f bes>8 r <f a>8 r |
             f,32 f' s16 s8  d,32 d' s16 s8    bes32 bes' s16 s8 |
             c,,32 c' s16 s8 c32 c' s16 s8 a,32 a' s16 s8|
             
%pagina 36 #19
              bes,32 bes' s16 s8 bes,32 bes' s16 s8 g,32 g' s16 s8|
              c,,32 c' s16 s8  s2 |
              R2.*4|
              \clef treble
              c'16 g' e g c, g' e g c, g' e g |
              b,16 f' d f b, f' d f b, f' d f |
              g,16 f' b, f' g,f'b,f'  g,f'b,f'|
              
%pagina 37 # 28
              c16 g' e g c, g' e g c, g' e g |
              \clef bass
               a,16 d c d  a d c d  a d c d |
               g,d'b d g,d'b d a d c d |
               g, d' b d  g,4 r |
               R2.*4|
               \acciaccatura{c,,8} c'4 r r |
               \acciaccatura{c,8} c'4 r r |
               
%pagina38 #38
               f8 r g r g r |
               c,4 r r |
               R2.*3 |
               \clef treble
               c'16 g' e g  c, g' e g d g f g | 
               c,g' e g c,g'e g d g f g |
               c, g' e g c, g' e g d g f g |
               c, g' e g c, g' e g  d g f g |
               <c, e g>4 r r |
               R2.*2|
               
%pagina 39 #49
               <e' g>8 <d f>8 <c e>8 <b d>8 <a c>8 <g b>8|
               <f a>4 <f a>4 <f a>8 <f g>8|
               <e g>8 <f c'>8 <g c>8 <g c>8 <g b>8 <g b>8|
               \clef bass
               \times 2/3{ c,,16 [e g]} \times 2/3{c [e, g]} 
               \override TupletNumber #'transparent = ##t
               \times 2/3{c, [e g]} \times 2/3{c [e, g]}
               \times 2/3{c, [e g]} \times 2/3{c [e, g]}|
               \times 2/3{c,[f g]} \times 2/3{b [f g]} \times 2/3{c,[f g]} \times 2/3{b [f g]}
               \times 2/3{c,[f g]} \times 2/3{b [f g]}|
               \times 2/3{c, [e g ]} \times 2/3{bes! [e,g]} \times 2/3{c,[e g]} 
               \times 2/3{bes [e,g]} \times 2/3{c,[e g]} \times 2/3{bes [e,g]} |
               \times2/3{c,[f a]} \times 2/3{ c [f,a]} \times 2/3{ c,[f a]} 
               \times2/3{ c [f,a]} \times 2/3{ c,[f a]} \times 2/3{ c [f,a]}|
               
%pagina 40  #57
               \times2/3{c,16 [e g]} \times 2/3{ c16 [e, g]} c,4 r |
               \appoggiatura{f,16} f'8 r \appoggiatura{f,16} f'8 r \appoggiatura{f,16} f'8 r|
               \appoggiatura{ c,32 [e g bes]} c2  f,8 r|
               s2.|
               <f' d'>8 r < f bes> r < f a> r |
     %#62      
               f,32 f' s16 s8 d,32 d' s16 s8 bes32 bes' s16 s8 |
               c,,32 c' s16 s8 c32 c' s16 s8 a,32 a' s16 s8 |
               bes,32 bes' s16 s8 bes,32 bes' s16 s8 g,32 g' s16 s8|
               
%pagina 45 #65 
               c,,32 c' s16 s8 s4 s4 |
               R2.*4|
               f16 c' a  c f, c' a c f,c' a c |
               e, bes' g bes e, bes' g bes e, bes' g bes |
               c, bes' e, bes' c, bes' e, bes' c, bes' e, bes' |
               f c' a c f, c' a c f, c' a c |
               d,g f g  d g f g  d g f g  |
               c, g' e g c, g' e g \clef treble d'g f g |
               
%pagina 42 #76
               c,16 g' e g c,4 r|
               R2.*4|
               \clef bass 
               \appoggiatura{f,,16} f'4 r4 r4 |
          %#82
               \appoggiatura{f,16} f'4 r r |
               bes8 r c r c, r |
               f4 r r |
               R2.*3|
               
%pagina 43 #88
               f16 c' a c f, c' a c g c bes c |
               f, c' a c f, c' a c g c bes c |
               f, c' a c \clef treble f c' a c g c bes c |
               f, c' a c f,c' a c g c bes c |
         % #92
               <f, a c>4 r r |
               R2.*2|
               <a c>8 < g bes> <f a> <e g> <d f> <c e>|
               <bes d>4 <bes d> <bes d>8 <bes e>|
               
%pagina 44 #97
               <a f'>8 < a f'> <bes f'> <bes f'> <bes d> <bes d>|
               \clef bass
               \times 2/3{ c,16 [f a]} \times 2/3{c [f, a]} \times 2/3{ c, [f a]}
               \times 2/3{c [f, a]} \times 2/3{c, [f a]} \times 2/3{ c [f, a]}|
               \times 2/3{ c,16 [e g]} \times 2/3{bes [e, g]} \times 2/3{ c, [e g]}
               \times 2/3{bes [e, g]} \times 2/3{c, [e g]} \times 2/3{ bes [e, g]}|
               <f a>4 r r |
               R2.|
        %#102 
               r8 <a, a'> ( <bes bes'> <c c'> <d d'> <b b' >)|
               <c c'>2 \fermata <c e g bes!>4| 
               <f a>4 r r |
               c,32 e g bes r8 c32 e g bes r8 f r |
               R2.*2|
               
%pagina 45 #108 
               r4 <d f a d>4 \arpeggio <bes d g bes> \arpeggio |
               r4 <c e g c> \arpeggio <a c f a> \arpeggio |
               r4 <bes d f bes> \arpeggio <g bes d f> \arpeggio |
               R2.|
               bes4 c c 
               f, r r |
               
       %#114
             d'32 f bes  s32*5 c,32 f a  s32*5 c,32 g' bes  s32*5| 
             f4 r r |
             \clef treble 
             f'16 c' a c f, c' a c g c bes c |
             < f, a c>8 r \clef bass <f,,a c f>8 \arpeggio r <f a c f> \arpeggio r |
             <f a c f>4 \arpeggio r r 
             \bar ".|."
             
               	
			}
		}

>>
}
\score {
	<<
		\staffHarp
	>>
	\header{
	piece =\markup{\bold "[II. Andantino]"}
	}
	\midi {}

	\layout  {}
}

\paper {}
            
        
