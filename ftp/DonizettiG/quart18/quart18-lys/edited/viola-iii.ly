violaThirdMov = \notes \relative e {
    \key e \major
    \clef alto

    e4-\f
    \repeat volta 2 {
	| \repeat unfold 3 { e r e }
        | e r a
	| gis( )e8 r a4
	| gis( )e8 r cis'4
	| b( )gis8 r a4
	| b2. ~ % [E] The autograph had a dissonance with Violin I
	| b ~   % [E]

% 10
	| b     % [E]
	| b4( )ais e'
	| dis r r
	| c2. ~
	| c ~
	| c
	| b4( )dis! b
	| ais2.
	| fis
	| ais
    }

    \alternative
    {
        {
% 20
            | <fis4 b> r e
	}

	{
	    | b4 r r
	}
    }

    \repeat volta 2 {
        | \repeat unfold 3 { R2. } % [E]
	| r4 r b(
	| ais2 )a4
	| gis!2( g4
	| fis2 )f4
	| e(-\pp % [E]
          )g f

% 30
	| e2. ~
	| e4 g( )f
	| e2.
	| r4 f'( )e
	| d2.
	| c8 r g4( f
	| )e e'( d
	| )c8 r g4( )f
	| e2.
	| r4 fis!( )g

% 40
	| a2. ~
	| a4 gis!( )a
	| ais2.
	| b8 r c4 ~ c8 r
	| \repeat unfold 2 { r4 c ~ c8 r }
	| r4 cis!2(->
	| )b8 r r4 e4(
	| )dis8 r r4 fis4 ~
	| fis8 \lowerText r-\cresc r4 e(

% 50
	| )dis!8 r r4 fis ~
	| fis8 r r4 r
	| r r b,4(
	| )c r r
	| r r b!(
	| c!2. % [E]
	| \lowerText cis!-\cresc
	| d
	| )dis

% 59
        | e4 r e,
	| \repeat unfold 3 { e r e } % [E]
	| e4 r a
	| gis( )e8 r a4
	| gis( )e8 r cis'4
	| b( a )gis
	| d'-\f r d,
	| \repeat unfold 3 { d r d } % [E]

% 71
	| d4 r r a'2.
	| g2( )g'4
	| fis2.
	| e
	| b4( a )g
	| g g g
	| a r fis!-\f
	| e r bes''(
	| )a r bes(

% 80
	| )a r fis! ~
	| fis r <b, b'>
	| <b b'> r r
	| f'2.-\p ~
	| f ~
	| f
	| e4( )gis e
	| a,2.
	| fis

% 90
	| a
	| gis4 r <b-\f fis'>
	| <b e> r e,
    }

    \alternative
    {
        {
	    | e4 r r
	}

	{
	    | e4 r r
	}
    }

    % Trio

    \break
    \bar "||"
    \key b \major

    \repeat volta 2 {
        | \repeat unfold 9 { r4 % [E]
                             fis-\p fis }
        | r fis fis
	| \repeat unfold 2 { r cis' cis }
        | r fis, fis
	| r ais ais
	| r <eis b'> <eis b'>

% 110
	| r <fis dis'> <fis dis'>
	| \repeat unfold 8 { r <fis b> <fis b> }
	| r <gis b> <gis b>
	| r <gis b> <gis b>
	| \repeat unfold 4 { r dis dis }
    }

    \alternative
    {
        {
            | dis'2.(
	    | <fis, )e'!>
	}

	{
            | r4 dis' dis
	}
    }

    | \repeat unfold 3 { r dis' dis }

    \repeat volta 2 {
% 131
	| \repeat unfold 2 { r ais ais }
	| \repeat unfold 2 { r dis dis }
	| \repeat unfold 2 { r <gis, dis'> <gis dis'> }
	| \repeat unfold 2 { r <gis cis> <gis cis> }
	| \repeat unfold 2 { r <fis cis'> <fis cis'> }

% 141
	| \repeat unfold 2 { r <fis b> <fis b> }
        | b2. \< ~
	| \! b2 \> \! d4
	| cis r r
	| R2. % [E]
	| \repeat unfold 4 { r4 fis, fis }

% 151
	| \repeat unfold 2 { r gis gis }
        | r g g
	| r <g-\cresc d'> <g d'>
	| \repeat unfold 2 { r <fis dis'!> <fis dis'> }
	| r <fis-\f dis> <fis dis>
	| r <fis dis> <fis dis>
	| \repeat unfold 2 { <fis e'> <fis e'> <fis e'> }
    }

    \alternative { % [E]
        {
% 161
	    | <fis4 b> r r
	    | R2.
        }

	{
	    | <fis4 dis'> r
        }
    }

    \bar "||"
}
