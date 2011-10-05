\version "2.14.2"


 violinOne = {
 \set Staff.instrumentName = "Violin."
 \set Staff.midiInstrument = "violin"
 \clef treble
 \key b\minor
 \time 4/4
 \tempo "Allegro moderato"
 \compressFullBarRests

 R1*4 |% ^\markup { \huge "Allegro moderato." } | 
 fis''4(\mf b''4) fis''4( e''4-0) |			% 5
 d''4( cis''4) b'4( fis') |				% 6
 g'4( fis'8 g'8) b'4( a'8-0 g'8) |			% 7
 fis'4.(d'8-0) b2 |					% 8
 ais4.(b8) cis'8( ais8 b8 cis'8) |			% 9
 d'4-0(\< fis'4) b'4( d''4)  |				% 10
 cis''4.(\!\f b'8) a''4.( g''8)				% 11
 fis''4.(\> g''8) fis''2|				% 12
 fis''4(\mf b''4) fis''4( e''4-0) |			% 13
 d''4( cis''4) b'4( fis') |				% 14
 g'4( fis'8 g'8) b'4( a'8-0 g'8) |			% 15
 fis'4.(d'8-0) b2 |					% 16
 ais4.(b8) cis'8( ais8 b8 cis'8) |			% 17
 d'4(\< fis'4) g'4( b'4) |				% 18
 fis'8(\!\f g'8 fis'8 d''8)  d''4.\> cis''8 |		% 19
 b'2\! r2						% 20
 fis''4(\mf b''4) fis''4( gis''4) |			% 21
 a''4.( gis''8) fis''8( e''8 d''8 cis''8) |		% 22
 b'4(cis''8 d''8) cis''4( b'4) |			% 23
 b'8( a'8 d''8 cis''8) cis''2 |				% 24
 b'4(\< a''4 ) gis''4( fis''4) |			% 25
 b''8(\! a''8 e''8-0 fis''8) gis''8(a''8 e''8 cis''8) | % 26
 b'8(\> cis''8 d''8 b'8) gis'8( e'8 d'8 b8) |		% 27
 a2\!\p a4( b4) |					% 28
 d'4-4(^> cis'4) cis'4( d'4-0) |			% 29
 fis'4(^> e'4) e'4(\< fis'4) |				% 30
 a'4.-4(^> g'!8) b'8(\!\> a'8-0 g'8 fis'8) |		% 31
 e'8(\!\< fis'8 g'8 a'8-0) b'8( cis''8 d''8 e''8-0) |	% 32
 fis''2_\markup { \italic "risoluto" }->\!\f d''2-> |	% 33
 b'2-> g''2-> |						% 34
 a'4( a''4) g''4( e''4-0) |				% 35
 g''4.( fis''8) fis''2 |				% 36
 d''2->\f b'2^> |					% 37
 g'2 ^> e''2-4-> |					% 38
 e''4( cis''!4) d''4( d'4) |				% 39
 f'4.^>( e'8\>) e'2 |					% 40
 fis'!8\!\mf( g'8 a'8-4 g'8) fis'8( e'8 d'8 c'8) |	% 41
 b8( d'8 g'8 b'8) d''2 |				% 42
 cis''!8(d''8 e''8-4 d''8) cis''8( b'8 a'8 g'8) |	% 43
 fis'8\<( a'8 d''8 fis''8) a''4. fis''8( |		% 44
 ais''4.)\!\f fis''8( b''4)-> b'8(cis''8 |		% 45
 d''4^>) d'8( e'8 f'4^>) e'8( d'8 |			% 46
 fis'!4^>) a8 b8 cis'!8(d'8) e'8 fis'8 |			% 47
 g'8( fis'8) e'8 fis'8 g'8(\>  a'8-0 b'8 cis''8)\! |	% 48
 d''4.(\mf cis''8) e''8-4( d''8 a'8-0 b'8) |		% 49
 cis''4( a''4) g''4( e''4-0) |				% 50
 d''4.( cis''8) e''8( d''8 a'8-0 b'8) |			% 51
 cis''4( a''4) g''4( e''4-0)				% 52
 d''2 r2 |						% 53
 r1|							% 54
 d''4(\downbow \mf fis''4) d''4( cis''4) |		% 55
 b'4( fis'4) d'4-0( b4) |				% 56
 d'4-4( b4) g2 |					% 57
 g'4( b'4) d''2 |					% 58
 g''4( b''4) g''4( fis''4) |				% 59
 e''4-4( b'4) g'4( e'4) |				% 60
 d'4-0( fis'4) b'4( d''4) |				% 61
 cis''!2\> fis''2 \! |					% 62
 fis''4( \mf b''4) fis''4( e''4-0) |			% 63
 d''4( cis''4) b'4( fis'4) |				% 64
 g'4( fis'8 g'8) b'4( a'8-0 g'8) |			% 65
 fis'4.( d'8-0) b2 |					% 66
 ais4.( b8) cis'8( ais8 b8 cis'8) |			% 67
 d'4-0(\< fis'4) b'4( d''4) \! |			% 68
 c''8( \f b'8 c''8 d''8) e''8-4( d''8 e''8-0 fis''8) |	% 69
 g''8( fis''8 g''8 a''8) b''2 |				% 70
 g''4( b''4) a''4( fis''4) |				% 71
 g''4( fis''4) e''4-4( b'4) |				% 72
 cis''!8( d''8 e''8 d''8) cis''8( e'8) fis'8 g'8 |	% 73
 fis'4 d''8 cis''!8 b'8( a'8) g'8 fis'8 |		% 74
 e'4 cis''!8 b'8 a'8-4( g'8) fis'8 e'8 |		% 75
 d'4 b'8 a'8 g'8( fis'8 e'8 d'8) |			% 76
 fis'2 \f ais2 |					% 77
 b2 g'4^>( d'4-0) |					% 78
 fis'2 g'4^>( d'4-0) |					% 79
 fis'4( b'4) d''4( fis''4) |				% 80
 b''2 \f fis''4( d''4) |				% 81
 b'2 fis'4( d'4-0) |					% 82
 b2 b2 |						% 83
 b1 \bar"|."						% 84
}


violinTwo = {
 \set Staff.instrumentName = "Violin."
 \set Staff.midiInstrument = "violin"
 \clef treble
 \key g\major
 \time 6/8
 \tempo "Andante"
 \compressFullBarRests

 R2.*4  | 
 g''4. \p b''4(a''8) |		% 5
 g''4. fis''4. | 		% 6
 g''4( d''8) d''4( c''8) | 	% 7
 b'4.( b'8) r8 r8 |		% 8
 e''4.^4 \downbow \mf b'4. | 	% 9
 c''8( d''8 c''8) b'8( a'8^0 e'8) | % 10
 g'4( \> d'8^0) c'8( b8 a8) \!	  % 11
 g4.( \p g8) r8 r8 |		  % 12
 g'4. \downbow \mf fis'8( g'8 a'8^4) | % 13
 b'4. fis'4. |			      % 14
 b'4. cis''8( d''!8 e''8^4) | 	% 15
 fis''4. \< cis''4.\! |		% 16
 d''4. \f b''4. | 		% 17
 a''8( fis''8 d''8) a'8^0( fis'8 d'8) | % 18
 fis'4( e'8) g'8(^\markup{\italic "rit."} b8 cis'8) |	% 19
 d'4.^4(^\markup{\italic "a tempo"} d'8) r8 r8 |	% 20
 d'8(^0 \downbow \mf g'8 bes'8) d''8( c''!8 bes') |	% 21
 bes'4( a'8) c''4( a'8) |				% 22
 c''8( bes'8 a'8) bes'8( d''8 g''8) |			% 23
 f''4. \< f''8( g''8 a''8) \! |				% 24
 bes''4. \f fis''4. |					% 25
 g''4. b'!4. |						% 26
 c''8( a''8 g''8) f''8( c''8 es''8) |			% 27
 d''8( \> bes'8 f'8) d'4.^0 |				% 28
 d'8( \mf g'8 bes'8) d''8( c''8 bes'8) |		% 29
 bes'4( a'8) c''4( a'8) |				% 30
 c''8( bes'8 a'8) bes'8( d''8 g''8) |			% 31
 f''4. \< f''8( g''8 a''8) \! |				% 32
 bes''4. \f fis''4. |					% 33
 g''4. gis''4. |					% 34
 a''8( fis''8 d''8) a'8(^0 g'!8 e'8) |			% 35
 d'8( \> fis'8 a'8^0) 
 d''8(^\markup{\italic "rit."} e''8^4 fis''8) \! | % 36
 g''4.^\markup{\italic "a tempo"} \p b''!4( a''8) | % 37
 g''4. fis''4. |				   % 38
 g''4( d''8) d''4( c''8) |			   % 39
 b'4.( b'8) r8 r8 |				   % 40
 e''4.^4 \downbow b'4. |			   % 41 
 c''8( d''8 c''8) b'8( a'8-0 e'8) |		   % 42
 g'4( d'8^0) \> c'8( b8 a8) \! |		   % 43
 g4. \p g8( b8 d'8)^0 |				   % 44
 g'4. g'8(\< b'8 d''8) |			   % 45 
 g''4( \mf fis''8) g''4( fis''8)		   % 46
 a''8( g''8 fis''8) g''8( b''8 a''8) |		   % 47
 g''8( d''8 b'8) 
 c''8(^\markup{\italic "molto rit."} b'8 g'8) | % 48
 a'8(^4 g'8 d'8) \> e'8( d'8 b8)\! |	  % 49
 g2. \p \bar"|."				  % 50
}

violinThree = {
 \set Staff.instrumentName = "Violin."
 \set Staff.midiInstrument = "violin"
 \clef treble
 \key b\minor
 \time 4/4
 \tempo "Allegro moderato."
 \compressFullBarRests

 R1*4  | 
 fis''16( \mf g''16 fis''8) e''16(^0 fis''16 e''8)
 d''16( e''16 d''8) cis''16( d''16 cis''8) | % 5
 b'8 b'16(cis''16 d''8) b'8 cis''4( fis''8) r8 | % 6
 fis''16( g''16 fis''8) e''16(^0 fis''16 e''8)
 d''16( e''16 d''8) cis''16( d''16 cis''8) |   % 7
 b'8 b'16(cis''16 d''8) cis''8 b'4( b''8) r8 | % 8
 a''4-> \f e''8^0 g''8 fis''8 d''16( cis''16 d''8) d''8-- | % 9
 fis''4^> cis''8 e''8^4 d''8 d''16( cis''16 b'8) b''8-- |	  % 10
 a''4^>  e''8^0 g''8 fis''8 d''16( cis''16 d''8) d''8 |	  % 11
 d'8^> d'8( e'8^>) e'8( fis'8^>) fis'16( g'16 fis'8) r8 | % 12
 fis''16( \mf g''16 fis''8) e''16( fis''16 e''8)
 d''16( e''16 d''8) cis''16( d''16 cis''8) |	 % 13
 b'8 b'16(cis''16 d''8) b'8 cis''4( fis''8) r8 | % 14
 fis''16( g''16 fis''8) e''16(^0 fis''16 e''8)
 d''16( e''16 d''8) cis''16( d''16 cis''8) |		 % 15
 b'8 b'16(cis''16 d''8) cis''8 b'4( b''8) r8 |		 % 16
 b'8^> b'16( cis''16 d''8) b'8 cis''8 d''8 e''4^4 |	 % 17
 cis''8^> cis''16( d''16 e''8)^4 cis''8 d''8 e''8^0 fis''4 | % 18
 b''16(^> a''16) a''16( fis''16) a''8( g''8) 
 a''16(\upbow g''16) g''16( e''16)^0 g''8( fis''8)  |	% 19
 g''16^> fis''16 e''16 d''16 cis''16 b'16 a'16 g'16
 fis'8( d''8) d''8( cis''8) |				  % 20
 b'8^> b'16( cis''16 d''8) b'8 cis''8 d''8 e''4^4 |	  % 21
 cis''8^> cis''16(  d''16 e''8^4) cis''8 d''8 e''8^0 fis''4 | % 22
 b''16^>( a''16) a''16( gis''16) gis''8( fis''8) 
 a''16(\upbow gis''16) gis''16( fis''16) fis''8( e''8^0) |		 % 23
 gis''16^> fis''16 e''16 d''16 e''16^4 d''16 cis''16 b'16 a'4^0 r4 | % 24 
 a''4(_\markup{\line {\concat { \dynamic mf }
     \italic { espressivo }}} \downbow  
 gis''4) a''4( gis''4) |			   % 25
 b''4.( a''8) fis''8( cis''8 d''8 a'8^0) |	   % 26
 g'!4( fis'4) g'4( fis'4) |			   % 27
 a'4.(^4 g'8) fis'8( e'8 cis''8 b'8) |		   % 28
 b'4.( a'8 ) cis''4.( b'8) |			   % 29
 d''4.( \< cis''8) e''8(^4 d''8 cis''8 b'8) \! |   % 30
 a'8( \f a''8 b''8 a''8) fis''8( d''8 a'8^0 fis'8) | % 31
 e'8( fis'8 g'8 a'8^0) 
 cis''8(^\markup{\italic rit.}_\markup{\italic dim.} b'8 g'8 e'8) | % 32
 d'8(^\markup{\italic{a tempo}} \mf e'8 fis'8 g'8)
 a'8(^0 d''8) a'8 c''8 |			     % 33
 c''8(_> b'8) g'8 a'8^0 b'8( e''8^4) b'8 d''8 |		     % 34
 d''8(^> cis''!8)\< a'8^0 b'8 cis''8( fis''8) cis''8 e''8^4 \! | % 35
 e''8(^> \f d''8) cis''8\> b'8 a'8(^0 fis') g' e' \! |	     % 36
 d'16 \mf e'16 fis'16 g'16 a'16^0 b'16 cis''16 d''16
 e'16 fis'16\< g'16 a'16^0 b'16 cis''16 d''16 e''16^4 \! | % 37
 e''16( \f d''16) d''16( cis''16) cis''16( b'16) b'16( a'16) 
 cis''16( \> b'16) b'16( a'16) a'16(^0 g'16) g'16( e'16) \! | % 38
 d'16 \mf e'16 fis'16 g'16 a'16^0 b'16 cis''16 d''16
 e'16 \< fis' g' a'^0 b' cis'' d'' e''^4 \! | % 39
 e''16( \f d''16) d''16( cis''16) cis''16( b'16) b'16( a'16) 
 cis''16( \> b'16) b'16( a'16) a'16(^0 g'16) g'16( e'16) \! | % 40
 d'16 \< d'16 fis'16 fis'16 a'16 a'16 cis''16 cis''16 \! 
 d''16 \f d''16 fis''16 fis''16 a''16^0 a''16 fis''16 fis''16 | % 41
 d''4 r4 r2 | % 42
 fis''16( \mf \downbow g''16 fis''8) e''16(^0 fis''16 e''8)
 d''16( e''16 d''8) cis''16( d''16 cis''8) | % 43
 b'8 b'16(cis''16 d''8) b'8 cis''4( fis''8) r8 | % 44
 fis''16( g''16 fis''8) e''16(^0 fis''16 e''8)
 d''16( e''16 d''8) cis''16( d''16 cis''8) |   % 45
 b'8 b'16(cis''16 d''8) cis''8 b'4( b''8) r8 | % 46
 a''4-> \f e''8 g''8 fis''8 d''16( cis''16 d''8) d''8-- | % 47
 fis''4^> cis''8 e''8^4 d''8 d''16( cis''16 b'8) b''8-- |   % 48
 a''4^>  e''8^0 g''8 fis''8 d''16( cis''16 d''8) d''8 |     % 49
 d'8^> d'8( e'8^>) e'8( fis'8^>) fis'16( g'16 fis'8) r8 | % 50
 fis''16( \mf g''16 fis''8) e''16(^0 fis''16 e''8)
 d''16( e''16 d''8) cis''16( d''16 cis''8) |     % 51
 b'8 b'16(cis''16 d''8) b'8 cis''4( fis''8) r8 | % 52
 fis''16( g''16 fis''8) e''16(^0 fis''16 e''8)
 d''16( e''16 d''8) cis''16( d''16 cis''8) |             % 53
 b'8 b'16(cis''16 d''8) cis''8 b'4( b''8) r8 |           % 54
 R1 | % 55
 R1 | % 56
 b4(_\markup{\line {\concat { \dynamic mf }
     \italic { espressivo }}}^\markup{\italic{meno mosso}} \downbow 
 e'4) d'4( g'4) | % 57
 fis'4( d''4) c''2 |    % 58
 b'4( a'4^0) e'4( fis'4) | % 59
 g'4( e''4^4) d''2 | % 60
 g''4.( \f fis''8) a''4.( g''8) | % 61
 fis''4( d''4) a'4(^0 b'4) | % 62
 cis''4.( b'8) a'8(^4 \> g'8 e'8 fis'8) | % 63
 d'2^4 c'2 \! | % 64
 b4( \mf e'4) d'4(^0 g'4) | % 65
 fis'4( d''4) c''2 | % 66
 b'4( a'4^0) e'4( fis'4) | % 67
 g'4( e''4^4) d''2 | % 68
 e''4(^4 \f d''4) c''4( b'4) | % 69
 a'4( a''4) g''4( e''4^0) | % 70
 cis''!4( d''4) b''4.(^\markup{\italic{rit.}} a''8) | % 71
 g''2.\>  \! b''4  \mf | % 72
 a''8(^\markup{Tempo I.} b'8) b'16( c''16 b'8) g''8(^> b'8) b'16( c''16 b'8) | % 73
 e''16^0 e''16 fis''16\< fis''16 g''16 g''16 a''16 a''16 \!
 b''8^> \> a''16( g''16 fis''8) \! r8 | % 74
 a''8(^> g''8) b'16( c''16 b'8) g''8(^> fis''8) a'16(^0 b'16 a'8) | % 75
 c''16^> c''16 b'16 b'16 a'16^0 a'16 g'16 g'16 fis'4 b'4 \< \! | % 76
 b'16( \mf c''16 b'8) a'16(^0 b'16 a'8) g'16( a'16 g'8) fis'16( g'16 fis'8) | % 77
 e'8 e'16( fis'16 g'8) e'8 fis'4( d'8^0) r8 | % 78 
 d''16( e''16 d''8) c''16( d''16 c''8) b'16( c''16 b'8) a'16(^0 b'16 a'8) | % 79
 b'8( b''8) a'' g'' fis''4( cis''!8) r8 | % 80
 fis''16( g''16 fis''8) e''16(^0 fis''16 e''8)
 d''16( e''16 d''8) cis''!16( d''16 cis''8) |             % 81
 d''16( e''16 d''8) c''16( d''16 c''8) b'16( c''16 b'8) a'16(^0 b'16 a'8) | % 82
 g'8( b'8) e''8^4 d''8 cis''8( b''8) a'8 g''8 | % 83
 fis''8( d''8) b'8 fis'8 d''4.( \< cis''8) \! | % 84
 b'16( \f cis''16 d''16 cis''16) b'16(  cis''16 d''16 cis''16) 
 b'16 b'16 cis''16 cis''16 d''16 d''16 cis''16 cis''16 | % 85
 d''16 d''16 b''16 b''16 a''16 a''16 g''16 g''16
 fis''16 fis''16 e''16^0 e''16 d''16 d''16 cis''16 cis''16 | % 86 
 b'16( \f cis''16 d''16 cis''16) b'16(  cis''16 d''16 cis''16) 
 b'16 b'16 cis''16 cis''16 d''16 d''16 cis''16 cis''16 | % 87
 d''16 d''16 b''16 b''16 a''16 a''16 g''16 g''16
 fis''16 fis''16 e''16^0 e''16 d''16 d''16 cis''16 cis''16 | % 88
 b'16 b'16 cis''16 cis''16 d''16d''16 b'16 b'16 
 fis'16 fis'16 g'16 g'16 fis'16 fis'16 d'16^0 d'16 | % 89
 b16 \f b16 ais16 ais16 b16 b16 ais16 ais16
 b16 b16 ais16 ais16 b16 b16 ais16  ais16 | % 90
 b4 r4 <fis' d'' b''>4 \downbow r4 | % 91
 b1 \downbow \bar "|." % 92
}
