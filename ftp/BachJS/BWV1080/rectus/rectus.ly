\version "2.10.5"

#(set-global-staff-size 14)
%# (set-default-paper-size "a4")
\paper{bottom-margin=2\cm}

\header {
	title="Contrapunctus XVI"
	composer="J.S. Bach"
 mutopiatitle = "Contrapunctus XVI"
 mutopiacomposer = "BachJS"
 mutopiainstrument = "Recorder trio"
 date = ""
 source = "Mutopia"
 mutopiaopus = "BWV 1080"
 style = "Baroque"
 copyright = "Public Domain"
 maintainer = "Laurent Claessens"
 maintainerEmail = "moky.math@gmail.com"
 maintainerWeb = "student.ulb.ac.be/~lclaesse/"
 lastupdated = "26/Apr/2007"
 footer = "Mutopia-2007/04/29-966"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}



global = {
	\time 2/2 \key d \minor
%	\set tupletSpannerDuration = #(ly:make-moment 1 4)
	\override TupletBracket #'transparent = ##t
	#(override-auto-beam-setting '(end * * * *) 1 4)
	#(override-auto-beam-setting '(end * * * *) 2 4)
	#(override-auto-beam-setting '(end * * * *) 3 4)
	#(override-auto-beam-setting '(end * * * *) 4 4)
%	\set Staff.midiInstrument = "harpsichord"
	}

rectusFluteUn={
\global
\relative c''{

	\partial 4 r
	R1*7					
%8
	r2 r4 d
	a' a,~ \times 2/3{a8 b c} \times 2/3{b8 c d}
%10
	\times 2/3{c8 d e} d4~ \times 2/3{d8 e f} \times 2/3{e f g}		
	\times 2/3{f e d} e4~ \times 2/3{e8 d c} \times 2/3{d c b}
	c8.*8/9[ e16*4/3 a8.*8/9 e16*4/3] c8.*8/9[ b16*4/3 c8.*8/9 d16*4/3]
	e2 r4 cis
	d f8.*8/9 e16*4/3 d4 c'
	bes d, r b																	%15
	c e8.*8/9 d16*4/3 c4 bes'!
	a4.*10/9 g8*2/3 f8.*8/9[ e16*4/3 d8.*8/9 f16*4/3]
	bes,4 bes' g e
	cis4.*10/9 d16*2/3 e a,8.*8/9[ e'16*4/3 f8.*8/9 g16*4/3]
	a4.*10/9 g8*2/3 \times 2/3{f8 e d} e8.*8/9 bes'16*4/3						%20
	\times 2/3{a8 g f} \times 2/3{g cis, e} \times 2/3{g f e~} e8.*8/9 f16*4/3
	\times 2/3{e8 f g} \times 2/3{f d a} \times 2/3{b cis d} \times 2/3{cis d e}
	d4 f d a
	bes8.*8/9[ d16*4/3 g8.*8/9 d16*4/3] bes8.*8/9[ g16*4/3 a8.*8/9 b16*4/3]
	c4 ees c g																	%26
	a8.*8/9[ c16*4/3 f8.*8/9 c16*4/3] a8.*8/9[ f16*4/3 g8.*8/9 a16*4/3]
	bes4 bes'~ \times 2/3{bes8 aes g} \times 2/3{aes g f}
	 \times 2/3{g f ees} f4~ \times 2/3{f8 ees d} \times 2/3{ees d c}
	d4 f d a
%30
	bes1~												
	bes~
	bes2 r4 bes
	f f'~ \times 2/3{f8 ees d }\times 2/3{ees d c}
	\times 2/3{d c bes} c4~ \times 2/3{c8 bes a }\times 2/3{bes a g}
%35
	\times 2/3{a bes c} bes4~ \times 2/3{bes8 c d }\times 2/3{c d ees}
	d8.*8/9[ bes16*4/3 f8.*8/9 bes16*4/3] d8.*8/9[ ees16*4/3 d8.*8/9 c16*4/3]
	\times 2/3{bes8 g a} \times 2/3{bes c d} ees8.*8/9[ d16*4/3 c8.*8/9 ees16*4/3]
	\times 2/3{d8 ees f} \times 2/3{ees g ees} \times 2/3{c b a} \times 2/3{b c d}
	\times 2/3{c bes! a} \times 2/3{bes g a} \times 2/3{bes c d} \times 2/3{ees d c}
%40
	\times 2/3{d g, bes} \times 2/3{d bes d} g8.*8/9[ fis16*4/3 g8.*8/9 a16*4/3]				
	bes8.*8/9[ g16*4/3 d8.*8/9 g16*4/3] bes8.*8/9[ c16*4/3 bes8.*8/9 a16*4/3]
	g4 e g bes
	a8.*8/9[ f16*4/3 c8.*8/9 f16*4/3] a8.*8/9[ bes16*4/3 a8.*8/9 g16*4/3]
	f4 d f a
%45
	g4 d cis r4
	r8 cis16 d e f g a bes4 r
	\times 2/3{r8 e, a} \times 2/3{g f e} \times 2/3{f e d} \times 2/3{cis d e}
%  Adaptation to recorder : octavia while a little more that one bar.
	f4 r r } \relative c''{  bes'
	\times 2/3{a8 g f} \times 2/3{g a f} g16*2/3 f e4*4/3 f8*2/3
%50
	e4 r r } \relative c''{ e						
	a,   
	r r a		
	bes8.*8/9[ d16*4/3 g8.*8/9 d16*4/3] bes8.*8/9[ g16*4/3 a8.*8/9 bes16*4/3]
% Adaptation to recorder : ocavia for e
	e4 r r b
	c8.*8/9[ e16*4/3 a8.*8/9 e16*4/3] c8.*8/9[ a16*4/3 bes!8.*8/9 c16*4/3]
% Adaptation to recorder : ocavia for f
	f4 r r c											%55
	d8.*8/9[ f16*4/3 bes8.*8/9 f16*4/3] d8.*8/9[ bes16*4/3 c8.*8/9 d16*4/3]
% Adaptation to recorder : ocavia for g
	g4 r r d
	cis r r8*4/3 r16*2/3 g' f8.*8/9 e16*4/3
	bes'2\fermata r4 \times 2/3{r8 bes cis,}
%60
	d4~ \times 2/3{d8 e f} e4\trill~ \times 2/3{e8 d e}							
	f4~ \times 2/3{f8 g a} g4~ \times 2/3{g8 f g}
	a1~
	\times 2/3{a8 bes c} \times 2/3{bes g d} \times 2/3{e fis g} \times 2/3{fis g a}
	\times 2/3{g f! e} \times 2/3{f e d} e4 r
	r2 r4 d												%65
	a a'~ \times 2/3{a8 g f} \times 2/3{g f e}
	\times 2/3{f e d} e4~ \times 2/3{e8 d cis} \times 2/3{d cis b}
	\times 2/3{cis d e} d4~ \times 2/3{d8 e f} \times 2/3{e f g}
	f8.*8/9[ d16*4/3 a8.*8/9 d16*4/3] f8.*8/9[ g16*4/3 f8.*8/9 e16*4/3]
	\times 2/3{d8 c bes} c4~ \times 2/3{c8 bes a} \times 2/3{bes c d}						%70
	a2.\fermata
	
	\bar "|."
}
 }

rectusFluteDeux={

	\global
\relative c'''{
	\partial 4 a4
%1
	d d,~ \times 2/3{d8 e f} \times 2/3{e f g}			
	\times 2/3{f g a} g4~ \times 2/3{g8 a bes} \times 2/3{a bes c}
	\times 2/3{bes a g} a4~ \times 2/3{a8 g f} \times 2/3{g f e}
	f8.*8/9[ a16*4/3 d8.*8/9 a16*4/3] f8.*8/9[( e16*4/3) f8.*8/9( g16*4/3])
%5
	\times 2/3{a8 e g } \times 2/3{f e d} cis4 bes'	
	a~ \times 2/3{a8 g f} g2~
	g4~ \times 2/3{g8 f e} f8.*8/9[ d'16*4/3 c8.*8/9 bes16*4/3]
	a2~ a8.*8/9[ bes16*4/3 a8.*8/9 g16*4/3]
	f4 r r f
%10
	\times 2/3{e8 f g } \times 2/3{ f e g} \times 2/3{f e d } \times 2/3{cis d e}										
	d4 r r f
	e c e a8.*8/9 b16*4/3
	c4 a c e
	d d, r2
	r4 g bes d											%15
	c c, r2
	R1*2
	r2 r4 d
%20
	a a'~ \times 2/3{a8 g f} \times 2/3{g f e}
	\times 2/3{f8 e d} e4~ \times 2/3{e8 d cis} \times 2/3{d cis b}
	\times 2/3{cis d e} d4~ \times 2/3{d8 e f} \times 2/3{e f g}
	f8.*8/9[ d16*4/3 a8.*8/9 d16*4/3] f8.*8/9[ g16*4/3 f8.*8/9 e16*4/3]
	d4 e!8.*8/9 fis16*4/3 g4 f
%25
	ees8.*8/9[ c16*4/3 g8.*8/9 c16*4/3] ees8.*8/9[ f16*4/3 ees8.*8/9 d16*4/3]	
	c4 d8.*8/9 e!16*4/3 f4 ees
	d8.*8/9[ c16*4/3 bes8.*8/9 c16*4/3] d8.*8/9[ ees16*4/3 f8.*8/9 d16*4/3]
	ees4~ \times 2/3{ees8 d c} \times 2/3{d c bes} \times 2/3{c bes a}
	\times 2/3{bes bes' c} \times 2/3{d c bes} f2~
	\times 2/3{f8 g aes} \times 2/3{g f aes} g4 d											%30
	\times 2/3{ees8 d c} \times 2/3{d ees c} d4 g
	\times 2/3{f8 bes, d} \times 2/3{f d f} bes8.*8/9[ e,!16*4/3 f8.*8/9 g16*4/3]
	\times 2/3{a8 bes c }\times 2/3{bes c d} f,2~
	f1~
%35
	f~											
	f2 r4 d
	g g,~ \times 2/3{g8 a bes} \times 2/3{a bes c}
	\times 2/3{bes c d} c4~ \times 2/3{c8 d ees} \times 2/3{d ees f}
	\times 2/3{ees d c} d4~ \times 2/3{d8 c bes} \times 2/3{c bes a}
	bes8.*8/9[ d16*4/3 g8.*8/9 d16*4/3] bes8.*8/9[ a16*4/3 bes8.*8/9 c16*4/3]	%40
	d4 bes d g8.*8/9 f16*4/3
	e!8.*8/9[ g16*4/3 c8.*8/9 g16*4/3] e8.*8/9[ c16*4/3 d8.*8/9 e16*4/3]
	f4 a, c f8.*8/9 e16*4/3
	d8.*8/9[ f16*4/3 bes8.*8/9 f16*4/3] d8.*8/9[ e16*4/3 cis8.*8/9 d16*4/3]
	e2 r4 bes'											%45
	a r r8*4/3 r16*2/3 f' \times 2/3{e8 f g}
	cis,4 r r e,
	a, a'~ \times 2/3{a8 g f} \times 2/3{g f e}
	\times 2/3{f e d} e4~ \times 2/3{e8 d cis} \times 2/3{d cis b}
	\times 2/3{cis d e} d4~ \times 2/3{d8 e f} \times 2/3{e f g}										%50
	f8.*8/9[ d16*4/3 a8.*8/9 d16*4/3] f8.*8/9[ g16*4/3 f8.*8/9 e16*4/3]
	d4 bes' g d
	g8.*8/9[ e16*4/3 b8.*8/9 e16*4/3] g8.*8/9[ a16*4/3 g8.*8/9 f16*4/3]
	e4 c' a e
	a8.*8/9[ f16*4/3 c8.*8/9 f16*4/3] a8.*8/9[ bes16*4/3 a8.*8/9 g16*4/3]		%55
	f2 r4 a
	bes8.*8/9[ g16*4/3 d8.*8/9 g16*4/3] bes8.*8/9[ c16*4/3 bes8.*8/9 a16*4/3]
	g4 r r8*4/3 r16*2/3 e f8.*8/9 g16*4/3
	cis,2\fermata r4 e
%60
	\times 2/3{f8 g a} \times 2/3{bes g a} \times 2/3{b a b} \times 2/3{cis b cis}									
	\times 2/3{d f, g} \times 2/3{a g f} \times 2/3{e g a} \times 2/3{bes a g}
	\times 2/3{f d f} \times 2/3{a f a} \times 2/3{d cis b} \times 2/3{cis d e}
	d1~
	d4~ \times 2/3{d8 cis b} cis4 r
%65
	\times 2/3{r8 d a} \times 2/3{f a f} \times 2/3{d f a} \times 2/3{d cis b}
	\times 2/3{cis a e} \times 2/3{cis d e} \times 2/3{f e d} e8.*8/9 cis'!16*4/3
	d4~ \times 2/3{d8 cis b} \times 2/3{cis d e} \times 2/3{f e d}
	e8.*8/9 g,16*4/3 \times 2/3{f8 e d} bes'2\trill
	a4 r r8*4/3 r16*2/3 bes a8.*8/9 g16*4/3
	\times 2/3{f8 e d} a'2 \times 2/3{g8 a bes}									%70
	fis2.\fermata

	\bar "|."
  } % fin du relative
} % fin du rectusFluteDeux


rectusFluteTrois={
\relative c{

	\global

	\partial 4 r4
	
	R1*3				
	r2 r4 d
%5
	a a'~ \times 2/3{a8 g f}\times 2/3{ g f e}
	\times 2/3{f e d} e4~ \times 2/3{e8 d cis}\times 2/3{ d cis b}
	\times 2/3{cis d e} d4~ \times 2/3{d8 e f}\times 2/3{ e f g}
	f8.*8/9[ d16*4/3 a8.*8/9 d16*4/3] f8.*8/9[ g16*4/3 f8.*8/9 e16*4/3]
	\times 2/3{d8 cis b cis d e} f4 gis,
%10
	a r r a'~	
	a \times 2/3{gis8 a fis} gis2\trill
	a1~
	a8.*8/9[ e16*4/3 c8.*8/9 e16*4/3] a8.*8/9[ bes16*4/3 a8.*8/9 g16*4/3]
	f8.*8/9[ a16*4/3 d8.*8/9 a16*4/3] f8.*8/9[ d16*4/3 e8.*8/9 fis16*4/3]
	g8.*8/9[ d16*4/3 bes8.*8/9 d16*4/3] g8.*8/9[ a16*4/3 g8.*8/9 f16*4/3]		%15
	e8.*8/9[ g16*4/3 c8.*8/9 g16*4/3] e8.*8/9[ c16*4/3 d8.*8/9 e16*4/3]
	f8.*8/9[ g16*4/3 f8.*8/9 e16*4/3] d8.*8/9[ e16*4/3 f8.*8/9 d16*4/3]
	g8.*8/9[ a16*4/3 g8.*8/9 f16*4/3] e8.*8/9[ f16*4/3 g8.*8/9 e16*4/3]
	a8.*8/9[ bes16*4/3 a8.*8/9 g16*4/3] f8.*8/9[ e16*4/3 d8.*8/9 e16*4/3]
	f8.*8/9[ e16*4/3 f8.*8/9 g16*4/3] a4 cis,									%20
	d bes' r gis
	a r r a
	d, r r d
	g r r d
	c r r c																		%25
	f r r c
	g' r r2
	r r4 f
	bes bes,~ \times 2/3{bes8 c d}\times 2/3{ c d ees}
%30
	\times 2/3{d ees f} ees4~ \times 2/3{ees8 f g}\times 2/3{ f g aes}
	\times 2/3{g f ees} f4~ \times 2/3{f8 ees d}\times 2/3{ ees d c}
	d8.*8/9[ f16*4/3 bes8.*8/9 f16*4/3] d8.*8/9[ c16*4/3 d8.*8/9 e!16*4/3]
	f4 d a8.*8/9[ bes16*4/3 c8.*8/9 a16*4/3]
	bes4~ \times 2/3{bes8 a g}\times 2/3{ a bes c}\times 2/3{ d c bes}
%35
	\times 2/3{c d ees} \times 2/3{d ees c}\times 2/3{ d c bes}\times 2/3{ a bes c}
	bes4 d f bes,
	ees r c r
	g'1~
	g~
	g~																			%40
	g2 r4 g
	c2 r4 g
	f2 r4 f
	bes2 r4 f
	e8.*8/9[ g16*4/3 bes8.*8/9 g16*4/3] e8.*8/9[ f16*4/3 e8.*8/9 d16*4/3]		%45
	cis8[ e g e] cis8.*8/9[ d16*4/3 cis8.*8/9 b16*4/3]
	a8.*8/9[ cis16*4/3 e8.*8/9 cis16*4/3] a8.*8/9[ bes16*4/3 a8.*8/9 g16*4/3]
	\times 2/3{f8 a d}\times 2/3{ f e d} cis4.*10/9\trill b16*2/3 cis
	d4 bes'! r gis
	a8.*8/9 g!16*4/3 \times 2/3{f8 g a} bes8.*8/9 d,16*4/3 \times 2/3{cis8 d e}	%50
	d4 f a d,
	g r r g
	g, g' b e,
	a r r a
	a, a' c f,																	%55
	bes d bes fis
	g bes g d
	e8.*8/9[ g16*4/3 bes8.*8/9 g16*4/3] e8.*8/9[ cis16*4/3 d8.*8/9 e16*4/3]
	g,2\fermata r4 g'
	\times 2/3{f8 e d} g4~ \times 2/3{g8 f e} a4								%60
	d, r r g
	d' d,~ \times 2/3{d8 e f}\times 2/3{ e f g}
	\times 2/3{f g a} g4~ \times 2/3{g8 a bes}\times 2/3{ a bes c}
	\times 2/3{bes a g} a4~ \times 2/3{a8 g f}\times 2/3{ g f e}
	f8.*8/9[ a16*4/3 d8.*8/9 a16*4/3] f8.*8/9[ e16*4/3 f8.*8/9 g16*4/3]			%65
	a1~
	a~
	a4 bes g cis,
	\times 2/3{d8 a d}\times 2/3{ f d f} a4 a,
	d~ \times 2/3{d8 fis g}\times 2/3{ a bes c} d8.*8/9 d,16*4/3							%70
	d2.\fermata
	
	\bar "|."

	
} % fin du relative

} %Fin de la flute3


globalUn={
 \set Staff.instrumentName = "Recorder 1"
	\set Staff.midiInstrument = "recorder"
}

globalDeux={
 \set Staff.instrumentName = "Recorder 2"
	\set Staff.midiInstrument = "harpsichord"
}

globalTrois={
 \set Staff.instrumentName = "Recorder 3"
	\set Staff.midiInstrument = "clav"
}


\score{
	\new StaffGroup	<<
			\new Staff <<  \globalUn \rectusFluteUn >>
			\new Staff << \globalDeux \rectusFluteDeux	>>
			\new Staff << \globalTrois \clef bass \rectusFluteTrois>>
	>>
	\layout{}
	\midi {  
	    \context {  
	      \Score  
      	tempoWholesPerMinute = #(ly:make-moment 110 4)  
	      }  
	    }  % Fin du midi
} % Fin de score
