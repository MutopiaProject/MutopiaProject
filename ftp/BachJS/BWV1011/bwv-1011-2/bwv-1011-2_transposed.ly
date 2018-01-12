\version "2.18.2"

allemande =  \relative d' {
    \key c \minor 
    \time 4/4
    \set Staff.midiInstrument = "Cello"
    
    \repeat volta 2 {
		\partial 16 c16 | % 0
		<<{c4~ c16 [ bes16 aes g ]} \\ {c,,4 s} \\ {ees' s} \\ {g, s}>>  aes'8. [ f16 ] <<{g8. [ d16 ]} \\ {b4}>> | % 1
		<<{es4 s} \\ {c4~ c16 [ bes! as g ]}>> as8. [ f16 ] g8. [ d'16 ] | % 2
		<<{d8. c32 b} \\ {ees,8 s} \\ {g s}>> c8. [ g'16 ] as,8. [ g'16 ] f [ (es d c) ] | % 3
		b8. [ as16 ] g [ b d f ] aes8. [ g16 ] f [ (es f d) ] | % 4
		<<{ees8. d16} \\ {c,8 s} \\ {g' s}>> c16 [ b c d ] es [ d es f ] g [ f g aes ] | % 5
		<<{bes4~ bes16 aes g f} \\ {g,4 s} \\ {ees' s}>> g8. [ f32 es32 ] des'8. [ bes16 ] | % 6
		<<{c4~ c16 bes aes g} \\ {aes,4 s} \\ {ees' s}>> aes8. [ c16 ] e,8. \trill [ f16 ] | % 7
		<<{g4~ g16( f e f32 g)} \\ {e,4 s} \\ {c' s}>> c8. [ bes'16 ] aes8. [ bes32 g ] | % 8
		<<{aes4~ aes8 c16( bes aes [ g f es ] d [ es f d) ] } \\ {f,4 s s s} \\ {f' s s s} \\ {c s s s}>> | % 9
		as4 ~ as16 [f' (es d] c [bes as g] f [g as f)] | % 10
		<<{aes'4~ aes16[ g aes f]} \\ {d,4 s} \\ {f' s} \\ {bes, s}>> \appoggiatura ees'16 d4 ~ d16 [c d bes] | % 11
		<<{f'4~ f16 ees d c} \\ {aes4 s}>> bes8. [ g16 ] aes8. [ f'16] | % 12
		<<{g,8 ~ [ g32 ( as g f)]} \\ {ees4}>> g8. [as16] <<{g4} \\ {b,}>> f'8. \trill [ (es32 d)] | % 13
		<<{ees4} \\ {c}>> c,8. [bes''16] a4 g16 [ (fis g8) ] | % 14
		<<{d'4~ d16 ees, d c} \\ {d,4 s} \\ {fis' s} \\ {a, s}>> bes8. \trill [ c16 ] d [ (e fis) g ] | % 15
		a16 [ g  fis g ] a [ bes c d ] ees8. [ d32 c32 ] d8. [ fis,16 ] | % 16
		<<{g4} \\ {bes,} \\ {d}>> c16 [  a' ( g a)] <<{a4. \trill g8} \\ {d2}>>  | % 17
		g8. [ d16 b8. d16] g,4. r16  % 18
	}
	\repeat volta 2 {
		d''16 | % 0
		<<{d4~ d16 c d ees} \\ {g,,4 s} \\ {b' s}>> b8. [ aes16 ] g8. [ f16 ] | % 19
		es8. [ g16 ] c [ d, ees f ] b,8. \trill [ g'16 ] d'8. [ ees32 f ] | % 20
		ees4 c,,8. [ d''16 ] c8. [ bes32 a ] bes8. [ c16 ] | % 21
		<<{a4~ a16 a bes c} \\ {ees,4 s}>> f8. [ g32 a ] bes8. \trill [ g32 a] | % 22
		<<{bes4} \\ {d,}>> d,16 [ bes'' aes g ] f8. [ es16 ] f8. [ g16 ] | % 23
		<<{aes4 s} \\ {c,~ c16 [c d es ]} \\ {ees4 s}>> <<{aes4} \\ {d,8. d16}>> es8. [ f16 ] | % 24
		<<{aes4} \\ {g,} \\ {d'8. ees32 d}>> c8 [ d16 bes ] <<{g'8~ [g32 (f es d)]} \\ {ees8 s}>> es8. [ g16 ] | % 25
		des,8 ~ [ des32 g (as bes ] c16 [ bes) as'8 ] g4 f16 \trill [ (e f8) ] | % 26
		<<{e4 s} \\ {c, s} \\ {bes'4~ bes16 bes aes g}>> as8. [ f'16 ] g8. [ as16 ] | % 27
		e8. [ bes'16 ] aes8 [ bes16 g ] <<{g4. \trill } \\ {c,}>> f8 | % 28
		<<{f4~ f16[ f ees d]} \\ {a4 s}>> es'8. [ c'16 ] (bes [ a g f) ] | % 29
		<<{bes8. aes32 g} \\ {d4}>> f8. [ g16 ] aes8. [ g16 ] f [ (es d es32 f) ] | % 30
		b,8. \trill [ g'16 ] d'8 [ (ees32 d c d) ] ees8. [ c,16 ] g8. [ (as32 bes) ] | % 31
		as8. [ g'16 ] f8. [ ees'16 ] d8. [ c16 ] d [ (b) c8 ] | % 32
		<<{b8. s16} \\ {g,8. s16} \\ {f'8. g16}>> as16( [ g f es ] d [ c  b c)] d [ es f d ] | % 33
		as8. [ b'16 ] c [ (b a g)] c4. <<{fis,8} \\ {a,}>> | % 34
		<<{g'8. ees'16} \\ {g,,8. s16}>>  d''16 [ ees f d ] <<{b4. c8} \\ {d,2}>> | % 35
		c'8. [ g16 ] es8. [ c16 ] <<{c'4.} \\ {c,,} \\ {ees'} \\ {g,}>> r16  % 36

	}
}


%melodyTwo =  \relative c {
%    \clef bass 
%    \key c \minor 
%    \time 4/4
%    \set Staff.midiInstrument = "Cello"
%    
%    \repeat volta 2 {
%		\partial 16 s16 | % 0
%		c,4 s2 b'4 | % 1
%		c4 s2. | % 2
%		es,8 s4. s2 | % 3
%		s1 | % 4
%		c8. s16 s2. | % 5
%		g'4 s2. | % 6
%		as4 s2. | % 7
%		e4 s2. | % 8
%    	f4 s2. | % 9
%		s1 | % 10
%    	d4 s2. | % 11
%		as''4 s2. | % 12
%    	es4 s4 b4 s4 | % 13
%		c4 s2. | % 14
%		c,4 s2. | % 15
%    	s1 | % 16
%    	bes'4 s4 d2 | % 17
%		s2 s4. s16  % 18
%	}
%	
%	\repeat volta 2 {
%		s16
%		g,4 s2. | % 19
%		s1*2| % 21
%		es'4 s2. | % 22
%		d4 s2. | % 23
%		c4 s2. | % 24
%		<bes bes'>4 s4 es8 s4. | % 25
%		s1 | % 26
%		c,4 s2. | % 27
%		s2 c'4. s8 | % 28
%		a4 s2. | % 29
%		d4 s2. | % 30
%		s1 | % 31
%		s1 | % 32
%		g,8. s16 s2. | % 33
%		s2. s8 a8 | % 34
%		g8. s16 s4 d'2 | % 35
%		s2 c,4. s16  % 36
% 	}    
%}


%% The score definition

%allemande = << \melodyOne \\ \melodyTwo >>
