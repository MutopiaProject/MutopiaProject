violinIIThirdMov = \notes \relative e' {
    \key e \major
    \clef violin

    e4-\f

    \repeat volta 2 {
	| \repeat "percent" 3 { e r e }
	  \property Score.currentBarNumber = #4
        | e2. ~
	| e ~
	| e ~
	| e2 e4
	| dis r r
	| r2. % [R] Better: R2.

% 10
	| r4 r b'
	| b( )cis ais
	| b r r
	| e,2. ~
	| e ~
	| e
	| dis4( )fis dis
	| e2.
	| dis
	| <cis e>
    }

    \alternative {
        {
% 20
	    | <b4 dis> r e
	}

	{
	    | dis4 r b
	}
    }

    \repeat volta 2 {
        | \repeat "percent" 6 { b4 r b }
	  \property Score.currentBarNumber = #28
	| b4 r b
	| c( )e d

% 30
	| c2. ~
	| c4 e( )d
	| c2.
	| r4 as'( )g
	| f2.
	| e8 r e4( d
	| )c g'( f
	| )e8 r e4( )d
	| c2.
	| r4 fis( )g

% 40
	| a2. ~
	| a4 gis!( )a
	| ais2.
	| b8 r c4 ~ c8 r
	| \repeat "percent" 2 { r4 c ~ c8 r }
	  \property Score.currentBarNumber = #46
	| r4 cis!2(->
	| )b8 r r4 c4(
	| )b8 r r4 e(
	| )dis8 r-\cresc r4 cis!(

% 50
	| )b8 r r4 e(
	| )dis8 r r4 r
	| r r b,(
	| )c r r
	| r r b(
	| )c2.(
	| cis!-\cresc
	| d
	| )dis!

% 59
	| \repeat "percent" 4 { e4 r e }
	  \property Score.currentBarNumber = #63
	| e2. ~
	| e ~
	| e ~
	| e
	| \repeat "percent" 4 { d4-\f r d }
	  \property Score.currentBarNumber = #71

% 71
	| d4 r r
	| c2.(
	| )b2 b'4
	| a2.
	| g ~
	| g2 f4
	| e d c
	| c r <b-\f a'>
	| <b gis'!> r c' ~

% 80
	| c r c ~
	| c r ais(
	| )b r <fis! dis'!>
	| <gis e'> r r
	| a2.-\p ~
	| a ~
	| a
	| gis4( )b gis
	| dis2.
	| cis

% 90
	| dis
	| e4 r <b-\f a'>
	| <b gis'> r e
    }

    \alternative {
        {
	    | e4 r r
	}

	{
	    | e r r
	}
    }

    % Trio
    \break
    \key b \major

    \repeat volta 2 {
        | \repeat "percent" 9 { r4 <b-\p dis> <b dis> }
	  \property Score.currentBarNumber = #104

% 104
	| r4 <b dis> <b dis>
	| \repeat "percent" 2 { r <b e> <b e> }
	  \property Score.currentBarNumber = #107
	| \repeat "percent" 2 { r <cis e> <cis e> }
	  \property Score.currentBarNumber = #109
	| r <b gis'> <b gis'>

% 110
	| r <b fis'> <b fis'>
	| \repeat "percent" 8 { r <b dis> <b dis> }
	  \property Score.currentBarNumber = #119
	| r <b gis'> <b gis'>
	| r <b gis'> <b gis'>
	| \repeat "percent" 2 { r <cis fisis> <cis fisis> }
	  \property Score.currentBarNumber = #123
	| \repeat "percent" 2 { r <b gis'> <b gis'> }
	  \property Score.currentBarNumber = #125
    }

    \alternative {
        {
	    | fisis'2.(
	    | )fis!4 r r
	}

	{
	    | r4 <ais fisis'> <ais fisis'>
	}
    }

        | \repeat "percent" 3 { r4 <ais fisis'> <ais fisis'> }
	  \property Score.currentBarNumber = #131
        | \repeat "percent" 2 { r4 <cis fisis> <cis fisis> }
	  \property Score.currentBarNumber = #133
        | \repeat "percent" 2 { r4 <bis gis'> <bis gis'> }
	  \property Score.currentBarNumber = #135
        | \repeat "percent" 2 { r4 <gis fis'> <gis fis'> }
	  \property Score.currentBarNumber = #133
        | r <gis eis'> <gis eis'>
        | r <gis e'> <gis e'>
	| \repeat "percent" 2 { r <a e'> <a e'> }
	  \property Score.currentBarNumber = #141

% 141
        | r4 <b d> <b d>
	| r4 <b d> <b d>
	| d2. ~
	| d2 b4
	| ais r r
	| r2. % [R] Better: R2.
	| \repeat "percent" 3 {
             r4 <b dis> % [R] Better to place a cautionary accidental to dis
             <b dis>
          }
	  \property Score.currentBarNumber = #150

% 150
        | r <b dis> <b dis>
	| \repeat "percent" 2 { r <b e> <b e> }
	  \property Score.currentBarNumber = #153
	| \repeat "percent" 2 { r <b eis> <b eis> }
	  \property Score.currentBarNumber = #155
	| r <b fis'> <b fis'>
	| r <b fis'> <b fis'>
	| r <b-\f fis'> <b fis'>
	| r <b fis'> <b fis'>

% 159
	| \repeat "percent" 2 { <ais ais'> <ais ais'> <ais ais'> }
	  \property Score.currentBarNumber = #161

	  % [R] First alternative

	    | <dis4 b'> r r
	    | R2.

	  % [R] Second alternative

	    | <dis4 b'> r

    \bar "||"
}
