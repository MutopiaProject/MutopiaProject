% Created on Wed Aug 29 08:19:22 CST 2007
\version "2.11.32"
%#(set-default-paper-size "letter")
#(set-global-staff-size  17)
\header {
                              title = "Concerto in C for Flute and Harp"
                              composer = "W. A. Mozart (1756-1791) "
                              instrument = "Harpa"
                              opus = "K. 299"
                              mutopiacomposer= "MozartWA"
                              mutopiaopus = "K.299"
                              mutopiainstrument = "Harpa "
                              source = "Breitkopf & Härtel (from complete works edition 1877-1883)"
                              style = "Classical"
                              copyright = "Public Domain"
                              maintainer = "César Penagos"
                              maintainerEmail = "penagos.cesar@gmail.com"
 footer = "Mutopia-2007/10/23-1026"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

staffHarp = \new PianoStaff { 
      
      \set PianoStaff.midiInstrument = "acoustic guitar (steel)"
      \set PianoStaff.instrumentName = "Harp"
      \time 4/4
      \override Score.MetronomeMark #'stencil = ##f
		\tempo 4 =110 
			<<
      \context Staff = "RH" { 
			\clef treble
			\key c \major
            \relative c'' {
			\set Score.skipBars=##t 


	   %pagina 1 - 3
			
                               \grace{c,32^\markup{\large \bold "[I. Allegro]"} [e g]} c4. \f g8 e c e g|
                               c4. g8 e c e g|
                               c4 r r2 |
                               R1*40|
			
        %pagina 4 
                             \grace{c32 [e g]}c4. \f  g8 e c e g|
                             c4. g8  e8 c e g|
                             c4 r16 c,,16 \p c' c, r b b' b, r c c' c, |
                             r16 d \f  d' d, r d d' d, r cis cis' cis, r d d' d,|
                             r16 e \f e' e, r e \p e' e, r dis dis'  dis, r e e' e, |
                             r16_\markup{\italic "cresc."} f f' f, r g g' g, r a a' a, r b b' b, |
			                       r4 c16 e g  c   e, g c e   d c b c |
			                       d b c a  b g a f  g e f d  e c d b |
			                       r4 c16 e g c  e, g c e  d c b c |
			                       <<
			                       {d b c a  b g a f  g e f d  e c d b }\\
			                       {b8 a g f  e d c  \change Staff=LH \stemUp b}|
			                       >>
			                       c'4 r r2|
			
			%pagina 5
                            R1*3|
                            c8 d16 e   f g a b    c b c b   c b a g |
                            c16 c, d e  f g a b   c b c b \grace{d16}c8 b16 a |
                            g16 c, d e   f g a b    c d e d    c b a g|
                            g8. f16 e4~e16 c e g \grace {g16} f8 e16 d |
                            c e g c   c, c' b, b'  a, c e a    a, a' g, g' |
                            f, a c f   f, f' f, e'   d, d' c, c'    b, b' a, a' |
                            g,8 g16 b    a c b d   c e d f   e g fis a |
			 
			%pagina 6 
                             g8 g16 b   a c b d   c e d f    e g fis a|
                             g4 r4 r2 |
                             R1*2|
                            s4_\markup{\italic "sotto voce"}   b,16 d b g  s4   b16 d b g |
                                         s4   c16 e c g  s4   c16 e c g|
                            r16  b g d   r16   g e b  r  a' g e  r   a fis d |
                            r d'' \f b g   d b' g d    b g' d b    g d' b g |
                            s4_\markup{\italic "sotto voce"}    d16 g d b   s4    d16 g d b |
                            s4    e16 g e c   s4    e16 g e c |
                            r16   b d g       r     b, e g      r     a, e' g      r     a, d fis |
			
			%Pagina 7
                            g4 r4 r2 |
                            R1|
                            <<
                            {r16 c' a fis   r    a fis d  r  fis d c     r     d c a }\\
                            {s4 c8 r a r fis r }
                            >>
                            r16   c' a fis     r     a fis d     r     fis d c     r     d c a |
                            r16   b d b   g' d b' g  <<{d'8 r8 r4 }\\
                            {r16 d, g d  b' g d' b }>>|
                            <<
                            {g'8 r r4 b8 r r4 }\\
                            {r16 g, b g d' b g' d    r   d g d     b' g d' b } |
                            >>
                            <<
                            { r16 c a fis  r   a fis d   r fis d c  r  d c a }\\
                            {s4 c8 r a r fis r } |
                            >>
                            r16 c' a fis r a fis d r fis d c  r d c a |
                            r16 b d b g' d b' g <<{d'8 r r4 } \\ {r16 d, g d   b' g d' b }>>|
                            <<{g'8 r r4 b8 r r4} \\ {r16 g, b g d' b g' d r d g d b' g d' b }>>|
			
	%pagina 8 
                            <fis a>4 r r2 |
                            R1*4|
                            d16 e d c b4 r2 |
                            R1|
                            d'16 e d c b4 r2 |
                            R1|
                            d,16 e d c b4 r2 |
                             g'16 a g f e4 r2 |
                             f16 g f e d4 r2 |
                             e16 g c g   e' c g e   d g b g    d' b g d |
                             e g c g   e' c g e   d g b g   d' b g d 
			 
	%pagina 9
                             c8 c'16 d    e d c b   a b a g    fis e d c |
                             b8 b'16 c   d c b a   g a g fis   e d c b |
                             e c e c    a8 e'  d c-. b-. a-. |
                             g16 b a c   b d c e    d8 e-. fis-. g-. |
                             a,16 b a b a4    c'16b c b c4 |
                             g,16 a g a   g4   b'16 ais  b ais  <<{b4 }\\ {g,16 fis e d}>>|
                             <<{ s4} \\ {c16 e a c}>>  e16 a c e  <<{ d16 b c a } \\ {d,8 r}>> <<{b16 g a fis} \\ { d8 r }>>|
                             <<{g'16 d e c} \\ {g4}>> d'16 b c a g8 d a' d, |
                             b' d, b' d, g d a' d, |
                             b'8 d, b' d, g d a' d, |
			 
	%pagina 10
                              b'8 d, a' d,   g d fis d|
                              g4 r  \grace{c16} b8 a16 b \grace{ d16} c8 b16 c |
                              d8(g) d-. d-. \grace{c16} b8 a16 b \grace{d16} c8 b16 c|
                              d16 g b g   d8 d   \grace{c'16} b8 a16 b  \grace{d16} c8 b16 c |
                              d16 b d b  c  a c a   b g b g    a fis a fis |
                               d16 g b d    c b a g    e a c e   d c b a |
                              <<{ r b d b  r g b g   r    a c a  r  fis a fis }\\
                               { s4 <d, b'>8 r8 <d c'>8 r <e a>8 r }>>|
                               <g b d g>4 \arpeggio r  <g b d g>4 \arpeggio r |
                               s4 d16 g b d  \stemDown d, g b d   \stemUp d g b d |
                               c16  a fis d   \stemDown c a fis d   \stemUp c'a fis d  s4 |
                               <b d g>4 r4 r2 |
			   
	%pagina 11
                              R1*19|
			    
	%pagina 12
                             a'16 \f c e a  r   c, \p c' c, r b b' b, r   a a' a, |
                             r gis \f gis' gis, r  a \p a' a,   r g! g' g, r f! f' f, ||
                             r16   e \f e' e,   r  f \p f' f, r   e e' e,  r   d d' d, | 
                             <cis cis'>4 \f r r2 | 
                             
    %pagina 13
                             R1*6|
                             d'8 f-. f-. f-. \grace{g16} f8 e16 f \grace{g16} f8 e16 f |
                             e8-. e-. e-. e-. e16_\markup{\italic \bold "cresc."} f g f e f g f |
                             e8 bes'-. \f bes-. bes-.  bes16 a bes a bes g f e |
                             f a, \p c a  f a c a   f a c a  f a c a |
                             f_\markup{\italic \bold "cresc."} b! d b  f b d b  f b d b  f b d b|
                             e, \f  b' d b   e, b' d b  e, b' d b  e, b' d b |
                             a8 c'-. \p c-. c-. \grace{ d16} c8 b16 c  \grace{ d16} c8 b16 c |
                             b8-. b-._\markup{\italic \bold "cresc."}  b-. b-. b16 c d c   b c d c |
                             b8 f'-. \f f-. f-.  f16 e f e   f d c b |
      %pagina 14
                            c8 g-. \p g-. g-.  fis16 g fis g f! ees d c |
                            b8 f''-. \f f-. f-.  f16 e f e f d c b | 
                            c8 g-. \p g-. g-.  fis16 g fis g    f! ees d c |
                            b4 r4 r2 |
                            r8 b,8 c d ees e f fis |
                            g4 r s8 c32 \f ees fis a  c8 c,8 \p |
                            b4 r s8 c32 \f ees fis a c8 c, \p |
                            <b d>8 <b,d>8 r <b' d>8 <c e!>8 <c, e!> r_\markup{\italic \bold "cresc."} <c' e>8 |
                            <d f!>8 <d, f>8 r <d' f>8 <e g>8 <e, g>8 r <e' g> |
                            <f a>8 <f, a>8 r <f' a > < d f b>8 <d, f b>8 r <d' f b>8|
                            <c e g c>4 \arpeggio r4 r2 |
                            R1*5|
                            
        %pagina15
                            g16 \f g' g, g'   g, \p g' g, g'   g, g' g, g'  g, g' g, g' |
                            g, \f g' g, g'   g, \p g' g, g'  g, g' g, g'  g, g' g, g' |
                            g, \f g' g, g'   g, \p g' g, g'   g, g' g, g'  g, g' g, g' |
                            f,_\markup{\italic \bold "cresc."} a c f g, c e g  a, c f a  b, d f b |
                            s4 \f  c,16 e g c   e, g c e   d c b c|
                            d b c a    b g a f  g e f d   e c d b |
                            s4  c16  e g c  e, g c e  d c b c |
                            f d e c  d b c a  b g a f   g e f d |
                            
    %pagina 16
                           c16 e g c   c, c' b, b'  a,c e a    a, a' g, g' |
                           f, a c f    f, f' e, e'   d, d' c, c'   b, b' a, a' | 
                            g,8 g16 b   a c b d   c e d f   e g fis a |
                            g8 g16 b a c b d   c e d f   e g fis a |
                            g4 r r2 |
                            R1*2 |
                            s4 e,16 g e c   s4   e16 g e c |
                            s4   f16 a f c  s4 f16 a f c |
                            r16 e c g r e' c a  r  d c a   r  d b g |
                            r16 c'' g e   c g' e c   b e c g    e c' g e |
                            s4 c16 e c g   s4  c16 e c g |
                            
     %pagina 17
                          s4 c16 f c a  s4  c16 f c a |
                          r16 e' c g  r c' a e  r c' a d, r b' g d |
                          <e g c>4 r r2 |
                          R1*3 |
                          <<{ r16 f'' d b  r d b g  r b g f  r g f d }\\{ s4 f8 r d r b r }>>|
                          <<{ r16 f' d b  r d b g  r  b g f  r g f d }\\{g8 r f r d r b r } >>|
                          <<{ s4 e16 c g' e  c'8 r r4}\\{s4 s4 r16 c, e c g' e c' g}>>|
                          <<{e'8 r r4 g8 r r4 }\\{r16 e, g e c' g e' c r g c g e' c g' e}>>|
                          
      %pagina 18 
                           
                            <<{r16 f d b   r d b g   r b g f   r  g f d }\\{s4 f8 r d r s4}>>
                            r16  f d b   r  d b g  s4 s4 |
                            <<{s4 s4 c'8 r r4 }\\{s4 c,16 g e' c r  s16   s16 s16  g'16 e c' g }>>
                            <<{ e'8 r r4 g8 r r4}\\{r16 e, g e c' g e' c  r g c g  e' c g' e }>>
                            < b d >4 r4 r2 |
                            R1*4|
                            g'16 a f f e4 r2 |
                            R1|
                            g16 a g f e4 r2 |
                            R1|
                            
   %pagina 19
                            g16 a g f e4 r2 |
                            c'16 d c bes a4 r2 |
                            bes16 c bes a g4 r2 |
                            a,16 c16 f c  a' f c a  g c e c  g' e c g |
                            a16 c f c a' f c a g c e c   g' e c g |
                            f8 f'16 g  a g f e d e d c  b a g f |
                            e8 e'16 f g f e d c d c b a g f e |
                            \stemDown
                            a8 \grace{e'32}d16 cis \stemUp d8 f e-. d-. c-. b-. |
                            \stemNeutral
                            c16 e d f  e g f a g8-. a-. b-. c-. 
                            <<{f,16 g f g f4  f'16 e f e f4 }\\{s4 s4 s4 g,,16 f e d }>>
                            g'16 fis g fis g4  g'16 fis g fis g4 |
                            <<{s4 a,,16 d f a g e f d e c d b }\\{ s4 s4 g8 r s4 }>>
    %pagina 20
                           c16 g a f   g e f d c8 g d' g,|
                           e' g, e' g, c g d' g, |
                           e' g, e' g, c g d' g, |
                           e' g, d' g, c g b g |
                          s4 s4 \grace{f''16}e8 d16 e \grace{g16} f8 e16 f | 
                          g8 (c) g-. g-. \grace{f16} e8 d16 f \grace{g16} f8 e16 f |
                          g16 c e c  g8 g8 \grace{f16}e8 d16 e \grace{g16} f8 e16 f |
                          g16 e g e f d f d e c e c  d b d b |
                          g c e g f e d c a d f a g f e d |
                          r e g e r  c e c  r  d f d r  b d b |
                          
  %pagina 21
                            <g c e g>4 \arpeggio r4 <a c e a>4 r |
                            s4 e,16 g c e  s4  c16 e g c |
                            b16 g f d  s4 f16 d b g s4 |
                            <e' g c>4 r r2 |
                            R1*6|
                            e'4. \fermata c8 d2 \trill |
                            c4 r r2 |
                            R1*10|
                            <<{g'16 c g c  g c g c g c g c g c g c }\\{<c, e>8 <c e>8 <c e>8 <c e>8 <c e>8 <c e>8 <c e>8 <c e>8}>>|
                            <<{g'16 c g c  g c g c g c g c g c g c }\\{<c, e>8 <c e>8 <c e>8 <c e>8 <c e>8 <c e>8 <c e>8 <c e>8}>>|
                            <c e g>4  <c e g c>4  <c e g c>4  <c e g c>4 |
                            <c e g c>4  r4 r2 \bar ".|."
                         
                            
			
			}
		}
		\context Staff = "LH" { 			
			\clef bass
			\key c \major
			\time 4/4
			\relative c {
			\set PianoStaff.midiInstrument = "acoustic bass"
			
			
			
			%pagina 1 - 3
                                  \grace{s32*3} c4. \f g8 e c e g  | 
                                  c4. g8 e c e g |
                                  c4 r r2 |
                                  R1*40|
			
			%pagina 4 
                                \grace {c32 [e g]} c4. g8 e c e g |
                                c4. g8 e c e g |
                                c4 c, \p ( b c) |
                                <d, d'>4 \f d' \p (cis d) |
                                <e, e'>4 \f e' \p (dis e) |
                                f4 <g, g'>4 <a a'>4 <b b'>4 |
                                c16 e g c  s4 s4 s4|
                                \clef treble
                                b'8 a g f  e d c b |
                                \clef bass 
                                c,16 e g c  s4 s s |
                                s4 s4 s4 s4 |
                                c4 r r2 |
			
			
			%pagina 5
                              R1*3|
                              \clef treble
                              c8 g' e g    c, g' e g   |
                              c, a' f a   c, a' f a |
                              c, g' e g    c, g' e g
                              \clef bass 
                              g, e' c e   g, c g b |
                              c4 <c, c'>8 <b b' >8 <a a'>4 <a a'>8 <g g'>8|
                              <f f'>4 <f f'>8 <e e'>8 <d d'>8 c'-. b-. a-. |
                              g8 g a b   c d e fis|
			
			%pagina 6
                              g8 g,16g'   a, a' b, b'    c, c' d, d'    e, e' fis, fis' |
                              <g, g'>4 r r2 |
                              R1*2 |
                              g,16 b d g  s4    g,16 b d g    s4 |
                              g,16 c e  g  s4  g,16 c e g  s4 | 
                              \grace{g,16} g'8 r \grace{e,16} e'8 r \grace{c,16} c'8 r \grace{d,16}d'8 r |
                              g,4 r r2 |
                              g16 b d g   s4    g,16 b d g  s4 |
                              g,16 c e g  s4    g,16 c e g   s4 |
                              \grace{g,16} g'8  r     \grace{e,16} e'8 r      \grace{c,16} c'8 r      \grace{d,16} d'8 r |
                              
			%pagina 7 
                            g,4 r r2 |
                            R1|
                            <d d'>8 r   s4  s4  s4| 
                            d''8 r  c r  a r  fis  r|
                            <g, g'>8  r8 r4 s4 s4 |
                            s4 s4 s4 s4 |
                            <d d'>8 r s4 s4 s4 |
                            d''8 r c r a r fis r |
                            <a, a'>8 r r4 s4 s4 |
                            s4 s s s |
			
    %pagina 8
                          <d d'>4          r    r2 |
                          R1*4 |
                          b'16 c b a      g4 r2 |
                          R1|
                          \clef treble 
                          b'16 c b a      g4 r2 |
                          R1|
                          \clef bass
                          b,16 c b a      g4 r2|
                          \clef treble
                          e'16 f e d       c4 r2 |
                          d16 e d c       b4 r2 |
                          c8 e g c,        b d g b, |
                          c8 e g c,        b d g b, |
			
    % pagina 9 
                        a8 a'16 b    c b a g     fis g fis e   d c b a |
                        g8 g'16 a    b a g fis   e fis e d    c b a g |
                        \clef bass
                        c,8 c' c, c'    d, d' d, d' | 
                        <g,, g' >8 <a a'>8 <b b'>8 <c c'>8  <d d'>4 r4 |
                        r4      c'16 b a g  fis4    d16 c b a |
                        g4   b'16 a g fis   e4   s4 |
                        s4 s4 s4 s4 |
                        s4 s4 s2 |
                        R1|
                        R1 |
			
			
    %pagina 10
                          R1|
                          r16 d e fis    g a b a    g8 d a' d,|
                          b' d, b' d, g d a' d, |
                          b' d, b' d,  
                          \clef treble  
                          g' d a' d, |
                          b' d, a' d,   g d fis d |
                          \clef bass 
                          b,16 d g b  s4   c,16 e a c   s4 |
                          d,8 r s4 s4 s4 |
                          <b d g b>4 \arpeggio r4 < c e g c>4 \arpeggio  r4 |
                          d16 g b d  s4 s4 s4 |
                          s4 s4 s4 c16 a fis d |
                           < g, g'>4 r4 r2 |
			
    %pagina 11
                          R1*19|
    
    %pagina 12
                          
                          <a a'>4 \f  c' \p b a |
                          <gis, gis'>4 \f  <a a'>4 \p <g! g'!>4 <f! f'!>4 |
                          <e e'>4 \f f' \p e d |
                          <cis, cis'>4 \f r4 r2 |
                          R1*6|
    %pagina 13
                          \clef treble 
                          d''16 f a f   d f a f    d f a f   d f a f |
                          d g bes g  d g bes g   des g bes g   des g bes g |
                          c,! g' bes g  c, g' bes g   c, g' bes g   c, g' bes g |
                          f4 r r2 |
                          \clef bass 
                           f,4 r r2 |
                           e4 \f r r2 |
                           \clef treble
                           a16 \p c e c   a c e c   a c e c  a c e c |
                           a d f d   a d f d  aes d f d  aes d f d |
                           g, \f d' f d  g, d' f d  g, d' f d  g, d' f d |
                           
       %pagina 14
                            g, \p c ees c  g c ees c  g c ees c g c ees c |
                            g \f d' f d   g, d' f d   g, d' f d   g, d' f d |
                            g, \p c ees c  g c ees c  g c ees c g c ees c |
                            \clef bass 
                            g8 b, c d ees e f fis |
                            g4 r r2 |
                            r2 fis32 \f  a c ees  s8 s4 |
                            g,4 \p r fis32 \f a c ees s8 s4 |
                             r8 g, g, r r  g' g, r |
                             r g' g, r r  g' g, r |
                             r g' g, r  r g' g, r |
                             <c e g c>4 \arpeggio r4 r2 |
                             R1*5|
                             
         %pagina15 
                            \clef treble
                            r4 c'8 e d f c e |
                            b4 b8 d ais cis b d |
                            <c! e>4 c8 e b dis c e |
                            \clef bass
                            a, c e, c' f, c' d, b' |
                            c,16 e g c s4 s4 s4 |
                            \clef treble
                            b'8 a g f e d c b |
                            \clef bass 
                            c,16 e g c s4 s4 s4 |
                            \clef treble 
                            d'8 c b a g f e d |
                            
    %pagina 16
                            c4 \clef bass <c, c'>8 <b b'>8 <a a'>4 <a a'>8 <g g'>8 |
                            <f f'>4 <f f'>8 <e e'>8 <d d'> c'-. b-. a-. |
                            g8 g a b c d e fis |
                            g8 g,16 g'  g, g' b, b'  c, c' d, c'  e, e ' fis,  fis' |
                            <g, g'>4 r r2 |
                            R1*2|
                            \once \override TextScript #'padding = #2.0
                            c,16^\markup{\italic \bold "sotto voce"} e g c  s4 c,16 e g g s4 |
                            c,16 f a c  s4   c,16 f a c s4 |
                            c,8 r a r f r g r |
                            c,4 r r2 | 
                            \once \override TextScript #'padding = #2.0
                            c16^\markup{\italic \bold "sotto voce"}  e g c  s4 c,16 e g c  s4 |
                            c,16  f a c  s4  c,16 f a c   s4 |
                            \grace{ c,16} c'8  r \grace {a16} a'8 r \grace{f,16} f'8 r \grace{g,16} g'8 r|
                            c,4 r r2 |
                            R1*3 |
                            <g g'>8^\markup{\dynamic "f"} r8 s4 s4 s4 |
                            s4 s4 s4 s4 |
                            <<{ r16 g' c g} \\{<c,,c'>8 r8 r4  s4 s4 }>> |
                            s4 s4 s4 s4 |
                            
    %pagina18
                            < g g'>8 r s4 s4 b8 r |
                            <<{s4 s4 r16 b'' g f  r g f d }\\{g8 r f r d r b r }>>
                            << {r16 e g e s4  \stemDown c'16  e' c,  s4}\\{<c, c'>8 r r4 s4 s4}>>
                            s1|
                            <a a'>4 r4 r2 |
                            R1*4|
                            \clef treble
                            e''16 f e d c4 r2|
                            R1|
                            e16 f e d c4 r2 |
                            R1|
                            
    %pagina 19
                            e16 f e d c4 r2 |
                            a'16 bes a g f4 r2 |
                            g16 a g f e4 r2 |
                            \clef bass
                            f,8 a c f,  e g c e, |
                            f a c f, e g c e, |
                            d  d'16 e  f e d c   b c b a  g f e d  |
                            c8 c'16 d   e d c b a b a g  f e d c |
                            f8 f' f, f'  g, g' g, g'  |
                            <c,, c'>8 <d d'>8 < e e' >8 <f f'>8  <g g'>4 r |
                            r4 d'16 c b a g4 s4 |
                            c4   g16 f e d    c4    c'16 b a g |
                            f16 a d f   s4 s4 g,8 r |
                            
    %pagina 19
                            c4 r4 s4 s4|
                            s1|
                            s1|
                            s1|
                            c16 g a b c d e d c8 g d' g, |
                            
    %pagina 20
                            e'8 g, e' g, c g d' g, |
                            e' g, e' g, c g d' g, |
                            e' g, d' g, c g b g |
                            e16 g c e s4 f,16 a d f  s4 |
                            g,,8 r <g'e'>8 r < g f'>8 r <g d'>8 r |
                            
  %pagina 21
                            <e g c e>4 \arpeggio   r4 < f a c f>4 \arpeggio r |
                            g,16 c e g s4  g16 c e g s4 | 
                            s4 f16 d b g  s4  f16 d b g |
                            <c, c'>4 r r2 |
                            R1*6|
                            <g' g'>4 \fermata r4 r2 \fermata |
                            <c e g c>4 \arpeggio r4 r2 |
                            R1*10 |
                            \clef treble
                            <<{e'16 g e g   e g e g  e g e g  e g e g}\\{c,8 c c c c c c c}>>
                            <<{e16 g e g  e g e g e g e g e g e g }\\{c,8 c c c  c c c c }>>
                            <c e>4 
                            \clef bass
                            <c, c'>4 < g g'>4 <e c'>4 |
                            <c c'>4 r4 r2 
                            \bar ".|."
                                       
                            
                            
			
			}
		}

>>
}


\score {
	<<
		\staffHarp
	>>
	
	\midi {}

	\layout  {}
}

\paper {}


