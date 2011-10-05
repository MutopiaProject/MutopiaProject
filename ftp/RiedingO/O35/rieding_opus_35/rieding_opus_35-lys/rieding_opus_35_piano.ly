\version "2.14.2"


pianoRHOne = { 
  \time 4/4
  \clef treble 
  \key b \minor
  fis'4(\mf b'4 fis'4 e'4)|					 % 1
  d'4( < dis' b >4 < e' b>4) <g' cis' b>4 |			 % 2
   <b d' fis'>4 \< <d' fis' b'>4 <d' gis' b'>4 <g' b' d''>4 \! | % 3
  < ais' cis'' >4 \f r8 r16 < fis' ais' cis'' fis''>16 
  < fis' ais' cis'' fis''>4 r4 |		% 4
  fis'8( \p  d'8 b8 d'8) fis'8(  d'8 b8 d'8) |	% 5
  fis'8(  d'8 b8 d'8) fis'8(  d'8 b8 d'8) |	% 6
  g'8( e'8 b8 e'8) g'8( e'8 b8 e'8) |		% 7
  fis'8(  d'8 b8 d'8) fis'8(  d'8 b8 d'8) |	% 8
  fis'8( cis'8 ais8 cis'8) ais8(cis'8 fis'8 cis'8) | % 9
  b8(\< d'8 fis'8 d'8) b8(d'8 fis'8 d'8) \! |	     % 10
  b8(\mf d'8 g'8 d'8)  b8( d'8 g'8 d'8)|	     % 11
  b8(\> d'8 fis'8 d'8) ais8( cis'8 fis'8 cis'8) \! | % 12
  b8( \p d'8 fis'8 d'8) fis'8( d'8 b8 d'8) |	     % 13
  fis'8( d'8 b8 d'8) fis'8( d'8 b8 d'8) |	     % 14
  g'8( e'8 b8 e'8) g'8( e'8 b8 e'8) |		     % 15
  fis'8( d'8 b8 d'8) fis'8( d'8 b8 d'8) |	     % 16
  fis'8( cis'8 ais8 cis'8) ais8( cis'8 fis'8 cis'8) | % 17
  b8(\< d'8 fis'8 d'8) b8(e'8 g'8 e'8) \! |	      % 18
  b8(\mf d'8 fis'8 d'8) ais8(\> e'8 fis'8 e'8) \! |   % 19
  b8( d'8 fis'8 d'8) b8( d'8 fis'8 d'8) |	      % 20
  b8( \mf fis'8 b'8 fis'8)   b8( fis'8 gis'8 fis'8) | % 21
  cis'8( fis'8 a'8 fis'8) cis'8( fis'8 a'8 fis'8) |   % 22
  cis'8( eis'8 b'8 eis'8) cis'8( eis'8 b'8 eis'8) |   % 23
  cis'8( fis'8 a'8 fis'8) cis'8( fis'8 a'8 fis'8) |   % 24
  b8( fis'8 a'8 fis'8) bis8( fis'8 a'8 fis'8) |	      % 25
  <cis' e' a'>1 \f |				      % 26
  < b d' e' gis'>1  \> |			      % 27
  <cis' e' a'>2 \p  r2 |			      % 28
  r4 <a cis'>4 <a cis'>4 r4 |			      % 29
  r4 <gis b d'>4 <gis b d'>4 r4 |		      % 30
  r4 <g! a cis'>4 <g a cis'>4 r4 |		      % 31
  r2 <a cis' e' g'>2 |				      % 32
  <a d' fis'>2\mf <b d' fis'>2 |		      % 33
  <b d' g'>2 <b e'g'>2 |			      % 34
  <a e' g'>2 <a e' g'>2 |			      % 35
  r4 <a d' fis'>4 <d' fis' a'>4 <d' fis' a' d''>4 |   % 36
  <d' fis'>2 <b d' g'>2 |			      % 37
  <b e' g'>2 <b e' g'>4 <cis' e' g'>4 |		      % 38
  <cis' e' fis'>2 <b d' fis'>2 |		      % 39 
  <b d' f'>4.(^> <b d' e'>8) <a cis'! e'>4 \> <a e' g'!> \! | % 40
  <a d' fis'>4 \mf r4 <c'd'fis'> r4 |			      % 41
  <b d' g'>4 r4 g'8( d'8 <e' g'>8 d'8) |		      % 42
  <cis'! e' g'>4 r4 <a cis' g'>4 r4 |			      % 43
  <a d' fis'>4 r4  <d' fis'>8(\< a8 <d' fis'>8 a8) \! |	      % 44
  <e' fis'>8( \f ais8 <e'fis'>8 ais8) <d' fis'>8( b8 <d'fis'>8 b) | % 45
  <d' f'>8( b8 <d' f'>8 b8) <d' f'>8( b8 <d' f'>8 b8) |		    % 46
  <a d' fis!>4 r4 r2 |						    % 47
  <a cis' g'>4 r4 <cis' g'a'>4 \> r4 \! |			    % 48
  <fis' a'>8( \mf d'8 <fis' a'>8 d'8)  <fis' a'>8( d'8 <fis' a'>8 d'8) | % 49
  <g' a'>8( cis'8 <g'a'>8 cis') <g' a'>8( cis'8 <g'a'>8 cis') | % 50
  <fis'a'>8( d' <fis'a'>8 d')  <fis'a'>8( d' <fis'a'>8 d') |	% 51
  r8 <a' a''>8  r8 \< <cis'' cis'''>8 r8 <e'' e'''>8  r8 <g'' g'''>8 | % 52
  <fis'' fis'''>4( \f <a'' a'''>4) <fis'' fis'''>4( <e'' e'''>4) % 53
  <d'' d'''>4( <a' a''>4) <fis' fis''>4( <d' d''>4) |		 % 54
  <fis' b' d''>2 \f <d' fis' b'>4 r4 |				 % 55
  <b d' fis'>2 <d' fis' b'>4 r4 |				 % 56
  <b' b''>4( \f <d' d''>4) <b' b''>4( <a' a''>4)|		 % 57
  <g' g''>4( <d' d''>4) <b b'>4( <g g'>4) |			 % 58
  <b e' g'>2 \f <e' g' b'>2 |					 % 59
  <g' b' e''>4 <e' g' b'>4 <b e' g'>2 \> \!|			 % 60
  <d' fis'>16( \mf b <d' fis'>16 b) <d' fis'>16( b <d' fis'>16 b) 
  <d' fis'>16( b <d' fis'>16 b) <d' fis'>16( b <d' fis'>16 b) | % 61
  <e' fis'>16( b <e' fis'>16 b) <e' fis'>16( b <e' fis'>16 b) 
  <cis' e' fis'>16( ais16 <cis' e' fis'>16 ais16) 
  <cis' e' fis'>16( ais16 <cis' e' fis'>16 ais16) | % 62
  fis'8( \p d'8 b8 d'8) fis'8( d'8 b8 d'8) |	    % 63
  fis'8( d'8 b8 d'8) fis'8( d'8 b8 d'8) |	    % 64
  g'8( e'8 b8 e'8) g'8( e'8 b8 e'8)  |		    % 65
  fis'8( d'8 b8 d'8) fis'8( d'8 b8 d'8) |	    % 66
  fis'8( cis'8 ais8 cis'8) ais8( cis'8 fis'8 cis'8) | % 67
  b8( \< d'8 fis'8 d'8) b8( d'8 fis'8 d'8) \!|	      % 68
  c'8( \mf d'8 fis'8 d'8) c'8( d'8 fis'8 d'8) |	      % 69
  b8(d'8 g'8 d'8) b8( d'8 g'8 b'8)  |		      % 70
  b8( e'8 g'8 e'8) c'8( fis'8 a'8 fis'8) |	      % 71
  b8( e'8 g'8 e'8)  b8( e'8 b8 e'8) |		      % 72
  g'8(-5 e'8-4 cis'!8 g8) e'8(-5 g8 cis'!8 g8) |      % 73
  d'8( b8 fis8 b8) fis8( b8 fis8 b8) |		      % 74
  g8( b8 e'8 b8) e'8( b8 g8 b8)			      % 75
  fis8( b8 d'8 b8) d'8( b8 fis8 b8) |		      % 76
  \change Staff="LHOne" \stemUp \slurUp 
  <b cis'>8( d8 <b cis'>8 d8) <ais cis>8( fis8 <ais cis' e'>8 fis8) | % 77
  <b d'>8( fis8 <b d'>8 fis8) <b d'>8( g8 <b d'>8 g8) | % 78
  <b d'>8( fis8 <b d'>8 fis8) <b d'>8( g8 <b d'>8 g8) | % 79
  <b d'>8( fis8 <b d'>8 fis8) \change Staff="RHOne" 
  \stemNeutral \slurNeutral <d'fis'>8( \> b8 <d'fis'>8 b8) \! | % 80
  <d' fis' b'>2 \f <b d' fis'> 2 |				% 81
  <fis b d'>2 <b d' fis'>2 |					% 82
  <d' fis' b'>2 <b' d'' fis'' b''>2 |				% 83
  s1 \bar"|."							% 84
}

pianoLHOne = 
{ 
  \key b \minor 
  \time 4/4 
  \clef bass
  r1 |				% 1
  b4( a4 g4) <d d,>4 |		% 2
  < fis fis,>2 <eis eis,>2 |	% 3
  <fis fis,>4 r8 r16 <fis fis,>16 <fis fis,>4 r4 | % 4
  b,,2 b,2 |					   % 5
  b,,2 b,2 |					   % 6
  b,,2 b,2 |					   % 7
  b,,2 b,2 |					   % 8
  fis,1  |					   % 9
  b,1 |						   % 10
  g,2 e,2 |					   % 11
  fis,1 |					   % 12
  b,,2 b,2 |					   % 13
  b,,2 b,2 |					   % 14
  b,,2 b,2 |					   % 15
  b,,2 b,2 |					   % 16
  fis,1  |					   % 17
  b,2 e,2 |					   % 18
  fis,1 |					   % 19
  b,2 fis,2 |					   % 20
  d,2 d |					   % 21
  cis,2 cis2 |					   % 22
  cis,2 cis2 |					   % 23
  fis,2 fis2 |					   % 24
  <d, d>2 <dis, dis>2|				   % 25
  <e, e>1 |					   % 26
  <e, e>1 |					   % 27
  <a, a>2 r2|					   % 28
  r4 <a, e>4 <a, e>4 r4 |			   % 29
  r4 <a, e>4 <a, e>4 r4 |			   % 30
  r4 <a, e>4 <a, e>4 r4 |
  r2 a,2 |
  <d d,>4  <cis cis,>4  <b, b,,>4  <a, a,,>4 |
  <g, g,,>4  <fis, fis,,>4  <e, e,,>4  <d, d,,>4 |
  <cis, cis,,>2 <cis cis,>2 |
  <d, d>2. r4 |
  <b b,>4 <a a,>4 <g g,>4 <fis fis,>4  |
  <e e,>4 <d d,>4 <cis cis,>4 <b, b,,>4 |
  ais,,8( ais,8) ais,,8( ais,8) b,,8( b,8) b,,8( b,8) |
  gis,,8( gis,8) gis,,8( gis,8) a,,8( a,8) a,,8( a,8) |
  <d, d>4 r4 a4 r4 |
  g,4 r4 b,4( bes,4) |
  a,4 r4 e4 r4 |
  d4 r4 d2 |
  cis2 b,2|
  gis,2 gis,2 |
  a,4 r4 r2 |
  a,4 r4 e4 r4 |
  d4( a,4) d4 r4 |
  e4( a,4) e4( a,4) |
  d4( a,4) d4 r4 |
  <e g>4( a,4) <cis, e g>4( a,4) |
  <d fis a>16( \sustainOn d'16 <d fis a>16 d'16) <d fis a>16( d'16 <d fis a>16 d'16) <d fis a>16( d'16 <d fis a>16 d'16) <d fis a>16( d'16 <d fis a>16 d'16) |
  <d fis>16( a16 <d fis>16 a16) <d fis>16( a16 <d fis>16 a16) <d fis>16( a16 <d fis>16 a16) <d fis>16( \sustainOff a16 <d fis>16 a16) |
  <b, fis>16( \sustainOn b16 <b, fis>16 b16) <b, fis>16( b16 <b fis>16 b,16) <b, fis>16( b16 <b, fis>16 b16) <b, fis>16( b16 <b, fis>16 b16) |
  <b, d>16( fis16 <b, d>16 fis16) <b, d>16( fis16 <b, d>16 fis16) <b, d>16( fis16 <b, d>16 fis16) <b, d>16( \sustainOff fis16 <b, d>16 fis16) |
  <g, d>16( \sustainOn g16 <g, d>16 g16) <g, d>16( g16 <g, d>16 g16) <g, d>16( g16 <g, d>16 g16) <g, d>16( g16 <g, d>16 g16) |
  <g, b,>16( d16 <g, b,>16 d16) <g, b,>16( d16 <g, b,>16 d16) <g, b,>16( d16 <g, b,>16 d16) <g, b,>16( \sustainOff d16 <g, b,>16 d16) |
  <e, b,>16( \sustainOn e16 <e, b,>16 e16) <e, b,>16( e16 <e, b,>16 e16) <e, b,>16( e16 <e, b,>16 e16) <e, b,>16( e16 <e, b,>16 e16) |
  <e, b,>16( e16 <e, b,>16 e16) <e, b,>16( e16 <e, b,>16 e16) <e, b,>16( e16 <e, b,>16 e16) <e, b,>16( \sustainOff e16 <e, b,>16 e16)  |
  fis,16( fis16 fis,16 fis16) fis,16( fis16 fis,16 fis16) fis,16( fis16 fis,16 fis16) fis,16( fis16 fis,16 fis16)|
 fis,16( fis16 fis,16 fis16) fis,16( fis16 fis,16 fis16) fis,16( fis16 fis,16 fis16) fis,8 r8 |
  b,,2 b,2 |
  b,,2 b,2 |
  b,,2 b,2 |
  b,,2 b,2 |
  fis,1 |   
  b,1 |
  a,2 d2|
  g,2 g2 |
  e2 dis2 |
  e2 g,2 |
  a,2 ais,2 |
  b,2 <d, d>2 |
  <e, e>1 |
  fis,1 |
  \stemDown fis,2 <fis,, fis,>2|
  <b,, b,>1 |
  <b,, b,>1 |
  <b,, b,>1 |
  \stemNeutral
  b,,16(-2 ais,,16-3 b,,16 ais,,16 b,,16 ais,,16 b,,16 ais,,16) b,,16( ais,,16  b,,16 ais,,16 b,,16 ais,,16 b,,16 ais,,16)|
  b,,16( ais,,16 b,,16 ais,,16 b,,16 ais,,16 b,,16 ais,,16) b,,16( ais,,16  b,,16 ais,,16 b,,16 ais,,16 b,,16 ais,,16)|
  b,,2 <b, b>2  |
  <b,, b, d fis b>1 ||
}


pianoRHTwo = 
{ \time 6/8
  \clef treble 
  \key g \major

  d'2.( \p | 			% 1
  d'8) d''8( d'8) d''8 (d'8 d''8) %2
  d'8( \< c''8 b'8 \! ) c''8( \> a'8 g'8 \!) | % 3
  fis'8( e'8 d'8) e'8( d'8 c'8) |	    % 4
  b8(\p d'8 g'8) a'8( e'8 a'8) |	    % 5
  b8( d'8 g'8) a'8( d'8 fis'8) |	    % 6
  g8( d'8 g'8) c'8( d'8 fis'8) |	    % 7
  b8( d'8 g'8) b8(\< d'8 g'8 \!) |	    % 8
  b8( \mf d'8 gis'8) b8( d'8 e'8) |	    % 9
  a8( c'8 e'8) a'8 ( e'8 a'8) |		    % 10
  b8( d'8 g'8)  <c' d' fis'>4.\> \! |	    % 11
  b8( \p d'8 g'8) b8( d'8 g'8) |	    % 12
  <b e' g'>8 \mf <b e' g'>8 <b e' g'>8 <a e'fis'>4. | %13
  <b dis' fis'>8  <b dis' fis'>8  <b dis' fis'>8 
  <b dis' fis'>8  <b dis' fis'>8  <b dis' fis'>8 |   % 14
  <b e' b'>8 <b e' b'>8  <b e' b'>8 <cis' e' b'>4. | % 15
  <cis' fis' ais'>8 <cis' fis' ais'>8 <cis' fis' ais'>8 
  <e' fis' cis''>8 <e' fis' cis''>8 <e' fis' cis''>8 | % 16
  <d' fis' d''>8 <fis' b' d''>8 <fis' b' d''>8
  <eis' b' d''>8 <eis' b' d''>8 <eis' b' d''>8 | % 17
  <fis' a' d''>4. <d' fis' a'>4. |		 % 18
  r8 a8( <cis' e' g'>8 a8-\markup{\italic "rit."})  r8 r8 | % 19
  r16-\markup{\italic "a tempo"} a16( d'16  fis'16-4 a'16-1 d''16)
  fis''16( d''16 a'16 fis'16-4 \> d'16 a16) \! | % 20
  r16 \p bes16( d'16 g'16 d'16 bes16) 
  d'16( bes16 d'16 g'16 d'16 bes16) | % 21
  r16 c'16( d'16 c'16 a'16 d'16) 
  r16 d'16^1( c''16 a'16 fis'!16 d'16) | % 22
  r16 d'16( g'16 bes'16 g'16 d'16) 
  g'16( d'16 g'16 b'16 g'16 d'16) | %23
  r16 \< d'16( g'16 bes'16 g'16 d'16) 
  g'16( d'16 g'16 bes'16 g'16 d'16) \! | %24
  <f' bes'>16( \mf bes16 <f' bes'>16 bes16 <f' bes'>16 bes 16)
  <fis' bes'!>16( bes16 <fis' bes'>16 bes16 <fis' bes'>16 bes 16) | % 25
  <g'bes'>16( bes16 <g'bes'>16 bes16 <g'bes'>16 bes16) 
  <g'b'>16( b16 <g'b'>16 b16 <g'b'>16 b16) | % 26
  <c' g' c''>4. <c'es' f' a'>4.\> \! |	     % 27
  <d' f' bes'>4( \p <d' f'>8) 
  <bes d'>8( \< <d' f'>8 <d' f' bes'>8) \! | % 28
  r16 d'16( g'16 bes'16 g'16 d'16)
  g'16( bes'16 g'16 d'16 g'16 bes'16) | % 29
  r16 c'16( d'16 c'16 a'16 d'16)
  r16 d'16(^1 c''16 a'16 fis'!16 d'16) | % 30
  r16 d'16( g'16 bes'16 g'16 d'16)
  g'16( d'16 g'16 bes'16 g'16 d'16) | % 31
  r16 c'16( \< f'16 c''16 f'16 c'16) 
  a'16( f'16 c'16 f'16 a'16 f'16) \! % 32
  <f' bes'>16( \mf bes16 <f' bes'>16 bes16 <f' bes'>16 bes16)
  <fis' a'>16( d'16 <fis' a'>16 d'16 <fis' a'>16 d'16) | %33
  <g' d''>16( d'16 <g' d''>16 d'16 <g' d''>16 d'16)
  <gis' d''>16( f'16 <gis' d''>16 f'16 <gis' d''>16 f'16) | %34
  <fis'! a' d''>8( <d' fis' a'>8 <a d' fis'>8)
  <g cis' e'>4. | 		% 35
  <fis a d'>4. \> d'8(-\markup{\italic "rit."} cis'8 c'8) \! | % 36
  b!8(-\markup{\italic "a tempo"} \p d'8 g'8) 
  a8( e'8 a'8) |		% 37
  b8( d'8 g'8) a8( d'8 fis'8) | % 38
  g8( d'8 g'8) c'8( d'8 fis'8) | % 39
  b8( d'8 g'8) b8( \< d'8 g'8) \! | % 40
  b8( \mf d'8 gis'8) b8( d'8 e'8) | % 41
  a8( c'8 e'8) a8( e'8 a'8) | 	% 42
  b8( d'8 g'8) <c'd' fis'>4. \> \!| % 43
  b8( \p d'8 g'8 <b d'>4.) |	    % 44
  b8( d'8 g'8) <b d' f' g'>4. |	    % 45
  <c' e' g'>4. \mf <c' es' g'>4. |  % 46
  <b d' g'>2.( |		    % 47
  <b d' g'>4.)-\markup{\italic "molto rit."} r4 r8 | % 48
  R1*6/8 |					     % 49
  <b d g>2. \p |				     % 50
}

pianoLHTwo = 
{ \time 6/8
  \clef bass 
  \key g \major
  \tempo "Andante"
  r4 <a c'>8( <gis b>4) <g bes>8( | % 1
  <fis! a>4) <fis a>8( <eis gis>4) <e g>8( | % 2
  <d! fis>4.) <es g a>4. |		    % 3
  <d fis a>4. r4 r8 |			    % 4
  g4. c4. |				    % 5
  d2. |					    % 6
  b,4. a,4. |				    % 7
  g,4. f,4. |				    % 8
  e,4. gis,4. |				    % 9
  a,4. c4. |				    % 10
  d 4. d,4. |				    % 11
  g,4. g4. |				    % 12
  e4. c4. |				    % 13
  b,4. a,4. |				    % 14
  g,4. g,4. |				    % 15
  fis,4. ais,4.|			    % 16
  b,4. gis,4. |				    % 17
  a,2. |				    % 18
  <a, a,,>4.(   <a, a,,>8) r8 r8 |	    % 19
  <d, d>2.\sustainOn  |	    % 20
  <g, g>2. \sustainOff |    % 21
  <fis,! fis!>4. <d, d>4.		    % 22
  <g, g>2. |				    % 23
  <a, a>4. <f, f>4( <es, es>8) |	    % 24
  d,16( d16 d,16 d16 d,16 d16)
  d,16( d16 d,16 d16 d,16 d16) | % 25
  es,16( es16 es,16 es16 es,16 es16)
  es,16( es16 es,16 es16 es,16 es16) | % 26
  <es, es>4. <f,! f!>4. |	       % 27
  bes, 2. |			       % 28
  <g, g>2. |			       % 29
  <fis,! fis> 4. <d, d> 4. |	       % 30
  <g, g>2. |			       % 31
  <a, a>4. <f, f>4( <es, es> 8) |      % 32
  d,16( d16 d,16 d16 d,16 d16)
  c,16( c16 c,16 c16 c,16 c16) | % 33
  bes,,16( bes,16 bes,,16 bes,16 bes,,16 bes,16)
  bes,,16( bes,16 bes,,16 bes,16 bes,,16 bes,16) | % 34
  <a,, a,>4. \sustainOn a,4. \sustainOff |	   % 35
  d4. r4 r8 |					   % 36
  g,4. c4. |					   % 37
  d2. |						   % 38
  b,4. a,4. |					   % 39
  g,4. f,4. |					   % 40
  e,4. gis,4. |					   % 41
  a,4. c4. |					   % 42
  d4. d,4. |					   % 43
  g,2. |					   % 44
  g2.|						   % 45
  g,2.						   % 46
  g2.(|						   % 47
  g4.) r4 r8 |					   % 48
  R1*6/8 |					   % 49
  <g, g>2. \bar"|." 				   % 50
}


pianoRHThree = { 
  \time 4/4
  \clef treble 
  \key b \minor
  \tempo "Allegro moderato."
  <cis' e' b'>4. \f <cis' e' b'>8 <dis' e' b'>4. <dis' e' b'>8 | % 1
  <d' fis' b'>4 \< <fis' b' d''> <b' d'' fis''>4. <b' d'' fis''>8 \! | % 2
  <b' d'' gis''>4. \ff <b' d'' gis''>8 <d'' gis'' b''>4. <d'' gis'' b''>8 | % 3
  <cis'' fis'' ais''>4 \> <fis'' fis'>4 <fis'' fis'>4 <fis'' fis'>4  | % 4
  <fis' b' d''>8 \p r8 <e' ais' cis''>8 r8 
  <d' fis' b'>8 r8 <cis' g' b'>8 r8 | % 5
  <d' fis' b'>8 r8 <d' fis' b'>8 r8 
  <fis' ais'>8( cis') <fis' ais'>8( cis') | % 6
  <b fis' b'>8 r8 <e' fis' ais'>8 r8 <d' fis' b'>8 r8 <cis' g' b'>8 r8 | % 7
  <d' fis' b'>8 r8  <e' fis' ais'>8 r8 
  <d' fis' b'>8 <d' fis'>8 <d' fis' b'>8 r8 | % 8
  <e' a'!>8 \mf  <e' a'>4 <e' g'>8 <d' fis'>8 <d' fis'>4 <d' fis'>8 | % 9
  <e' fis'>8 <e' fis'>4 <cis' e'>8 <b d'>8 <d' fis'>4 <d' fis'>8 | % 10
  <e' a'!>8 \mf  <e' a'>4 <e' g'>8 <d' fis'>8 <d' fis'>4 <d' fis'>8 | % 11
  <d' fis'>8 <d' fis'>8 r8  <b e' b'>8 
  <fis'ais'>8( cis') <a' cis''>8( fis'8) | % 12
  <fis' b' d''>8 \p r8 <e' ais' cis''>8 r8 
  <d' fis' b'>8 r8 <cis' g' b'>8 r8 | % 13
  <d' fis' b'>8 r8 <d' fis' b'>8 r8 
  <fis' ais'>8( cis') <fis' ais'>8( cis') | % 14
  <b fis' b'>8 r8 <e' fis' ais'>8 r8 <d' fis' b'>8 r8 <cis' g' b'>8 r8 | % 15
  <d' fis' b'>8 r8  <e' fis' ais'>8 r8 
  <d' fis' b'>8 <d' fis'>8 <d' fis' b'>8 r8 | % 16
  r8 <d' e' b'> r8 <d' e' gis'> r8 <cis' e' a'> r8 <cis' e' g'> | % 17
  r8 <cis' e' fis'>8 r8 <cis' e' ais'>8 r8 < d' fis' b'>8 r8 <b fis' b'>8 | % 18
  r8 <b fis' a'!>8 r8 <b e' g'!>8 r8 <a e' g'>8 r8 <a d' fis'>8 | % 19
  r8 <g cis' g'>8 r8 <e' g' cis''>8 r8 <d' fis' b'>8 r8 <e' fis' ais'>8 | % 20
  r8 <d' fis' b'>8 r8 <d'e' b'>8 r8 <cis' e' a'>8 r8 <cis' e' g'!>8 | % 21
  r8 <cis' e' fis'>8 r8 <cis' e' ais'>8 r8 < d' fis' b'>8 r8 <b fis' b'>8 | % 22
  r8 <c' fis' a'>8 r8 <c' fis' a'>8 r8 <cis' e' a'>8 r8 <cis' e' a'>8 | % 23
  <b d' e' gis'>2 <cis'e'a'>8( \> a8) <cis' e' g'>8(-\markup{\italic "rit."} a8) \! | % 24   
  <d' fis'>8( \p a8 <dis' e'>8 gis8) <dis' fis'>8( a8 <dis' e'>8 gis8) | % 25
  <d' fis'>8( a8 <d' fis'>8 a8) <d' fis'>8( a8 <d' fis'>8 a8) | % 26
  <cis' e' g'>8( a8 <bis dis' a'>8 a8) <cis' e' g'>8( a8 <bis dis' fis'>8 a8) | % 27
  <cis' e' g'>8( a <cis' e' g'>8 a) r a( <cis' e'> a) | % 28
  d'( a d' a) <d' e'>( b <d' e'> b) | % 29
  <d' f'>( \< b <d' f'> b) <d' f'>(  b <d' f'> b)  \! | % 30
  <a d' fis'!>1 \mf | % 31
  <g cis' e'>-\markup{\italic "rit. dim."} | % 32
  r4-\markup{\italic "a tempo"} \p  < fis a d'>4 r <a c' d'> | % 33
  <g b d'> <b d' f'> <b d' e'> <b d' e'> | % 34
  <a cis'! e'> \< <cis' e' g'!> <cis' e' fis'> <cis' e' fis'> \! | % 35
  <b d' fis'> \mf \> <b d' eis'> <a d' fis'> <g cis' e'>\! | % 36
  <e g d'>8 \p <e g d'>8 r8 <a d'>8 <b d' e'>8 <b d' e'>8 r4  | % 37
  r8 \mf a8( <d' fis'>8 a8) r8 \> g8( <cis' e'>8 g8) \! | % 38
  <fis a d'>8 \p <fis a d'>8  r8 <a d'>8 <b d' e'>8 <b d' e'>8 r4 | % 39
  r8 \mf a8( <d' fis'>8 a8) r8 \> g8( <cis' e'>8 g8) \! | % 40
  <fis a d'>4 r4 <a d' fis'>4 \f <d' fis' a'>4 | % 41
  <fis' a' d''>4 <fis' fis''>4^> <fis' fis''>4^> <fis' fis''>4^> | % 42
  <fis' b' d''>8 \p r8 <e' ais' cis''>8 r8 <d' fis' b'>8 r8 <cis' g' b'>8 r8 | % 43
  <d' fis' b'> r <d' fis' b'> r <fis' ais'>( cis') <fis' ais'>( cis') | % 44
  <b fis' b'> r <e' fis' ais'> r <d' fis' b'> r <cis' g' b'> r | % 45
  <d' fis' b'> r <e' fis' ais'> r <d' fis' b'> <d' fis'> <d' fis' b'> r | % 46
  <e' a'!>8 \mf <e' a'>4 <e'g'>8 <d' fis'>8 <d' fis'>4 <d' fis'>8  | % 47
  <e' fis'>8 <e' fis'>4 <cis' e'>8 <b d'>8 <d' fis'>4 <d' fis'>8 | % 48
  <e' a'!>8  <e' a'>4 <e'g'>8 <d' fis'>8 <d' fis'>4 <d' fis'>8  | % 49
  <d' fis'>8 <d' fis'>8 r8 < b e' b'>8 <fis' ais'>8( cis'8) <a' cis''>8( fis'8) | % 50
  <fis' b' d''>8 \p r8 <e' ais' cis''>8 r8 <d' fis' b'>8 r8 <cis' g' b'>8 r8 | % 51
  <d' fis' b'>8 r8 <d' fis' b'>8 r8 <fis' ais'>8( cis'8) <a' cis''>8( fis'8) | % 52
  <b fis' b'>8 r8 <e' fis' ais'>8 r8 <d' fis' b'>8 r8 <cis' g' b'>8 r8 | % 53
  <d' fis' b'>8 r8 <e' fis' ais'>8 r8 <d' fis' b'>8 <d' fis'>8 <d' fis' b'>8 r8 | % 54
  <d' fis' c''>4 \f <d' eis' b'>4 <d' fis' c''>4 <c'! d' a'>4 | % 55
  <a c' fis'>4 <g b e'>4 <fis a d'>4(^\markup{\italic "rit."} \> <fis a c'!>4)  \!| % 56 
  <g b>2^\markup{\italic "meno mosso"}\p <g d'>2 | % 57
  r8 c'8( d'8 fis'8) d'8( fis'8 d'8 c'8) | % 58
  <c' d' fis'>2 r2  | % 59
  r8 b( d' g') b'( g' d' b) | % 60
  r4 < d' g' d''>2 \mf <e' g' d''>4 | % 61
  r8 d''( a' fis') a'( d' gis' d') | % 62
  g'!8( cis'!8 < e' g'>2) <a cis'>4 | % 63
  r8 a( \> d' fis') a'( fis' d' c') \! | % 64
  \times 2/3 { r8 \p b8( d'8 } \times 2/3 { g' b e')}
  \times 2/3 { d'8( b8 d'8 } \times 2/3 { g' d' b)} | % 65
  \times 2/3 {r8 c'8( d'8 } \times 2/3 { fis'8 d'8 c'8)}
  \times 2/3 {fis'8( d'8 c'8 } \times 2/3 { fis'8 d'8 c'8) } | % 66
  \times 2/3 {r8 c'8( d'8 } \times 2/3 { fis'8 d'8 c'8)}
  \times 2/3 {r8 a8( c'} \times 2/3 { fis' c' a)} | % 67
  \times 2/3 {r8 b8( d'8} \times 2/3 { g'8 d'8 b8 )} r4 \f <b' b''>4 | % 68
  <e'' e'''>4( \f <d'' d'''>4) <c'' c'''>4( <b' b''>4 | % 69
  <a' a''>4(  <a'' a'''>4) <g'' g'''>4( <e'' e'''>4) | % 70
  <cis'' cis'''>4( <d'' d'''>4) <b'' b'''>4.(_\markup{\italic "rit."} <a'' a'''>8) | % 71  
  <g'' g'''>8 \> <g'' g'''> <d'' d'''> <b' b''> <g' g''>4 \! r | % 72
  r4^\markup{Tempo I.} \p <b dis' a'>4 r4 <b e' g'>4 | % 73
  r4 <e' g'>8 \< <e' fis' a'>8 <dis' fis' b'>8 \! <dis' fis' b'>8 \> r8 <b fis' a'>8 \! | % 74
  r8 b8( <e' g'>8 b8) r8 <c' e' fis'>8 r8 <a e' fis'>8 | % 75
  <b e' g'>4 r4 <dis' fis'>8 <dis' fis'>8 \< <b dis' fis'>8 <b dis' fis'>8 \! | % 76
  r8 \mf <b e' b'>8 r8 <b dis' a'>8 r8 <b e' g'>8 r8 <a b fis'>8 | % 77
  r8 <g b e'>8 r8 < a e' g'>8 r8 <a d' fis'>8 r8 <d' fis' a'>8 | % 78
  r8 <d' g' d''>8 r8 <d' fis' c''>8 r8 <d' g' b'>8 r8 <d' a'>8 | % 79
  r8 <d' g' b'>8 r8 <cis'! g' b'>8 r8 <cis' fis' ais'>8 r8 <fis' ais' cis''>8 | % 80 
  r8 <fis' b' fis''>8 r8 <fis' ais' e''>8 r8 <fis' b' d''>8 r8 <fis' cis''>8 | % 81
  r8 <fis' b' d''>8 r8 <d' fis' c''>8 r8 <d' g' b'>8 r8 < b dis' a'>8 | % 82
  r8 <b e' g'>8 r8 <b e' g'>8 r8 <bis cis' g'>8 r8 <bis cis' g'>8 | % 83
  r8 <b d' fis'>8 r8 <d' fis' b'>8 r8 <e' fis' ais'>8 r8 <cis'! e' ais'>8 | % 84
  <b d' b'>8 \mf <b d' b'>8 <b d' b'>8 <b d' b'>8 <b d' b'>8 <b d' b'>8 <d' gis' b'>8 <d' gis' b'>8 | % 85
  <d' fis' b'>4 r4 < cis' e' ais'>4 r4 | % 86
  <b d' b'>8 \mf <b d' b'>8 <b d' b'>8 <b d' b'>8 <b d' b'>8 <b d' b'>8 <d' gis' b'>8 <d' gis' b'>8 | % 87
  <d' fis' b'>4 r4 < cis' e' fis' ais'>4 r4 | % 88
  <d' fis' b'>4 r4 r2 | % 89
  <d' fis' b'>4 \f <d' fis' b'>4 <fis' b' d''>4 <b' d'' fis''>4 | % 90
  <b' d'' fis'' b''> r <b' d'' fis'' b''> r | % 91 
  \change Staff="LHThree" <fis b>1 \bar "|."
}

pianoLHThree = { 
  \time 4/4
  \clef bass
  \key b \minor
  \repeat tremolo 8 { g,32(  g) } \repeat tremolo 8 { g,32(  g) } | % 1
  \repeat tremolo 8 { fis,32(  fis) } \repeat tremolo 8 { fis,32(  fis) } | % 2
  \repeat tremolo 8 { eis,32( \sustainOn  eis) } 
  \repeat tremolo 8 { eis,32(  eis) } | % 3
  <fis, fis>4 r4 \sustainOff r2 |	% 4
  <b, b>8 r 8 < fis, fis>8 r8 <b, b>8 r8 <e, e>8 r 8 | % 5
  <fis, fis>8 r8 <fis, fis>8 r8 <fis, fis>8 r8 <e, e>8 r8 | % 6
  <d, d>8 r8 <cis, cis>8 r8 <b,, b,>8 r8 <e, e>8 r8 | % 7
  <fis, fis>8 r8 <fis, fis>8 r8 <b, b>8 r8 <b, b>8 r8  | % 8
  <cis cis'>4 <cis a!>4 <d a>4 <d a>4  | % 9
  <cis ais>4 <ais, fis>4 <b, fis>4 <b, b>4 | % 10
  <cis a!>4 <cis a>4 <d a>4 <d a>4 | % 11
  <b, b>4 <g, g>4 <fis, fis>2 | % 12
  <b, b>8 r 8 < fis, fis>8 r8 <b, b>8 r8 <e, e>8 r 8 | % 13
  <fis, fis>8 r8 <fis, fis>8 r8 <fis, fis>8 r8 <e, e>8 r8 | % 14
  <d, d>8 r8 <cis, cis>8 r8 <b,, b,>8 r8 <e, e>8 r8 | % 15
  <fis, fis>8 r8 <fis, fis>8 r8 <b, b>8 r8 <b, b>8 r8  | % 16
  <gis, gis>4 <e, e>4 <a, a>4 <a, a>4 | % 17
  <ais, ais>4 <fis, fis>4 <b, b>4 <d, d>4 | % 18
  <dis, dis>4 <e, e>4 <cis,! cis!>4 <dis, dis>4 | % 19
  <e, e>4 <e, e>4 <fis, fis>4 <fis,fis>4 | % 20
  <b, b>4 <gis, gis>4 <a, a>4 <a, a>4 | % 21
  <ais, ais>4 <fis, fis>4 <b, b>4 <d,d>4 | % 22
  <dis, dis>4 <dis, dis>4 <e, e>4 <e, e>4 | % 23
  e,2 a,2 | % 24 
  d,2 d2 | % 25
  d,2 d2 | % 26
  a,,2 a,2 | % 27
  a,,2 g,2 | % 28
  fis,2 g,2 | % 29
  gis,2 gis,2 | % 30
  a,1 | % 31
  a,1 | % 32
  d2 fis,2 | % 33
  g,2 gis, | % 34
  a,2 ais,2 | % 35 
  b,4 gis,4  a,4 a,4 | % 36
  d4 fis,4 g,4 r4 | % 37
  a,2 a,2 | % 38
  d4 fis,4 g,4 r4 | % 39
  a,2 a,2 | % 40
  d4 r4 <d, d>4 <d, d>4 | % 41
  <d, d>4 r4 r2 | % 42
  <b, b>8 r8 <fis, fis>8 r8 <b, b>8 r8 <e, e>8 r8 | % 43
  <fis, fis>8 r8 <fis, fis>8 r8 <fis, fis>8 r8 <e, e>8 r8 | % 44
  <d, d>8 r8 <cis, cis>8 r8 <b,, b,>8 r8 <e, e>8 r8 | % 45
  <fis, fis>8 r8 <fis, fis>8 r8 <b, b>8 r8 <b, b>8 r8 | % 46
  <cis cis'>4 <cis a!>4 <d a>4 <d a>4 | % 47
  <cis ais>4 <ais, fis>4 <b, fis>4 <b, b>4 | % 48
  <cis a!>4 <cis a>4 <d a>4 <d a>4 | % 49
  <b, b>4 <g, g>4 <fis, fis>2 | % 50
  <b, b>8 r8 <fis, fis>8 r8 <b, b>8 r8 <e, e>8 r8 | % 51
  <fis, fis>8 r8 <fis, fis>8 r8 <fis, fis>8 r8 <e, e>8 r8 | % 52
  <d, d>8 r8 <cis, cis>8 r8 <b,, b,>8 r8 <e, e>8 r8 | % 53
  <fis, fis>8 r8 <fis, fis>8 r8 <b, b>8 r8 <b, b>8 r8 | % 54
  a,!16( a!16 a,16 a16) gis,16( gis16 gis,16 gis16)
  a,16( a16 a,16 a16) fis,16( fis16 fis,16 fis16) | % 55
  d,16( d16 d,16 d16) d,16( d16 d,16 d16 d,2) | % 56
  <g, d> 2 b,2 | % 57
  a,1 | % 58
  d2 r2 | % 59
  g,1 | % 60
  r4 <b, b>2 <bes, bes>4 | % 61
  << { a,1 }  \\ {\stemUp \slurUp a2 fis4( f4)} >>| % 62
  << { a,1} \\ {\stemUp \slurUp e4( a2) e4 } >> | % 63
  <d fis>2 <d, d>2 | % 64
  <g, g>1 | % 65
  <a, a>1 | % 66
  <d, d>2 <d, d>2 | % 67
  <g, g>2 \times 2/3 { <f, f>8 <g b d'>8 <g b d'>8 } 
  \times 2/3 { <g b d'>8 <g b d'>8 <g b d'>8 } | % 68
  \times 2/3 {<e, e>8 <gis b e'>8 <gis b e'>8 }  \times 2/3 {<gis b e'>8 <gis b e'>8 <gis b e'>8} 
  \times 2/3 {<d,! d>8 <gis! b e'>8 <gis b e'>8 } \times 2/3 {<gis b e'>8 <gis b e'>8 <gis b e'>8 } | % 69
  \times 2/3 {<c, c>8 <a c' e'> <a c' e'>} \times 2/3 {<a c' e'> <a c' e'> <a c' e'>}
  \times 2/3 {<cis, cis> <g bes e'> <g bes e'>} \times 2/3 {<g bes e'> <g bes e'> <g bes e'>} | % 70
  \times 2/3 {<d, d>8 <g b d'> <g b d'>} \times 2/3 {<g b d'> <g b d'> <g b d'>} 
  \times 2/3 {<d, d>8 \sustainOn <fis a c' d'>8 <fis a c' d'>8} 
  \times 2/3 {<fis a c' d'>8 <fis a c' d'>8 <fis a c' d'>8 \sustainOff} | % 71
  <g,, g,>4 <g b d'>4 <g b d'>4 r4 | %72
  fis2 e2 | % 73
  c2 b,4 dis4 | % 74
  e2 a,4 c4 | % 75
  b,4 r4 b4 a4 | % 76
  g4 fis 4 e4 dis4 | % 77
  e4 cis!4 d4 c4 | % 78
  b,4 a,4 g,4 fis,4 | % 79 
  g, e, fis, e! | % 80
  d! cis! b, ais, | % 81
  b, a,! g, fis, | % 82
  e, e, <e, e> <e, e> | % 83
  <fis, fis> <fis, fis> <fis, fis> <fis, fis> | % 84
  <g, g> <fis, fis> <eis, eis> <eis, eis> | % 85
  <fis, fis> r <fis, fis> r | % 86 
  <g, g> <fis, fis> <eis,eis> <eis, eis> | % 87
  <fis, fis> r <fis, fis> r | % 88 
  <b, b> r r2 | % 89
  \repeat tremolo 8 { b,,32(\sustainOn  b,) } \repeat tremolo 8 { b,,32(  b,) } | % 90
  \repeat tremolo 8 { b,,32( b,) } \repeat tremolo 8 { b,,32(  b,) \sustainOff} | %91
  <b,, b, d fis>1 \bar "|." % 92
}

