\version "2.16.0"

rightHandSecondMov =  \relative c'' {
    \key bes \major
    \time 3/4

    \noTupletBracket

    \repeat volta 2 {
	<<
	    { d2. ~ |  d8[( c f es d  c)] } \\
	    { <f, bes>2. | g }
	>>
	| <d f bes>4 <d f bes>( <f a c>)
	|
	<<
	    {
		\voiceOne <a c>2(  <bes d>4)
	    }

	    \new Voice {
		\override NoteHead #'transparent = ##t
		\override NoteColumn #'ignore-collision = ##t
		\voiceOne a2(  bes4)
		\revert NoteColumn #'ignore-collision
	    }

	    \new Voice { \voiceTwo f2. }
	>> \oneVoice
	| <g bes es>2.( ~
	|  es'8[  d) d( f es  d)]
	|  d[( bes d bes es  c)]
	| bes4(  a) f'( ~
	| f  e) bes'( ~

% 10
	| bes  a) \times 2/3 {  d8[( bes  g)] }
	|
	<<
	    { f2( \voiceOne  a8[ g] | \oneVoice  f4) }
	    \context Voice = "x" { s2 \voiceTwo e4 }
	>> r4 r
    }

    \repeat volta 2 {
	<<
	    { \voiceOne <as, c>4 c2 | c2. }
	    \context Voice = "x" { \voiceThree s4 as4 g | f2 fis4 }
	    \context Voice = "y" { \voiceTwo d4 d2 | d2. }
	>> \oneVoice
	| <es g c>4 <es g c>( <g b d>)
	<<
	    {
		\voiceOne <a c>2(  <bes d>4)
	    }

	    \new Voice {
		\override NoteHead #'transparent = ##t
		\override NoteColumn #'ignore-collision = ##t
		\voiceOne a2(  bes4)
		\revert NoteColumn #'ignore-collision
	    }

	    \new Voice { \voiceTwo f2. }
	>> \oneVoice
	| es'4( e <d f>)
	|
	<<
	    { f4.( fis8  g4) } \\
	    { d2(  es4) }
	>>
	| r4 r bes'(

% 20
	| fis g  d)
	| es8 r f! r g r
	| d4(  c) d,(
	|  es8[ d] es4 e
	|  f8[ e] f4 d
	|  es8[ d] es4 e
	| f4  c)
	<<
	    {
		a'4 ~ | a( g  fis) ~ | fis(  g8[ a]  bes4) |
		 b8[( c f es d  c)]
	    }
	    \\
	    {
		d,4 ~ | d2. ~ | d | g
	    }
	>>

% 30
	| <d bes'!>2 r4
	| R2.*2
	| r4 r <a' c>( ~
	| <a c> <g bes>) << es' \\ f, >>
	| <f d'>8[( f' es d c  bes)]
	| g4.(  es8[ d  c)]
	| d4 r bes''4( ~
	| bes  a) es( ~
	| es \times 2/3 {  d8[ es f] } \times 2/3 {  g[ es c] }
	|  bes2)( << { d8[ c] } \\ a4 >>
	|  bes4) r r
    }

    \repeat volta 2 {
	R2.
	| r4 r  fis8.[(^\trill e32 fis]
	|  g8) r <fis a> r <g bes> r
	| << { a4(  d) } \\ fis,2 >> r4
	| R2.
	| r4 r  fis8.[(^\trill e32 fis]
	|  g8) r <fis a> r <g bes> r
	|
	<<
	    { c4( des  c) | c } \\
	    { a4 bes2 | a4 }
	>> r4  a8.[(^\trill g32 a]

% 51
	|  bes8) r <a c> r <bes d> r
	|
	<<
	    { e4( f  e) | e } \\
	    { cis4 d2 | cis4 }
	>> r4  cis8.[(^\trill b32 cis]
	|  d8) r <cis e> r <d f> r
	|
	<<
	    { a'4( bes! gis | a fis g! | es  f!) } \\
	    { r4 d e | cis d bes | c! as }
	>> <g b d>8 r
	| <g c es> r <f a! c> r <f bes! d> r
	| <es g bes> r <es a c> r <d fis a> r

% 60
	| <g bes>4 g'(  f!)
	| \appoggiatura f16 e!4(  d) <g, a>
	| <f a> r r
    }

    \repeat volta 2 {
	R2.
	| \times 2/3 {  g8[( c es] } \noTupletNum \times 2/3 {  g[ as g]
           f![ g f] }
	| \times 2/3 {  es[ f g]  f[ es d]  es[ d  c)] }
	| R2.
	| \stemDown \times 2/3 {  f,8[( bes des]  f[ ges f]  es[ f es] }
	| \times 2/3 {  d![ es f]  es[ d c]  d[ c  bes)] } \stemNeutral
	| r4
	<<
	    {  <es g>2 ~ | <es g>4 <d fis>2( | <d g>4) <fis, c'> <g bes> } \\
	    { <g bes>2 | a2. | g4 d2 }
	>>

% 72
	| <g bes>4( <fis a>) r4
	| R2.
	| r4 r \slurDown  fis8.[(^\trill e32 fis]
	|  g8) \slurNeutral r <fis a> r <g bes> r
	|
	% In this bar there is only one slur (unlike bar #43), so
	% things are simpler.
	<< { a4(  d) } \\ fis,2 >> r4
	| R2.*2
	| <a fis'>4( <bes g'> <gis eis'>)

% 80
	| <a fis'>2. ~
	| \tupletNum \times 2/3 {  fis'8[ a( c] } \noTupletNum \times
          2/3 {  es[ c bes!]  a[ g fis] }
	| \times 2/3 {  g[ d bes']  a[ d, c']  bes[ d,  d')] }
	| \times 2/3 {  fis,[( a c]  es[ c bes!]  a[ g fis] }
	| \times 2/3 {  g[ d bes']  a[ d, c']  bes[ g  bes)] }
	|
	<<
	    { d4( es cis | d b c! | as  bes!) } \\
	    { r4 g( a | fis g es! | f!  des) }
	>> <c e g>8 r
	| <c f as!> r <bes d! f> r <bes es! g> r
	| <as c es> r <as d f> r <g b d> r

% 90
	| <fis c' es>2 <g bes! d>4
	|
	<<
	    { <as c>4 <g bes> <fis a> } \\
	    { es4 d2 }
	>>
	| <g, cis g'>2.
	| <bes d g>4 r <c! d>
	| <bes d> r r
    }

    R2.
    | <es f c'>4 r r
    | R2.
    | r4 r \tupletNum \times 2/3 {  es''8[( c bes] } \noTupletNum
    | \times 2/3 {  a[ bes c] }  f,4) \times 2/3 {  es'8[( c bes] }

% 100
    | \times 2/3 {  a[ bes c] }  f,4) \times 2/3 {  es'8[( c bes] }
    | \times 2/3 {  a[ bes c] }  f,4) r
    | R2.
    <<
	{ d2. ~ |  d8[( c f es d  c)] } \\
	{ <f, bes>2. | g }
    >>
    | <d f bes>4 <d f bes>( <f a c>)
    |
    <<
	{
	    \voiceOne <a c>2(  <bes d>4)
	}

	\new Voice {
	    \override NoteHead #'transparent = ##t
	    \override NoteColumn #'ignore-collision = ##t
	    \voiceOne a2(  bes4)
	    \revert NoteColumn #'ignore-collision
	}

	\new Voice { \voiceTwo f2. }
    >> \oneVoice
    | <g bes es>2.( ~
    |  es'8[  d) d( f es  d)]
    |  d[( bes d bes es  c)]

% 110
    | bes4(  a) f'( ~
    | f  e) bes'( ~
    | bes  a) \times 2/3 {  d8[( bes  g)] }
    |
    <<
	{ f2( \voiceOne  a8[ g] | \oneVoice  f4) }
	\context Voice = "x" { s2 \voiceTwo e4}
    >> r4 r
    |
    <<
	{ \voiceOne <as c>4 c2 | c2. }
	\context Voice = "x" { \voiceThree s4 as4 g | f2 fis4 }
	\context Voice = "y" { \voiceTwo d4 d2 | d2. }
    >> \oneVoice
    | <es g c>4 <es g c>( <g b d>)
    <<
	{
	    \voiceOne <a c>2(  <bes d>4)
	}

	\new Voice {
	    \override NoteHead #'transparent = ##t
	    \override NoteColumn #'ignore-collision = ##t
	    \voiceOne a2(  bes4)
	    \revert NoteColumn #'ignore-collision
	}

	\new Voice { \voiceTwo f2. }
    >> \oneVoice
    | es'4( e <d f>)

% 120
    | << { f4.( fis8  g4) } \\ { d2(  es4) } >>
    | r4 r bes(
    | fis g  d)
    | es8 r f! r g r
    | d4(  c) d,(
    |  es8[ d] es4 e
    |  f8[ e] f4 d
    |  es8[ d] es4 e
    | f4  c)
    <<
	{
	    a'4 ~ | a( g  fis) ~ | fis(  g8[ a]  bes4) |
	     b8[( c f es d  c)]
	}
	\\
	{
	    d,4 ~ | d2. ~ | d | g
	}
    >>

% 132
    | <d bes'!>2 r4
    | R2.*2
    | r4 r <a' c>( ~
    | <a c> <g bes>) << es' \\ f, >>
    | <f d'>8[( f' es d c  bes)]
    | g4.(  es8[ d  c)]
    | d4 r bes''4( ~

% 140
    | bes  a) es( ~
    | es \times 2/3 {  d8[ es f] } \times 2/3 {  g[ es c] }
    |  bes2)( << { d8[ c] } \\ a4 >>
    |  bes4) r
    <<
	{ bes'4 ~ | bes(  a) b ~ | b(  c) } \\
	{ f,4( |  es2) <f as>4( | <es g>2) }
    >> \tupletNum \times 2/3 {  g8[( es'  c)] }
    | bes2( << { d8[ c] } \\ a!4 >>
    |  bes4) r r
    | R2.*2

% 150
    | <bes, d>4( <c es> <a c>)
    | bes r r
    | R2.*2
    | <bes d>4( <c es> <a c>)
    | bes r  c8.[(^\trill bes32 c]
    |  d4) r  c'8.[(^\trill bes32 c]
    |  d4) r <c, es f a>
    | <bes d f bes> r r
}
