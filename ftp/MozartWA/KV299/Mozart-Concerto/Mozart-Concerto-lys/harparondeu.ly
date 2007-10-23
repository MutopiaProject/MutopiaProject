\version "2.11.33"

%#(set-default-paper-size "letter")
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
\time 2/2
\key c \major
\clef treble
\tempo 4=110
\override Score.MetronomeMark #'stencil = ##f
\set Score.skipBars=##t

%pagina 46 
                              \partial 2
                              r2|
                              R1*57|
                              c8 b c b c4 e |
                               \once \override TextScript #'font-size = #2
                              \appoggiatura {d16^"[♪]"} c4 c8 b c4 r|
                              f8 e f e f4 a |
                               \once \override TextScript #'font-size = #2
                              \appoggiatura{fis16^"[♪]"} g4 g8 fis g4 r |
       %#62
                              c8 b c b c4 e, |
                              \once \override TextScript #'font-size = #2
                              \appoggiatura{g16^"[♪]"} f!4 f8 d d'4 r8 f, |
                              e g c, e d f b, d |
                              c e g, c e, g f d |
                              c g' e g c, g' e g |
                              c, g' e g c, g' e g |
                              
%pagina 52 #68
                               f'8 e f e g a c a |
                               fis2 ( g4) r |
                               c8 \trill b c d e c g e |
                               f d b' g d' b g f |
                               f (e) g-. e-.  e (d)  c-. b-. |
                               c-. d-. e-. f-. g-. a-. b-. c-. |
                               
	      %# 74
			f8-. e-. d-. c-. b-. a-. g-. f-. |
			e-. g-. c-. g-. g-. f-. e-. d-. |
			c4 r r2 |
                              R1*13|
                              
  %pag.53 #86
			b8 g d c b d g a |
			b g d c  b d g a |
			
%pag.54#92
			b8 e, gis b d gis, b d |
			gis  b, d gis b4 r4 |
			a,8 e c b a c e gis |
			a e c b a c e g! |
			fis d fis a c fis, a c |
			fis a, c fis a4 r |
	%#98
			r8 b, d g fis d a' fis|
			g  d b' g a d, c' a |
			b d, d' b fis  d a' fis |
			g d b' g a b, c' a |
			b b, d' b e, gis a c |
			d, fis g! b c, e fis a |
			
%pag.55 # 104
			b, dis e g a, cis d! fis |
			g, a cis e g e cis g |
			fis a d fis a fis d a |
			g a cis e g e cis g |
			fis d fis a d cis d cis |
			d4 fis8 a d cis d cis |
			d4 r r2|
			R1*17|
			
%pag.57#128
		     
			r4 g,, g g | 
			a4. b8 g4 g |
			a4. b8 g4 <g b>4 |
			\slurDotted
			<g c>2 ( <fis a>4 )r |
			r4 a a a |
			b4. c8 a4 a |
	%#134
			b4. c8 a4 d |
			\slurSolid
			<a c>2 ( <g b>4) r4 |
			r8 d' cis d c b a g |
			e'4 e8 c a4 r |
			d4 d8 b g4 r |
			fis4 fis8 a c4 r |
			
%pag.58 #140
			r8 b c d  \stemUp  e fis g a |
			<<{ b4 c d e}\\{g,,4 a b c }>>
			<<{a'1 \startTrillSpan} {s2. s8 s16 \acciaccatura {g32  [ \stopTrillSpan  a] } }>> |
			<<{g4 s2.}\\{  g,4 \stemUp g8 g fis a c c }>>|
			b8 d g g fis a c c |
			\stemNeutral
			b4 \acciaccatura { d,32 [g b]} d4 r \acciaccatura{d,32 [fis a]} d4 |
                                 
  %# 146
			r4 \acciaccatura{d,32 [ g b]} d4 r \acciaccatura{ d,32 [a' c] } d4|
			r4  \acciaccatura{ d,32 [g b]} d4 r4 \acciaccatura{d,32 [fis a] } d4 |
			r4 \acciaccatura{d,32 [ g b]} d4 r \acciaccatura{d,32 [a' c]} d4 |
			 \times 2/3{ r8 [b c]} \times 2/3{ d [c b]} \times 2/3{ r  [g a]} \times 2/3{ b [a g]} |
			 \times 2/3{ r [e fis]}  \times2/3{ g [ fis e]} \times 2/3 { r [ c d]} \times 2/3{ e [ d c ]} |
			 
%pag.59 #151
			 <d a' c>2 <d g b>4 <b d g>4 |
			 <a d fis>4 <b d g> <a e' a > <a c fis> |
			 <<{ \times 2/3{ r8 [ b' c]} \times 2/3{ d [ c b]} \times 2/3{ r8 [g a]}  \times 2/3 { b [a g]}}\\ {g,4 r e r }>> |
			  \times 2/3 { r8 [ e' fis]} \times 2/3{ g [fis e]} \times 2/3{ r [c d]} \times 2/3 { e [ d c ]} |
			  < d a' c>2 <d g b>4 <b d g>4 |
			  <a d fis> <b d g> <a e' a> <a c fis> |
			  
          %#157
			<d a' c>2  <d g b>4 <b d g>4 |
			<a d fis>4 <b d g> <a e' a> <a c fis>|
			<g b d g>4 r r2 |
			R1*3|
			
%pag.60#163
			b8 d b d b d c d |
			b d c d b d c d |
			b d b d b d b d |
			b4 a8 g \appoggiatura{g8} fis4 e8 fis |
			g4 r \appoggiatura{a16} a'4 \appoggiatura{d,16} d'4 |
			\appoggiatura{b,16} b'4 r4 \appoggiatura{a,16} a'4 \appoggiatura{d,16} d' 4 |
			
     %# 169
			\appoggiatura{g,,16} g'4 r \appoggiatura{a,16} a'4 \appoggiatura{d,16} d'4_\markup{\italic \bold "crescendo"} |
			\appoggiatura{b,16} b'4 \appoggiatura{d,16} d'4 \appoggiatura{a,16} a'4 \appoggiatura{d,16} d'4 |
			\appoggiatura{g,,16} g'4 \f \appoggiatura{d16} d'4 \appoggiatura{a,16} a'4 \appoggiatura{d,16}d'4 |
			\appoggiatura{b,16} b'4 \appoggiatura{d,16} d'4 \appoggiatura{a,16} a'4 \appoggiatura{d,16} d'4 |
			\appoggiatura{a16} g4 fis8 \p g fis g a g |
			
%pag.61 #174
			\appoggiatura{g8} f!4 e8 f e f g f |
			\appoggiatura{f8} e4 dis8 e dis e f e |
			\appoggiatura{e8} d!4 cis8 d cis d e d |
			\slurDotted
			b8 \f ( d c! e d4)  r |
			b8 \p ( d cis e  d4) r |
			b8 \f d c! e d e c d |
	%#180
	                    \slurSolid
			b8 \p (d cis e d4) r4 |
			r2 c,8 g c g |
			c e g c,  b d g d |
			e g c g e c e c |
			f c e c e c e c |
			f c e c e f g e |
			
%pag.62#186
			c8 e g c b, d g b |
			c, e g c  d, g b d |
			e, g c e f e d c |
			g c b a g f e d |
			c4 r r2 |
			R1*33 |
%pag.65#224
			a'8 f a bes c a bes g |
			a f a bes c a bes g |
			a f a bes c a bes g |
			r8 f a f c' a c a |
	%#228
			f'8 e f e f4 a |
			\once \override TextScript #'font-size = #2
                              \appoggiatura{a16^"[♪]"} g4 g8 fis g4 r |
			e'8 dis e dis e4 e, |
			\once \override TextScript #'font-size = #2 
			\appoggiatura{g16^"[♪]"} f!4 f8 e f4 r |
			f8 e f e f4 f |
			\appoggiatura{f32} f'4  f8 e f4 r |
%pag.66 #234
			f8 e d c b a g f |
			e f g a b c d e |
			f8 e d c b a g f |
			e f g a b c d e |
			d c b a  gis f e d |
			c d e f gis a b c |
	%#240
			bes8 a g! f e d c bes |
			a d cis e d f e g |
			f a g bes a f d c |
			<b! d g>4 r r2 |
			R1|
			r2 <c ees>4 <c ees>
%pag.67 #246
			<c ees>2  \appoggiatura{ g'8} <d f>4 <c ees>8 < d f> |
			<< { g8 e  s4  d4 d } \\ { ees4 c  b b } >> |
			<b d >2 \appoggiatura{f '8} < c ees>4 < b d>8 < c ees> |
			<< { f8 d s4 r2} \\ { d4 b4 s4 s4} >> |
			< g c>4 < f bes> <ees aes> < d g> |
			r8  c ees fis c' fis, ees c |
			r8 c ees fis c' fis, ees c |
			r8 d g b d b g d |
			b d g b ees d c b |
			c c, ees fis c' fis, ees c |
			r8 c ees fis c' fis, ees c |
			r8  b d g r c, ees fis |
%pag.68 #258
			r8 b, d g r  c, ees fis |
			r b, d b r cis e! cis |
			r d f! d r b d b |
			c!  e g f e g c d |
			e c g f e g c d |
			e a, cis e g cis, e g |
     %# 264
			cis e, g cis e4 r4 |
			d,8 a f e d f a cis |
			d a f e d f a c! |
			b g b d f b, d f |
			b d, f b d 4 r |
			r8 g, e c b g d' b |
%pag.69 #270
			c8 g e' c d g, f' d |
			e c c' g b g d' b |
			c g e' c d g, f' d |
			e c g gis a cis d f |
			g,!  b c! e f, a b d |
			e, gis a c d, fis g b |
	%#276
			c,8 d fis a c a fis c |
			b d g b d b g d |
			c d fis a c a fis c |
			\stemUp
			g g b d g fis g fis |
			g g, b d g fis g fis |
			g4 r r2 |
			R1*17|
%pag.71 #295 
                              \stemNeutral
			r4 c, c c |
			d d8 e c4 c |
% # 301
			d4 d8 e c4 < d f >4 
			<c e >2 ( < b d >4)  r4 |
			r4 < b d> < b d> < b d> |
			< c e > e8 f d4 < b d >4 |
			< c e >4 e8 f d4 < b g'>4 |
			\slurDotted
			< d f >2 (< c e >4 )  r4 |
			\slurSolid
%PAg.72 #307 
			r8 g'8 fis g f e d c |
			a' gis a f  d4 r |
			g!8 fis g e c4 r |
			b8 c d e f!4  r |
			\stemUp
			r8 e f g a b c d |
			e d c b a g f e |
			\stemNeutral
	%#313	
			<< { d1 \startTrillSpan }  { s2 s4 s8 s16 \acciaccatura { c32  [ \stopTrillSpan  d] } } >> |
			c4 r r2 |
			R1*5|
%pag.73 #320
			 \times 2/3 { d,8  ( [  f g ] } \times 2/3 { b [g f ] } \times 2/3 { d [ f g]  } \times 2/3 {b  [ g f ] )  } |
			\times 2/3 { d8  (  [ f g ] } \times 2/3 { b [ g f ] } \times 2/3 { d [ f g ] } \times 2/3 {b  [ g f ] )  } |
			< e g c>4 r  r2 |
			r2 < d f g b>4  \arpeggio r4 |
			R1|
			r2 <g, d' f g>4 \arpeggio r4 | 
     %#326
			R1*3 |
			r4 < e'' g >4~  < e g >8 <c e> < d f > < b d> |
			c4 r r2 |
			R1*5 |
%pag.74 #336
			<c e a c>4 \arpeggio c,8 c b d f f |
			e g c c   b d f f |
			e4 \appoggiatura {g,32 [ c e] } g4 r \appoggiatura{ g,32 [ b d ] } g4 |
	%#339
			r4 \appoggiatura {g,32 [c e ] } g4 r \appoggiatura { g,32 [ b d ] } g 4 |
			r4 \appoggiatura { g,32 [ c e ] } g4 r \appoggiatura {g,32 [ b d ] } g4 |
			r4 \appoggiatura { g,32 [ c e ] } g4 r \appoggiatura { g,32 [ b d ] } g4 |
			\times 2/3 { r8  [e f  ] } \times 2/3 { g  [ f e ]  } \times 2/3 { r [c d ] } \times 2/3 { e [ d c]  } |
			\times 2/3 { r [ a b ] } \times 2/3 { c [ b a ] } \times 2/3 { r [ f g ] } \times 2/3 { a [ g f ] } |
%pag.75 #344
			<d' g b >2 < c e g c>4 <g c e>4 |
			\stemUp
			< a c f>4 < c f a > < c e g> <d, g b > |
			<< { \times 2/3 { r8 [ e'' d ]} \times 2/3 { c [ d e ] } \times 2/3{ r [ c b]} \times 2/3{ a [  b c ]} } \\ {c,4 r a r } >> |
			\times 2/3{ r8 [ a' g]} \times 2/3{ f [ g a] } \times 2/3{ r [ f e ]} \times 2/3 { d [ e f]} |
			\stemNeutral
			< d  g b >2 < c e g c >4 <g c e >  |
			< a c f>4 < c f a> < c e g> <d, g b > |
          %#350
			< d' g b>2 <c e g c>4 <g c e> |
			< a c f> <c f a> < c e g> <d, g b > |
			< e c'>4 r <d  f a c > r |
			< e g c> r < d f b> r |
			<c e a c> r < d f a c> r |
			<e g c> r < d f g b > r |
%pag.76 # 356
			 < c e g c> 4 r r2 |
			 R1*3|
			 e'2 \fermata d \startTrillSpan |
			c4 \stopTrillSpan  r r2 |
			R1*5|
%pag. 77 #367
			 r2 e4 e |
			 e2 \appoggiatura{g8} f4 e8 f |
			 g (e) c4 c'4. b8|
			 \appoggiatura{b8} a4 g c4. b8 |
			 \appoggiatura{b8} a4 g c, c |
			 c2 \appoggiatura{e8} d4 c8 d |
	%#373
			e4 e \appoggiatura{g8} f4 e8 f |
			g4 g a8 g f e |
			e4 (d)  r2 |
			c8 g e c' b g d b'|
			c g e g c4 r |
			c8 b c b c4 r |
%pag78 # 379
			c'8 b d b c4 r |
			c,,8 e g c b, d g b |
			c, e g c d, g b d |
			e  c e c e d c b|
			c4 r r2 |
			R1|
			e,8 c e f g e f d |
			e c e f g e f d |e c e f g e g d |
			e c e g e4 r |
			R1*4|
			
			 }
        }
        
\context Staff ="LH"{
        \clef bass
        \key c \major
        \time 2/2
        \relative c{
        \set PianoStaff.midiInstrument = "acoustic bass"
        
%pagina 46
			    \partial 2
			    r2|
			    R1*57|
			    \clef treble
			    c'8 g' e g c, g' e g |
			    c, g' e g c, g' e g |
			    c, a' f a c, a' f a |
			    c, g' e g c, g' e g |
			    c, g' e g c, g' e g |
			    c, a' f a c, a' f a |
			    \clef bass
			    c,4 a f g |
			    c, r r2 |
			    c4 e g e |
			    c e g e |
                        
%pagina 52 # 68
			   c4 f a f |
			   c e g e |
			   c e g c, |
			   b d g b, |
			   c e f g |
			   c r4 r2 |
     %#74
			     b4 r r2 |
			     c4 e g g, |
			     c r4 r2 |
			     R1*13|
			     
%pagina 53 #86
			     g4 r r2|
			     g,4 r4 r2 |
			     
%pag.54 #92
			     <e e'>4 r r2 |
			     r r8 b'' gis e |
			     a4 r r2 |
			     a,4 r r2 |
			     <d,  d'>4 r r2 |
			     r2 r8 a'' fis d |
			
	%# 98
			     g4 r4 <c, c'> r |
			     <b b'> r <fis fis'> r |
			     <g g'> r <c c'> r |
			     <b b'> r <fis fis'> r |
			     <g g'> r \clef treble c'8 e fis a |
			     b, d e g a, c d fis |
			     \clef bass
			     
     %pag.55 #104 
			     g,8 b cis e fis, a b d! |
			     <e, g a cis>2 r |
			     <d fis a d >2 r |
			     <e g a cis>2 r |
			     d4 fis8 a d cis d cis |
			     d d, fis a d cis d cis |	
	%#110 
			     d4 r r2 |
			     R1*17|
			
%pag.57 #128
                  
			     g,8 d' b d g, d' b d |
			     d, d' c d  g, d'  b d |
			     d, d' c d g, b e, g |
			     d d' cis d cis d cis d |
			     d, a' fis a d, a' fis a |
			     d, b' g b d, a' fis a |
	     %#134 
			      d,8 b' g b d,a' fis a |
			      g, g' fis g  fis g fis g |
			      g,2 r4 b4 |
			      c8 e a c c, e a c |
			      b, d g b b, d g b |
			      a, c d fis a, c d fis |
			 
%pag 58 #140
			     g4 a8 b c \change Staff = RH d e fis |
			     s1|
			     
			     <<{fis1 } {s2. s8 s16  \acciaccatura{ e32 [  fis]}}>>
			     \change Staff = LH  
			     s4 g,8 g fis a c c |
			     \stemDown
			     b8 \change Staff = RH  d g g fis a c c |
			     \change Staff = LH 
			     \clef treble 
			     \stemNeutral
			     b4 d,8 d a'4 d,8 d |
			     
     %#146      
			     b'4 d,8 d  fis4 d8 d |
			     g4 d8 d a'4 d,8 d |
			     b'4 d,8 d fis4 d8 d |
			     g4 r4 e4 r |
			     \clef bass
			     c4 r a  r |
			
%pag. 59 # 151
			
			     r8 d,-. e-. fis-. g-. a-. b-. c-. |
			     d4 b c d |
			     s1|
			     c4 r a r |
			     r8 d,-. e-. fis-. g-. a-. b-. c-. |
			     d4 b c d |
			
	% #157
			     r8 d,-. e-. fis-. g-. a-. b-. c-. |
			     d4 b c d |
			     g, r r2|
			     R1*3|
			     \clef treble
			
%pag. 60 # 163
			
			     g'8  d g d  g d fis d |
			     g d fis d g d fis d |
			     g d g d g d g d |
			     g4 \clef bass b,4 d d, |
			     g8 b d d  fis, a d d |
			     g, b d d d, fis d' d |
			     
	    %#169
			    g, b d d  fis, a d d |
			    g, b d d d, fis d' d |
			    g, b d d fis, a d d |
			    g, b d d  d, fis d' d |
			    <g, b>4 r r2 | 
			    
%pag.61 #174
			    R1|
			    R1|
			    R1|
			    r2 r4 <g g'>4 \f|
			    r2 r4 <g g'> \p|
			    R1|
       %#180 		
			    R1|
			    R1|
			    c,4 r g r |
			    c, r r2 |
			    c'4 r r2 |
			    c4 r r2 |
			    
    %pag.62#186
			     e4 r g r |
			     c, r g r |
			     c r c' r |
			     g 2 r2 |
			     R1|
			     R1*33 |
%pag65 # 221
			     \clef treble 
			     f'8 c f g a f g e |
			     f c f g a f g e |
			     f c f g a f g e |
			     f r r4 r2 |
	%#228
			     f8 c' a c f, c' a c |
			     e, cis' a cis e, cis' a cis |
			     cis, a' e a cis, a' e a |
			     d, a' f a d, a' f a |
			     d, a' f a c,! aes' d, aes' |
			     b, g' d g b, g' d g |
%pag.66 #234
			     <b, g'>2 r4 <b g'>4 |
			     <c g'>2  r4 <c g'> |
			     <b g'>2 r4 <b g'> |
			     <c g'>2 r4 < c g'> |
			     <gis e'>2 r4 <gis e'>
			     <a e'>2 r4 <a e' > |
			     \clef bass
	%#240
			     
			    <e c'>2 r4 <e c'> |
			    <f c'>4 r r2 |
			    r2 f4 fis |
			    g4 r r2 |
			    R1|
			    \clef treble
			    r2 < c ees>4 <c ees>4 | 
  %pag.67 #246
			     <c ees>2 \appoggiatura { g'8} < d f>4 < c ees>8 < d f > |
			     << { g8 ees c4 d d } \\  { ees4 s4 b b } >> |
			     < b d>2 \appoggiatura{ f'8} <  c ees>4 < b d>8 <c ees> |
			     << { f8 d b4 r2} \\ { d4 s4 s4 s4 } >> |
			     \clef bass
			     ees4 d c bes |
			     < aes, aes'>4  r r2 |
     %#252
			     <aes aes'>4 r r2 |
			     < g  g' >4 r r2 |
			     < g  g' >4  r r2 |
			     < aes aes' >4 r r2 |
			     < aes aes' >4 r r2 |
			     < g g'>4 r g' r |
%pag.68 # 258
			     <g, g'>4 r g' r |
			     g r g r |
			     g r g r |
			     c, r r2 |
			     c,4 r  r2 |
			     <a' a'>4 r r2 |
	% #264
			     r2 r8 e'' cis a |
			     d4 r r2 |
			     d,4 r r2 |
			     <g, g'>4 r r2 |
			     r2 r8 d'' b g |
			     c4 r <f,, f'> r |
			     
%pag.69 # 270
			     < e e' >4 r4 < b' b' > r |
			     < c  c' >4 r < f  f' > r |
			     < e e' > r
			      \clef treble 
			      <b' b'>4 r |
			     < c c' >4 r  f8 a b d |
			     e, g a c  d, f g b |
			     c, e fis a b, d e g |
	%#276
			     <a, c d fis>2 r |
			     < g b d g>2 r 
			     \clef bass
			     < a, c d fis>2 r |
			     g4 b8 d g fis g fis |
			     g g b 
			     \change Staff = RH  
			     d  \stemDown g fis g fis |
			     g4  s4 s4 s4 |
			     \change Staff = LH
			      R1*17|
%pag.71 #295
			      \clef treble |
			      \stemNeutral
			      c,8 g' e g c, g' e g |
			      g, g' f g e g c, g'| 
	%#301
			     g, g' f g  e g g, g' |
			     g, g' fis g fis g fis g |
			     g, d' b d g, d' b d |
			     g, e' c e g, d'  b d |
			     g, e' c e g, d' b d |
			     \clef bass
			     c, c' b c b c b c  |
%Pag.72 #307
			     c,2 r4 e |
			     f4 f'8 d b4 b8 g |
			     e4 e'8 c a4 a8 f |
			     d4 d'8 c b a b g |
			     \stemDown
			     c4 
			     \change Staff = RH
			     d8 e f g a b |
			     c b a g f  e d
			     \change Staff = LH 
			     c |
            %#313
			     \stemNeutral
			   << {  b1 \startTrillSpan } { s2 s4 s8 s16 \acciaccatura { a32 [ \stopTrillSpan b] } } >>
			   c4 r r2 |
			   R1*5|
%Pag.73 #320
			     
			    b,8^\markup{ \italic \bold "sotto voce" }  ( g d' g, b g d' g, ) |
			    b ( g d' g, b g d' g, ) |
			    c4 r r2 |
			    r2 <g b d g>4 \arpeggio r |
			    R1|
			    r2 <g d' f >4 \arpeggio r4 |
	%#326
			     R1*3|
			     r2 <c' e>4 < g d'> |
			     < e  c'>4 r r2 |
			     R1*5|
%pag.74 #336
		                c'4 c,8 c b d f f |
		                e g c c b d  f f |
		                e4 g,8 g d'4 g,8 g |
	%#339
			     e'4 g,8 g b4 g8 g |
			     c4 g8 g d'4 g,8 g |
			     e'4 g,8 g b4 g8 g |
			     c4 r a r |
			     f r d r |
%pag.75#344
			     r8 g fis f! e c' b bes |
			     a4 f g g, |
			     s1|
			     \change Staff = RH
			     \stemDown
			     f''4 r d r |
			     \stemNeutral
			     \change Staff = LH 
			     r8 g, fis f! e c' b bes |
			     a4 f g g, |
          %#350
			      r8 g' fis f e c' b bes |
			      a4 f g g, |
			      a8 c e a f, a d f |
			      g, c e g  g, d' f g |
			      a, c e a f, a d f |
			      g, c e g g, b d g |
%pag.76 # 356	
		                c,4 r r2 |
		                R1*3 |
		                <g g'>2  \fermata r2 |
		                <c e g c> 4 r r2 |
	%#362	
			     R1*5|
			     \clef treble 
%pag.77 # 367
			     r2 c'8 e g e |
			     c g c g d' g, d' g, |
			     e' c e g e c e c |
			     f c e c e c e c |
			     f c e c e f g e |
			     c g c g b g b g |
	%#373
			     c g c g d' g, d' g, |
			     \clef  bass
			     e' c g e c4 c' |
			     g4  g'8 fis  g f e d |
			     c4 r g r |
			     c, r  e'8 c e c |
			     f  c e c e c e c |
%pag.78 #379
			   f c e c e c e c |
			   c,4 r g r |
			   c r g'  r |
			   e c g' g, |
			   c r r2 |
			   R1|
			   c'8 g c  d e c d b |
			   c g c d e c d  b |
			   c g c d e c d b |
			   c g c e c4 r |
			    R1*4|
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
	piece =\markup{\bold "[III. Rondeu-Allegro]"}
	}
	\midi {}

	\layout  {}
}

\paper {

line-width = 182\mm
}
            

