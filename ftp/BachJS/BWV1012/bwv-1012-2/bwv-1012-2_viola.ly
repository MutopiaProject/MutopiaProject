\version "2.18.2"


allemande =  \relative f' {
    \key d \major 
    \time 4/4
    \clef treble
    \set Staff.midiInstrument = "viola"
    \set Staff.subdivideBeams = ##t
    \set Staff.baseMoment = #(ly:make-moment 1/8)
    \set Staff.beatStructure = #'(2 2 2 2)
    
	\repeat volta 2 {
		\partial 16 fis16 | %0
		<<{fis4( s)} \\ {d, fis'32 [e ^(g fis e d e64 cis d32)]} \\ {a4 s}>> 
		    <<{d8 [( cis16. \trill d64 e) ]} \\ {e,4}>> d'32 [(cis b a b64 cis b cis cis32 b64 cis) ] | % 1
		<<{d8. [a'16] ~ a32 [ (g fis e d64 cis d e fis e g fis )]} \\ {fis,8. s16 b16 s s8}>> 
		    <<{g'16 ~ [(g64 fis64 e fis g32 fis g b) ] g8. \trill [ (fis32 g )]} \\ {e,8 s a4} \\ {b8 s s4}>>  | % 2
		<<{fis'8 \trill [( e16 fis32 d) ] d'8. [ d16 ]} \\ {d,,8 s fis'8. fis16} \\ {a,8 s s4}>> 
		    gis32 [ (e' b' d cis b ais64 b d cis)] cis8 [ais,16. e'32] | % 3
		b16 [e32 (g fis e d e64 cis)] d16. [b64 ( cis d32 e fis a64 gis)] 
		    <<{a16 s s8} \\ {fis,16. [gis32 ^( a b cis a)]} \\ {cis16 s s8}>> dis,16. \trill [ a''32 (b a gis a)] | % 4
		<<{a16 [ gis fis e ] e8. [ e16]} \\ {e,8 s cis'8. cis16} \\ {b8 s s4}>> 
		    <<{e16 [ ( fis32 gis a gis  a fis)]} \\ {fis,16 s s8} \\ {cis'16 s s8}>> d16. \trill [ cis 32 ( b d fis a)] | % 5
		<<{gis 32 [( a b a gis fis e fis 64 d )]} \\ {e,16 s s8} \\ {d'16 s s8}>> cis16. \trill [( b32 a gis a cis)] 
		    <<{fis16. [( e32 d cis d fis)]} \\ {d,16 s s8} \\ {cis'16 s s8}>> b'32 [(gis a fis e cis d b)] \clef alto | % 6
		a32 [( fis gis b e16.) d,32] cis16. [ e'32 ( d cis b a)] d,32 [ fis' ( e d cis gis a d)] <<{b8. [a16]} \\ {e4}>> | % 7
		<<{a16 s s8} \\ {a16. [( b32 cis d e g)]}>> fis32 [( e d cis d b a' gis)] a16. [( e32 cis16 b32 a)] a,8.   % 8 	
	}
	\repeat volta 2 {
		e''16 | %0
		<<{e8 ~ [ e32 g (fis e] d [ cis b cis d cis b cis64 a)]} \\ {a,8 s s4} \\ {cis'8 s s4} \\ {e,8 s s4}>> 
		    <<{a'8. [ g32 ( fis] e32 [ d cis b a g fis g)]} \\ {g,8. s16 s4} \\ {cis'8. s16 s4} \\ {e,8. s16 s4}>>  | % 9
		fis16. \trill [ b64 (cis d32 b g fis)] e16 [ g'32 (fis g e cis a)] d,16 [ a'32 (b cis d e fis64 g)] fis16. [ d,64 ( e fis32 d e fis)] | % 10
		c,8. [ a''16] b32 [( a b c b c c b64 c)] <<{d8. s16} \\ {b,8. [b16]} \\ {g'8. s16}>> c,32 [( b c d c64 d d32. c64 d e)] | % 11
		a,8 [ gis16. \clef treble fis''32] ( fis32 [ eis gis fis a gis b d,)] 
		    eis,16. [ cis'32 ( b' a b gis)] <<{a16. [ gis32 ( fis e d e64 cis)]} \\ {fis,16. s32 s8} \\ {cis'16. s32 s8}>> \clef alto | % 12
		<<{d16. [ cis32 ( b a g a64 fis)]} \\ {b,16. s32 s8} \\ {fis'16. s32 s8}>> 
		    g16 [g64 d64 ( e fis g32 a b cis64 d )] d16 [ eis,8 \trill fis32 (gis)] cis,32 [( b16 d32 cis16 d32 b)] | % 13
		a32[ \clef treble  fis'' (gis a) b, (a' gis b)] <<{fis8 [ eis16. fis32]} \\ {cis8 s}>> fis16. [(cis32 fis gis a gis)] a32 [( b c a dis, e dis e)] | % 14
		<<{dis16 ~ \trill [dis64 a64_(b c) c16 ~ c64 a64_( b c)]} \\ {b,16. s32 s8} \\ {fis'16. s32 s8}>> c'16 [ b32 a' g32. fis128 g a32 fis] 
		    <<{g8. [ a32 ( b)]} \\ {e,,8. s16} \\ {b'8. s16}>> a'32 [( g fis e d cis e d)] | % 15
		\clef alto d16 [b,32 (cis d e fis d)] gis32 [( b e, fis gis a b cis)] d32 [( cis b cis d b cis a)] \clef treble a'16. [g,32 ( a g fis g)] | % 16
		fis16. [ a'32 ( g fis e d)] c32 [ ( b c a') c, (b c a)] dis,32 [(fis b dis fis a g fis)] g16 [ e,32 (fis g a b d)] | % 17
		cis32 [( e a, cis e g fis e )] fis16 [ d,32 ( e fis g a c,)] g16. [ fis''32 (b a g fis)] e32 [(cis d b a fis g e)] \clef alto  | % 18
		d32 [( b cis e a cis e gis)] a16 [ fis,,32 (a' g fis e d)] g,32 [(b' a g fis cis d g)] <<{e8. [d16]} \\ {a4}>> | % 19
		d16. [ e32 (fis g a c )] b32 [( a g fis g e d' cis)] d16. [ a32 fis16 \trill e32 d ] d,8. s16 | % 20

		}

}
