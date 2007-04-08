violinIIThirdMov = \notes \relative e' {
    \key e \major
    \clef violin

    e4-\f

    \repeat volta 2 {
	| \repeat unfold 3 { e r e }
        | e2. ~
	| e ~
	| e ~
	| e2 e4
	| dis r r
	| R2. % [E]

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
        | \repeat unfold 6 { b4 r b }
	| b4 r b
	| c(-\pp % [E]
          )e d

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
	| \repeat unfold 2 { r4 c ~ c8 r }
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
	| \repeat unfold 4 { e4 r e }
	| e2. ~
	| e ~
	| e ~
	| e
	| \repeat unfold 4 { d4-\f r d }

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
	| cisis % [E] In the autograph, Cis

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
        | \repeat unfold 9 { r4 <b-\p dis> <b dis> }

% 104
	| r4 <b dis> <b dis>
	| \repeat unfold 2 { r <b e> <b e> }
	| \repeat unfold 2 { r <cis e> <cis e> }
	| r <b gis'> <b gis'>

% 110
	| r <b fis'> <b fis'>
	| \repeat unfold 8 { r <b dis> <b dis> }
	| r <b gis'> <b gis'>
	| r <b gis'> <b gis'>
	| \repeat unfold 2 { r <cis fisis> <cis fisis> }
	| \repeat unfold 2 { r <b gis'> <b gis'> }
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

    | \repeat unfold 3 { r4 <ais fisis'> <ais fisis'> }

    
    \repeat volta 2 {
% 131
        | \repeat unfold 2 { r4 <cis fisis> <cis fisis> }
        | \repeat unfold 2 { r4 <bis gis'> <bis gis'> }
        | \repeat unfold 2 { r4 <gis fis'> <gis fis'> }
        | r <gis eis'> <gis eis'>
        | r <gis e'> <gis e'>
	| \repeat unfold 2 { r <a e'> <a e'> }

% 141
        | r4 <b d> <b d>
	| r4 <b d> <b d>
	| d2. ~
	| d2 b4
	| ais r r
	| R2. % [E]
	| \repeat unfold 3 {
             r4 <b dis!> % [E]
             <b dis>
          }

% 150
        | r <b dis> <b dis>
	| \repeat unfold 2 { r <b e> <b e> }
	| r <b eis> <b eis>
	| r <b-\cresc eis> <b eis>
	| r <b fis'> <b fis'>
	| r <b fis'> <b fis'>
	| r <b-\f fis'> <b fis'>
	| r <b fis'> <b fis'>

% 159
	| \repeat unfold 2 { <ais ais'> <ais ais'> <ais ais'> }
    }

    \alternative {
        {
	    | <dis4 b'> r r
	    | R2.
	}

	{
	    | <dis4 b'> r
        }
    }

    \bar "||"
}
