\version "2.10.20" 
\include "definitions.ly" 

%Temporary line and page break definitions - only needed when entering music. 
%mBreak = { \break } 
%nBreak = { \noBreak } 
%turnPage = { \pageBreak } 
%noTurnPage = { \noPageBreak } 

%Include line and page breaks as per original score for the score only. 
%The tags will remove the breaks from the instrumental parts. 
mBreak = { \tag #'score \break } 
nBreak = { \tag #'score \noBreak } 
turnPage = { \tag #'score \pageBreak } 
noTurnPage = { \tag #'score \noPageBreak } 

%End of line check and no line break - to save awkward typing. 
endline = | { \nBreak } 

global = { } 

\header { 
 title = \markup \center-align { "Aria - Geliebter Jesu" } 
 subtitle = \markup \center-align { "From Cantata No. 16" } 
 composer = \markup { "Johann Sebastian Bach" } 
 mutopiatitle = "Geliebter Jesu - From Cantata No. 16" 
 mutopiacomposer = "BachJS" 
 mutopiaopus = "BWV 16" 
 mutopiainstrument = "Oboe da Caccia or English Horn or Viola, Tenore, Basso Continuo" 
 date = "1726" 
 source = "Hauptmann, 1852. Bach Gesellschaft Volume 2." 
 style = "Baroque" 
 copyright = "Creative Commons Attribution 3.0" 
 maintainer = "Ben Stewart" 
 maintainerEmail = "benjamin.james.stewart@gmail.com" 

 footer = "Mutopia-2009/09/05-1695"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2009. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by/3.0" http://creativecommons.org/licenses/by/3.0 } } } }
 } 

%Formatting parameters. 
\paper { 
	between-system-space = 0.5\cm 
	between-system-padding = #0.5 
	%annotate-spacing = ##t 
	page-top-space = #1.5 
	head-separation = #1.5 
	foot-separation = #1.5 
	bottom-margin = #2 
	top-margin = #2 
	%#( set-paper-size "a4" ) 
	} 

OboeDaCacciaNotes = \new Voice { \relative c' { 
	\key f \major   
	\time 3/4 
	\tag #'OboeDaCacciaPart \set Score.skipBars = ##t	
	\tag #'OboeDaCacciaTPart \set Score.skipBars = ##t	
		%{ Bar 1 %} r4 r8 c8 a16 (f') d bes= \endline 
		%{ Bar 2 %} c16 e f8~ f16 c d bes a f' d bes= \endline 
		%{ Bar 3 %} c16 a f8~ f f'16 (g32 a) g16 c, (b c=') \endline 
		%{ Bar 4 %} f16 (d e g) b (c) e, (g) f (d) e (a=') \endline 
		\mBreak 

		%{ Bar 5 %} fis8 g~ g16 c, (b c) f16 (d) e (c=') \endline 
		%{ Bar 6 %} a16 (g f) d' b (c) f (d) d8. \trill c='16 \endline 
		%{ Bar 7 %} c4 r8 g'16 (f32 e) c'16 f,16 (g a=') \endline 
		%{ Bar 8 %} ees8 d~ d16 c fis (g) a d, a' (bes=') \endline 
		\mBreak 

		%{ Bar 9 %} c8 (bes) r8 bes16 (a32 g) d'16 \staccato g, (a bes=') \endline 
		%{ Bar 10 %} bes16 \staccato e, (f g) g \staccato c, (d e) e \staccato g, (a bes= ) \endline 
		%{ Bar 11 %} bes4~ bes16 g16 (a c) e (f) c f=' \endline 
		%{ Bar 12 %} a8 g~ g16 b, (c e) g (a) c, g'=' \endline 
		\mBreak 

		%{ Bar 13 %} bes8 a~ a16 e (f a) c (d) f, a=' \endline 
		%{ Bar 14 %} b8 c~ c16 f, (e f) bes (g) a (f=') \endline 
		%{ Bar 15 %} ees16 (c d) g e (f) bes (g) g8. \trill f='16 \endline 
		%{ Bar 16 %} f8 bes,~ bes16 g (a d) c (bes32 a) bes16 (a32 g= ) \endline 
		\mBreak 

		%{ Bar 17 %} f= 4 r4 r4 \endline \mark \markup { \musicglyph #"scripts.segno" } 
		%{ Bar 18 %} R1*3/4 \endline 
		%{ Bar 19 %} r4 r8 c'8 \p a16 (f' d bes= ) \endline 
		%{ Bar 20 %} c16 e f8~ f16 c d bes a f' d bes= \endline 
		\mBreak 

		%{ Bar 21 %} c16 a f8~ f a' bes16 (c32 d) c16 bes=' \endline 
		%{ Bar 22 %} a16 bes c8~ c16 f, (e f) bes (g) a='8 \staccato \endline 
		%{ Bar 23 %} a16 (f e f) c='2~ \endline 
		%{ Bar 24 %} c16 f e g f='8 r8 r4 \endline 
		\mBreak 

		%{ Bar 25 %} r4 r8 f16 (g32 a) g16 c, (b c=') \endline 
		%{ Bar 26 %} f16 (d e g) b (c) e, (g) f (d e) a=' \endline 
		%{ Bar 27 %} fis8 g~ g16 c, (b c) f (d) e (c=') \endline 
		%{ Bar 28 %} a16 (g f) d' b (c) f (e) d8. \trill c='16 \endline 
		\mBreak 

		%{ Bar 29 %} c16 \staccato e (f g) g \staccato c, (d e) e \staccato a, (b c=') \endline 
		%{ Bar 30 %} c16 (a b d) g='2~ \endline 
		%{ Bar 31 %} g16 b,(c e) g (a f e) d (c b c=') \endline 
		%{ Bar 32 %} c16 (a b d) g,= 2 \endline 
		\mBreak 

		%{ Bar 33 %} R1*3/4 \endline 
		%{ Bar 34 %} r4 r8 g'8 \f e16 (c') a f=' \endline 
		%{ Bar 35 %} g16 b c8~ c16 g a f e c' a f=' \endline 
		%{ Bar 36 %} g16 e c8~ c16 d (e g) a (e) f a=' \endline 
		\mBreak 

		%{ Bar 37 %} d8 f,8~ f16 d (e a) g (f32 e) f16 (e32 d=') \endline 
		%{ Bar 38 %} c4 r8 e8 \p f16 (g32 a g16 f=') \endline 
		%{ Bar 39 %} f8 e~ e16 b (c e) g (a) c, g'=' \endline 
		%{ Bar 40 %} bes8 a~ a a, bes16 (c32 d c16 bes= ) \endline 
		\mBreak 

		%{ Bar 41 %} bes16 (g) a4 a'16 (g32 f) c'16 f, (g a=') \endline 
		%{ Bar 42 %} ees8 d~ d=' r8 r4 \endline 
		%{ Bar 43 %} r4 r8 bes'16 (a32 g) d'16 \staccato g, (a bes=') \endline 
		%{ Bar 44 %} bes16 \staccato e, (f g) g \staccato c, (d e) e \staccato g, (a bes= ) \endline 
		\mBreak 

		%{ Bar 45 %} bes4~ bes16 g (a c) e (f) c f=' \endline 
		%{ Bar 46 %} a8 g~ g16 b, (c e) g (a) c, g'=' \endline 
		%{ Bar 47 %} bes8 a~ a16 e (f a) c (d) f, a=' \endline 
		%{ Bar 48 %} b8 c=''4 r8 r4 \endline 
		\mBreak 

		%{ Bar 49 %} R1*3/4*2 
		%{ Bar 51 %} r4 bes4 a16 \trill (g) a='8 \endline 
		%{ Bar 52 %} a8 g='4 r8 r4 \endline 
		\mBreak 

		%{ Bar 53 %} R1*3/4*2 \endline 
		%{ Bar 55 %} r4 r8 c,8 \f a16 (f' d bes= ) \endline 
		%{ Bar 56 %} c16 e f8~ f16 c d bes a f' d bes= \endline 
		\mBreak 

		%{ Bar 57 %} c16 a f8~ f f'16 (g32 a) g16 c, (b c=') \endline 
		%{ Bar 58 %} f16 (d e g) b (c) e, (g) f (d) e (a=') \endline 
		%{ Bar 59 %} fis8 g~ g16 c, (b c) f (d) e (c=') \endline 
		%{ Bar 60 %} a16 (g f) d' b (c) f (d) d8. \trill c='16 \endline 
		\mBreak 

		%{ Bar 61 %} c4 r8 g'16 (f32 e) c'16 f, (g a=') \endline 
		%{ Bar 62 %} ees8 d~ d16 c fis (g) a d, a' (bes=') \endline 
		%{ Bar 63 %} c8 (bes) r8 bes16 (a32 g) d'16 \staccato g, (a bes=') \endline 
		%{ Bar 64 %} bes16 \staccato e, (f g) g \staccato c, (d e) e \staccato g, (a bes= ) \endline 
		\mBreak 

		%{ Bar 65 %} bes4~ bes16 g (a c) e (f) c f=' \endline 
		%{ Bar 66 %} a8 g~ g16 b, (c e) g (a) c, g'=' \endline 
		%{ Bar 67 %} bes8 a~ a16 e (f a) c (d) f, a=' \endline 
		%{ Bar 68 %} b8 c~ c16 f, (e f) bes (g) a (f=') \endline 
		\mBreak 

		%{ Bar 69 %} ees16 (c d ) g e (f) bes (g) g8. \trill f='16 \endline 
		%{ Bar 70 %} f8 bes,~ bes16 g (a d) c (bes32 a) bes16 (a32 g= ) \endline 
		%{ Bar 71 %} f= 4 \fermata r4 r4 \endline 
		%{ Bar 72 %} r8 d'16 \p (cis d='8) r8 r4 \endline 
		\mBreak 

		%{ Bar 73 %} r8 e16 (d e='8) r8 r4 \endline 
		%{ Bar 74 %} r8 f16 (e f='8) r8 r4 \endline 
		%{ Bar 75 %} r4 r8 a8 \f f16 (d') bes g=' \endline 
		%{ Bar 76 %} a16 cis d8~ d16 a bes g e a f d=' \endline 
		\mBreak 

		%{ Bar 77 %} e16 cis a= 8 r4 r4 \endline 
		%{ Bar 78 %} r16 e'16 \p (f a) d=''8 r8 r4 \endline 
		%{ Bar 79 %} r16 d,16 (e g) c=''8 r8 r4 \endline 
		%{ Bar 80 %} r16 c,16 (d f) bes='8 r8 r4 \endline 
		\mBreak 

		%{ Bar 81 %} r4 r8 g16 (a32 bes) a16 d, (cis d=') \endline 
		%{ Bar 82 %} g16 (e f a) cis (d) f, (a) g (e) f (bes=') \endline 
		%{ Bar 83 %} gis8 a~ a16 d, (cis d) g (e) f (d=') \endline 
		%{ Bar 84 %} bes16 (a g= ) r16 r4 r4 \endline 
		\mBreak 

		%{ Bar 85 %} r4 r8 a8 \f f16 (d') bes g= \endline 
		%{ Bar 86 %} a16 cis d8~ d16 a bes g a d bes g= \endline 
		%{ Bar 87 %} cis16 e g8~ g16 e f d e g bes d,=' \endline 
		%{ Bar 88 %} cis16 e a, g f a d e e8. \trill d='16 \endline 
		\mBreak 

		%{ Bar 89 %} d='4 r4 r4 \endline 
		%{ Bar 90 %} R1*3/4*6  
		%{ Bar 96 %} R1*3/4  
				 \once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible  
				 \mark "Dal Segno."  
				 \bar "||"  
					 
		 


	}} 
	 
OboeDaCacciaTNotes = \transpose f c' {\OboeDaCacciaNotes} 
	 
TenoreNotes = \new Voice = "TenoreVoice" { \relative c' { 
	\key f \major   
	\time 3/4 
	\tag #'TenoreGermanTPart \set Score.skipBars = ##t		 
	\tag #'TenoreGermanPart \set Score.skipBars = ##t	
	\tag #'TenoreEnglishPart \set Score.skipBars = ##t	
	\tag #'TenoreEnglishTPart \set Score.skipBars = ##t	

		%{ Bar 1 %} R1*3/4*16 
		%{ Bar 17 %} r4 r8 c8 bes16 [a32 g] a16 [f=] \endline \mark \markup { \musicglyph #"scripts.segno" } 
		%{ Bar 18 %} d'8 c4 bes16 [a] f'8 d16 \trill [c='] \endline 
		%{ Bar 19 %} c=' 4 r4 r4 \endline 
		%{ Bar 20 %} R1*3/4 
		\mBreak 

		%{ Bar 21 %} r4 r8 c8 d16 [e32 f] e16 [d='] \endline 
		%{ Bar 22 %} c8 \appoggiatura bes8 a4 g16 [f] d' [bes] c='8 \endline 
		%{ Bar 23 %} c4 r8 g8 a16 [g] bes= 8 \endline 
		%{ Bar 24 %} a16 [d] c4 bes16 [a g f] bes= 8 \noBeam \endline 
		\mBreak 

		%{ Bar 25 %} g4 r8 d'16 [e32 f] e8 d=' \noBeam \endline 
		%{ Bar 26 %} b8 \trill c4 g'8 \noBeam d16 [f] e [c='] \endline 
		%{ Bar 27 %} c8 b4 \trill g8 a16 [f] g= 8 \noBeam \endline 
		%{ Bar 28 %} d'16 e f8~ f16 [e] d [g] b,8. \trill c=' 16 \noBeam \endline 
		\mBreak 

		%{ Bar 29 %} c4 r8 g8 \noBeam c \noBeam e=' \endline 
		%{ Bar 30 %} e8 \trill d r8 c16 [b] c [b] a [g=] \endline 
		%{ Bar 31 %} f'16 [d] e4 d16 [c] b [a] fis'8 \endline 
		%{ Bar 32 %} fis8 g4 f16 [e]d [b] c [e='] \endline 
		\mBreak 

		%{ Bar 33 %} a16 f g8~ g16 c, b [c] \appoggiatura d16 f8 e=' \noBeam \endline 
		%{ Bar 34 %} \appoggiatura d8 c='4 r4 r4 \endline 
		%{ Bar 35 %} R1*3/4*2 \endline 
		\mBreak 

		%{ Bar 37 %} R1*3/4 \endline 
		%{ Bar 38 %} r4 r8 g8 a16 bes32 c bes16 a= \endline 
		%{ Bar 39 %} a8 \trill g= 4 r8 r4 \endline 
		%{ Bar 40 %} r4 r8 c8 d16 ees32 f ees16 d=' \endline 
		\mBreak 

		%{ Bar 41 %} d8 \trill c='4 r8 r4 \endline 
		%{ Bar 42 %} r4 r8 c8 fis16 g32 a c,='8 \endline 
		%{ Bar 43 %} c8 bes r8 d8 g \noBeam f=' \endline 
		%{ Bar 44 %} e8 [d] c [bes] a16 [d] c='8 \noBeam \endline 
		\mBreak 

		%{ Bar 45 %} f,8 e r4 r8 f'='8 \endline 
		%{ Bar 46 %} c16 a bes4 g8 e'16 [f] g='8 \noBeam \endline  
		%{ Bar 47 %} g16 e f4 a8 d,8 \noBeam f=' \endline 
		%{ Bar 48 %} f8 [e] g \noBeam bes,16 (a bes8) \noBeam g= 8 \endline 
		\mBreak 

		%{ Bar 49 %} a16 d c4 bes16 a g [f] g= 8 \endline 
		%{ Bar 50 %} f4 f' ees16 \trill d ees='8 \endline 
		%{ Bar 51 %} d4 r8 c8 ees d=' \noBeam \endline 
		%{ Bar 52 %} c8 [bes16 a bes8] g e' f=' \noBeam \endline 
		\mBreak 

		%{ Bar 53 %} g8 bes, d c \noBeam bes16 g a d=' \endline 
		%{ Bar 54 %} c [f e d] c [bes] a8 bes g= \noBeam \endline 
		%{ Bar 55 %} f= 4 r4 r4 \endline 
		%{ Bar 56 %} R1*3/4 \endline 
		\mBreak 

		%{ Bar 57 %} R1*3/4*14 

		%{ Bar 71 %} r4 \fermata r8 a8 a a= \noBeam \endline 
		%{ Bar 72 %} d8 [f16 e f8] a, a a= \noBeam \endline 
		\mBreak 

		%{ Bar 73 %} e'8 g16 [(f g8)] a, a a= \noBeam \endline 
		%{ Bar 74 %} f'8 [a16 g a8] d, g e=' \noBeam \endline 
		%{ Bar 75 %} cis8 b16 [(cis a= 8)] r8 r4 \endline 
		%{ Bar 76 %} R1*3/4 \endline 
		\mBreak 

		%{ Bar 77 %} r4 r8 e'8 d16 [cis] b [a= ] \endline 
		%{ Bar 78 %} f'8 \noBeam d4 c16 [bes a g] g'8 \noBeam \endline 
		%{ Bar 79 %} e8 \appoggiatura d c4 bes16 [a] g [f] f'='8 \noBeam \endline 
		%{ Bar 80 %} d16 [c] bes4 a16 [g] f [e] e'='8 \endline 
		\mBreak 

		%{ Bar 81 %} cis8 b16 ([cis a8]) e' f a,= \noBeam \endline 
		%{ Bar 82 %} bes8 (a4) f'8 e d=' \noBeam \endline 
		%{ Bar 83 %} d8 cis16 d \noBeam e8 f \noBeam g,= 4~ \endline 
		%{ Bar 84 %} g8 d'16 [cis] \noBeam d8. \trill e16 \noBeam e8. \trill d='16 \endline 
		\mBreak 

		%{ Bar 85 %} d='4 r4 r4 \endline 
		%{ Bar 86 %} R1*3/4*3 
		\mBreak 

		%{ Bar 89 %} r4 f4 r8 d='8 \endline 
		%{ Bar 90 %} c16 [b] a [g] g'8 \noBeam f16 [e] f [d] e='8 \noBeam \endline 
		%{ Bar 91 %} e4 r8 b8 \noBeam e16 [d] c [b= ] \endline 
		%{ Bar 92 %} c16 [a c e f8] e8 \noBeam d16 [c] b [a= ] \endline 
		\mBreak 

		%{ Bar 93 %} gis4 r8 e8 a b= \noBeam \endline 
		%{ Bar 94 %} c8 \noBeam d16 [e] d [c] b [a] f'8 \noBeam e16 [d='] \endline 
		%{ Bar 95 %} c8 \noBeam d16 [c] b [a] g [f] e' [f] f='8 \trill \noBeam \endline 
		%{ Bar 96 %} g4 r8 c,8 \noBeam bes16 [a32 g] a16 [f= ] \noBeam 
				\once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible  
				\mark "Dal Segno."  
				\bar "||"  


	}} 

TenoreLyricsGerman = \new Lyrics \lyricsto "TenoreVoice" { 

		%{ Bar 17 %} Ge -- leib -- _ _ ter _ 
		%{ Bar 18 %} Je -- su, du, _ du al -- _ 
		%{ Bar 19 %} lein, 

		%{ Bar 21 %} ge -- leib -- _ _  ter _ 
		%{ Bar 22 %} Je -- su, du, _ du _ al -- 
		%{ Bar 23 %} lein sollst mei -- _ ner  
		%{ Bar 24 %} See -- _ len Reich -- _ _ _ thum 

		%{ Bar 25 %} sein, ge -- _ _ lieb -- ter 
		%{ Bar 26 %} Jes -- su, du, du _ al -- _  
		%{ Bar 27 %} lein __ _ sollst meiner _ _ 
		%{ Bar 28 %} See -- _ _ _ len _ Reichthum _ 

		%{ Bar 29 %} sein, du, du al -- 
		%{ Bar 30 %} lein, _ ge -- _ leib -- _ ter _ 
		%{ Bar 31 %} Je -- _ su, du, _ du _ al -- 
		%{ Bar 32 %} lein __ _ sollst _ mei -- _ ner _ 

		%{ Bar 33 %} See -- _ _ _ len _ Reichthum _  
		%{ Bar 34 %} sein! 

		%{ Bar 37 %} Ge -- leib -- _ _ ter _ 
		%{ Bar 38 %} Je -- su,  
		%{ Bar 39 %} ge -- leib -- _ _ ter _ 

		%{ Bar 41 %} Je -- su, 
		%{ Bar 42 %} du, du _ _ al -- 
		%{ Bar 43 %} lein _ sollst mei -- ner 
		%{ Bar 44 %} See -- _ len _ Reichthum _ _ 

		%{ Bar 45 %} sein! _ Ge -- 
		%{ Bar 46 %} leibter, _ _ ge -- leibter _ _ 
		%{ Bar 47 %} Je -- _ su, du, du al -- 
		%{ Bar 48 %} lein _ sollst mei -- ner 

		%{ Bar 49 %} See -- _ _ len _ Reichthum _ _ 
		%{ Bar 50 %} sein, du al -- _ _  
		%{ Bar 51 %} lein, ge -- leib -- ter 
		%{ Bar 52 %} Je -- _ _ _ su, du al -- 


		%{ Bar 53 %} lein sollst mei -- ner See -- _ _ _ _ _ _ _ _ _ 
		%{ Bar 54 %} len Reichthum _ 
		%{ Bar 55 %} sein! 

		%{ Bar 71 %} Wir wol -- len 
		%{ Bar 72 %} dich __ _ _ _ vor al -- len 
	 
		%{ Bar 73 %} Schät -- zen in un -- ser  
		%{ Bar 74 %} treu -- _ _ _ es Her -- ze 
		%{ Bar 75 %} set -- zen, 

		%{ Bar 77 %} wir wol -- _ len _ 
		%{ Bar 78 %} dich vor al -- _ _ _ len 
		%{ Bar 79 %} Schätzen _  in _ un -- _ ser 
		%{ Bar 80 %} treu -- _ _ es _ Her -- _ ze 

		%{ Bar 81 %} set -- zen, wir wol -- len 
		%{ Bar 82 %} dich vor al -- len 
		%{ Bar 83 %} Schätzen _ in un -- ser treu -- 
		%{ Bar 84 %} es _ Her -- ze set -- _ 

		%{ Bar 85 %} zen,  

		%{ Bar 89 %} ja, ja, 
		%{ Bar 90 %} wenn _ das _ Le -- bensband _ _ _ zer -- 
		%{ Bar 91 %} reisst, ja, wenn _ das _ 
		%{ Bar 92 %} Le -- _ _ _ _ bens -- band _ zer -- _ 

		%{ Bar 93 %} reisst, stimmt un -- ser 
		%{ Bar 94 %} gott -- ver _ nüg _ ter _ Geist noch _ 
		%{ Bar 95 %} mit den _ Lip _ pen _ sebulich _ _  
		%{ Bar 96 %} ein: Ge -- leib -- _ _ ter _ 
		 


} 

TenoreLyricsEnglish = \new Lyrics \lyricsto "TenoreVoice" {

		%{ Bar 17 %} Be -- lov -- _ _ ed __ _
		%{ Bar 18 %} Je -- su, thou, _ thou al -- _
		%{ Bar 19 %} lone,

		%{ Bar 21 %} Be -- lov -- _ _ ed __ _
		%{ Bar 22 %} Je -- su, thou _ thou _ a --
		%{ Bar 23 %} lone shall my __ _ _ 
		%{ Bar 24 %} soul's __ _ _ rich -- _ _ _ es 

		%{ Bar 25 %} be, be -- _ _ lov -- ed 
		%{ Bar 26 %} Je -- su, thou, thou _ a -- _ 
		%{ Bar 27 %} lone __ _ shall my __ _ _
		%{ Bar 28 %} soul's __ _ _ _ _ _ riches _

		%{ Bar 29 %} be, thou, thou a --
		%{ Bar 30 %} lone, _ be -- _ lov -- _ ed __ _
		%{ Bar 31 %} Je -- _ su,  thou, _ thou _ al --
		%{ Bar 32 %} lone __ _  shall _ my __ _ _ _
		%{ Bar 33 %} soul's __ _ _ _ _ _ rich -- es be!

		%{ Bar 38 %} Be -- lov -- _ _ ed __ _ 
		%{ Bar 39 %} Je -- su,
		%{ Bar 40 %}  be -- lov -- _ _ ed __ _

		%{ Bar 41 %} Je -- su,
		%{ Bar 42 %} thou, thou _ _ al --
		%{ Bar 43 %} lone _ shall my __ _
		%{ Bar 44 %} soul's __ _ _ _ rich -- es _ 

		%{ Bar 45 %} be! __ _ Be --
		%{ Bar 46 %} lov -- _ ed, be -- lov -- _ ed
		%{ Bar 47 %} Je -- _ su, thou, thou al --
		%{ Bar 48 %} lone __ _ shall my __ _

		%{ Bar 49 %} soul's __ _ _ _ _ rich -- _ es
		%{ Bar 50 %} be, thou al -- _ _ 
		%{ Bar 51 %} lone, be -- lov -- ed 
		%{ Bar 52 %} Je -- _ _ _ su, thou al --

		%{ Bar 53 %} lone shall my __ _ soul's __ _ _ _
		%{ Bar 54 %} _ _ _ _ _ _ _ rich -- es be!

		%{ Bar 71 %} We val -- ue 
		%{ Bar 72 %} thou __ _ _ _ a -- bove all

		%{ Bar 73 %} treas -- ures in our __ _ 
		%{ Bar 74 %} tru -- _ _ _ ly faith -- ful 
		%{ Bar 75 %} hearts, __ _

		%{ Bar 77 %} we val -- _ ue __ _
		%{ Bar 78 %} thou be -- fore __ _ _ _ all
		%{ Bar 79 %} treas -- ures in __ _ our __ _ _
		%{ Bar 80 %} tru -- _ _ ly __ _ faith -- _ ful

		%{ Bar 81 %} hearts, __ _ we val -- ue
		%{ Bar 82 %} thou be -- fore all
		%{ Bar 83 %} treas -- ures in our __ _ tru -- 
		%{ Bar 84 %} ly _ faith -- ful hearts, __ _

		%{ Bar 85 %} _

		%{ Bar 89 %} yes, yes, 
		%{ Bar 90 %} when _ our _ lives __ _ _ _ _ be 
		%{ Bar 91 %} done, yes when _ our _ 
		%{ Bar 92 %} lives __ _ _ _ _ _ _ _ be __ _
		%{ Bar 93 %} done, our spir -- its, 
		%{ Bar 94 %} con -- ten -- _ ted _ in _ God shall _
		%{ Bar 95 %} with our _ lips __ _ _ _ sing _ as 
		%{ Bar 96 %} one: Be -- lov -- _ _ ed __ _


} 

ContinuoNotes = \new Voice { \relative c { 
	\key f \major 
	\time 3/4 
	\clef bass 
	\tag #'ContinuoPart \set Score.skipBars = ##t	
		 
		%{ Bar 1 %} f,8 f' e c f g= \endline
		%{ Bar 2 %} a8 g a bes c bes= \endline
		%{ Bar 3 %} a8 c a f e a= \endline
		%{ Bar 4 %} b8 c d, c b c= \endline
		\mBreak

		%{ Bar 5 %} a8 g g' a b c=' \endline
		%{ Bar 6 %} f,8 d g a f g= \endline
		%{ Bar 7 %} c,8 d c bes a g=, \endline
		%{ Bar 8 %} fis8 fis' g a d, fis= \endline
		\mBreak

		%{ Bar 9 %} g,8 d' g a bes g= \endline
		%{ Bar 10 %} c8 c, c c c c= \endline
		%{ Bar 11 %} c8 d e c a f=, \endline
		%{ Bar 12 %} c'8 d e g c, e= \endline
		\mBreak

		%{ Bar 13 %} f8 c f a f e= \endline
		%{ Bar 14 %} d8 c16 d e8 c f f,=, \endline
		%{ Bar 15 %} bes8 g a d bes c= \endline
		%{ Bar 16 %} d g e f a, c= \endline
		\mBreak

		%{ Bar 17 %} f,8 f' \p e c f f,=, \mark \markup { \musicglyph #"scripts.segno" } \endline
		%{ Bar 18 %} bes8 a16 g a8 f a bes=, \endline
		%{ Bar 19 %} a8 f a c f g= \endline
		%{ Bar 20 %} a8 g a bes c bes= \endline
		\mBreak

		%{ Bar 21 %} a8 g a f bes bes,=, \endline
		%{ Bar 22 %} f8 f'16 e f8 a bes bes,=, \endline
		%{ Bar 23 %} f'8 f, a c f e= \endline
		%{ Bar 24 %} f8 bes, a c d bes=, \endline
		\mBreak

		%{ Bar 25 %} c8 c, c c c c=, \endline
		%{ Bar 26 %} c'8 c, c c' b c= \endline
		%{ Bar 27 %} g8 g' f e d a=, \endline
		%{ Bar 28 %} b8 d g, f g g=, \endline
		\mBreak

		%{ Bar 29 %} c,8 c' e g e c= \endline
		%{ Bar 30 %} g'8 g, b d g, b=, \endline
		%{ Bar 31 %} c8 g' c b c d=' \endline
		%{ Bar 32 %} g,8 d b g e' c= \endline
		\mBreak

		%{ Bar 33 %} f8 d e f g g,=, \endline
		%{ Bar 34 %} c,8 c' \f e g c f,= \endline
		%{ Bar 35 %} e'8 d, e f g f= \endline
		%{ Bar 36 %} e8 d e c f d= \endline
		\mBreak

		%{ Bar 37 %} b8 g c a e g=, \endline
		%{ Bar 38 %} c8 c, \p c c c c=, \endline
		%{ Bar 39 %} c'8 c, c e' c e= \endline
		%{ Bar 40 %} f8 f, f f f f=, \endline
		\mBreak

		%{ Bar 41 %} f'8 f, f f' a f= \endline
		%{ Bar 42 %} bes8 bes, bes' a16 g a8 d,= \endline
		%{ Bar 43 %} g8 g,16 fis g8 a bes g=, \endline
		%{ Bar 44 %} c8 c, c c c c=, \endline
		\mBreak

		%{ Bar 45 %} c'8 d e c a f=, \endline
		%{ Bar 46 %} c'8 d e g c, e= \endline
		%{ Bar 47 %} f8 c a c f, a=, \endline
		%{ Bar 48 %} c,8 c' e g c, e= \endline
		\mBreak

		%{ Bar 49 %} f8 bes, a f c' c,=, \endline
		%{ Bar 50 %} f8 g a g a f=, \endline
		%{ Bar 51 %} bes8 bes' g e fis d= \endline
		%{ Bar 52 %} g 8d g,=, r8 r4 \endline
		\mBreak

		%{ Bar 53 %} r8 g'8 f e d c= \endline
		%{ Bar 54 %} bes g a f c' c,=, \endline
		%{ Bar 55 %} f8 f' e c f g= \endline
		%{ Bar 56 %} a8 g a bes c bes= \endline
		\mBreak

		%{ Bar 57 %} a8 c a f e a= \endline
		%{ Bar 58 %} b8 c d, c b c= \endline
		%{ Bar 59 %} a8 g g' a b c=' \endline
		%{ Bar 60 %} f,8 d g a f g= \endline
		\mBreak

		%{ Bar 61 %} c,8 d c bes a g=, \endline
		%{ Bar 62 %} fis8 fis' g a d, fis= \endline
		%{ Bar 63 %} g,8 d' g a bes g= \endline
		%{ Bar 64 %} c8 c, c c c c= \endline
		\mBreak

		%{ Bar 65 %}c8 d e c a f=, \endline
		%{ Bar 66 %}c'8 d e g c, e= \endline
		%{ Bar 67 %}f8 c f a f e= \endline
		%{ Bar 68 %}d8 c16 d e8 c f f,=, \endline
		\mBreak

		%{ Bar 69 %}bes8 g a d bes c= \endline
		%{ Bar 70 %} d8 g e f a, c= \endline
		%{ Bar 71 %} f,8 \fermata f'16 \p e f8 g a g= \endline
		%{ Bar 72 %} f8 a, a f' e d= \endline
		\mBreak

		%{ Bar 73 %} cis8 a a g' f e= \endline
		%{ Bar 74 %} d8 a a f' bes g= \endline
		%{ Bar 75 %} a8 a, a cis \f d g= \endline
		%{ Bar 76 %} f8 e f g cis, d= \endline
		\mBreak

		%{ Bar 77 %} a8 b cis a \p b cis= \endline
		%{ Bar 78 %} d8 c bes g a bes=, \endline
		%{ Bar 79 %} c8 bes a f g a=, \endline
		%{ Bar 80 %} bes8 a g e f g=, \endline
		\mBreak

		%{ Bar 81 %} a8 b cis a d f= \endline
		%{ Bar 82 %} cis8 d e d cis d= \endline
		%{ Bar 83 %} a'8 a,16 b cis8 d bes g=, \endline
		%{ Bar 84 %} cis8 a f' d a' a,=, \endline
		\mBreak

		%{ Bar 85 %} d8 e f cis \f d g= \endline
		%{ Bar 86 %} f8 e d e f g= \endline
		%{ Bar 87 %} a8 b cis d g, e= \endline
		%{ Bar 88 %} a8 cis, d bes g a=, \endline
		\mBreak

		%{ Bar 89 %} d8 \p a d, d' e f= \endline
		%{ Bar 90 %} g8 d b g a b=, \endline
		%{ Bar 91 %} gis8 b e d c e= \endline
		%{ Bar 92 %} a8 a, d e f d= \endline
		\mBreak

		%{ Bar 93 %} e8 e, a b c e= \endline
		%{ Bar 94 %} a8 a, b c d f= \endline
		%{ Bar 95 %} e8 c f a g f= \endline
		%{ Bar 96 %} c'8 c, d e f f,=, \endline
				\once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible  
				 \mark "Dal Segno."  
				 \bar "||"  

	}} 



music =  { 
	<< 
		\tag #'OboeDaCacciaTPart \new Staff { <<  
			\set Staff.midiInstrument = "bassoon"   
			\global \set Staff.instrumentName = \markup {  
				\center-align { 
					 \hcenter-in # centerIndent  "English Horn."  
				} 
		 	 } \clef treble \OboeDaCacciaTNotes >>  
		} 

		 
		\tag #'score \tag #'OboeDaCacciaPart \new Staff { <<  
			\set Staff.midiInstrument = "bassoon"   
			\global \set Staff.instrumentName = \markup {  \column {
				\center-align { 
					 \hcenter-in # centerIndent  "Oboe da Caccia"
					 \hcenter-in # centerIndent "o Violetta."  
				} 
				}
		 	 } \clef alto \OboeDaCacciaNotes >>  
		}  
		 
		\tag #'TenoreGermanPart \new Staff { <<  
			\set Staff.midiInstrument = "synth voice"   
			\global \set Staff.instrumentName = \markup { 
				\center-align { 
					\hcenter-in # centerIndent  "Tenore."  
				} 
		  	} \clef tenor \TenoreNotes \TenoreLyricsGerman >>  
		}  

		\tag #'score \tag #'TenoreGermanTPart \new Staff { <<  
			\set Staff.midiInstrument = "synth voice"   
			\global \set Staff.instrumentName = \markup { 
				\center-align { 
					\hcenter-in # centerIndent  "Tenore."  
				} 
		  	} \clef "G_8" \TenoreNotes \TenoreLyricsGerman >>  
		}  

		\tag #'TenoreEnglishPart \new Staff { <<  
			\set Staff.midiInstrument = "synth voice"   
			\global \set Staff.instrumentName = \markup { 
				\center-align { 
					\hcenter-in # centerIndent  "Tenore."  
				} 
		  	} \clef tenor \TenoreNotes \TenoreLyricsEnglish >>  
		}  

		\tag #'TenoreEnglishTPart \new Staff { <<  
			\set Staff.midiInstrument = "synth voice"   
			\global \set Staff.instrumentName = \markup { 
				\center-align { 
					\hcenter-in # centerIndent  "Tenore."  
				} 
		  	} \clef "G_8" \TenoreNotes \TenoreLyricsEnglish >>  
		}  
		 
		\tag #'score \tag #'ContinuoPart \new Staff { <<  
			\set Staff.midiInstrument = "church organ"   
			\global \set Staff.instrumentName = \markup { 
				\center-align { 
					\hcenter-in # centerIndent  "Continuo."  
				} 
			}\ContinuoNotes >>  
		}  

	 
	>> 
	}
