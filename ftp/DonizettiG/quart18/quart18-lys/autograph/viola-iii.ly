violaThirdMov = \notes \relative e {
    \key e \major
    \clef alto

    e4-\f
    \repeat volta 2 {
	| \repeat "percent" 3 { e r e }
          \property Score.currentBarNumber= #4
        | e r a
	| gis( )e8 r a4
	| gis( )e8 r cis'4
	| b( )gis8 r a4
	| a2. ~ % [R] b?
	| a ~   % [R] Ditto

% 10
	| a     % [R] Ditto
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
        | \repeat unfold 3 { r2. } % [R] Better: R2.
	| r4 r b(
	| ais2 )a4
	| gis!2( g4
	| fis2 )f4
	| e( )g f

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
	| \repeat "percent" 2 { r4 c ~ c8 r }
	  \property Score.currentBarNumber = #46
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
	| b!2. % [R] c2. ?
	| \lowerText cis!-\cresc
	| d
	| )dis

% 59
	| \repeat "percent" 4 { e4 r e, } % [R] This repeat is strange...
          \property Score.currentBarNumber = #63
	| e4 r a
	| gis( )e8 r a4
	| gis( )e8 r cis'4
	| b( a )gis
	| \repeat "percent" 4 { d'-\f r d, } % [R] Ditto
          \property Score.currentBarNumber = #71

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
        | \repeat "percent" 9 { s4 % [R] Better: r4
                                fis-\p fis }
          \property Score.currentBarNumber = #104
        | r fis fis
	| \repeat "percent" 2 { r cis' cis }
          \property Score.currentBarNumber = #106
        | r fis, fis
	| r ais ais
	| r <eis b'> <eis b'>

% 110
	| r <fis dis'> <fis dis'>
	| \repeat "percent" 8 { r <fis b> <fis b> }
          \property Score.currentBarNumber = #119
	| r <gis b> <gis b>
	| r <gis b> <gis b>
	| \repeat "percent" 4 { r dis dis }
          \property Score.currentBarNumber = #125
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

        | \repeat "percent" 3 { r dis' dis }
          \property Score.currentBarNumber = #131

% 131
	| \repeat "percent" 2 { r ais ais }
          \property Score.currentBarNumber = #133
	| \repeat "percent" 2 { r dis dis }
          \property Score.currentBarNumber = #135
	| \repeat "percent" 2 { r <gis, dis'> <gis dis'> }
          \property Score.currentBarNumber = #137
	| \repeat "percent" 2 { r <gis cis> <gis cis> }
          \property Score.currentBarNumber = #139
	| \repeat "percent" 2 { r <fis cis'> <fis cis'> }
          \property Score.currentBarNumber = #141

% 141
	| \repeat "percent" 2 { r <fis b> <fis b> }
          \property Score.currentBarNumber = #143
        | b2. \< ~
	| \! b2 \> \! d4
	| cis r r
	| r2. % [R] Better: R2.
	| \repeat "percent" 4 { r4 fis, fis }
          \property Score.currentBarNumber = #151

% 151
	| \repeat "percent" 2 { r gis gis }
          \property Score.currentBarNumber = #153
        | r g g
	| r <g d'> <g d'>
	| \repeat unfold 2 { r <fis dis'!> <fis dis'> }
	| r <fis-\f dis> <fis dis>
	| r <fis dis> <fis dis>
	| \repeat "percent" 2 { <fis e'> <fis e'> <fis e'> }
          \property Score.currentBarNumber = #161

	  % [R] First alternative
% 161
	    | <fis4 b> r r
	    | R2.

	  % [R] Second alternative

	    | <fis4 dis'> r

    \bar "||"
}
