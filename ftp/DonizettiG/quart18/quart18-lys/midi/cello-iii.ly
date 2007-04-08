celloThirdMov = \notes \relative e, {
    \key e \major
    \clef bass

    e4-\f

    \repeat volta 2 {
	| \repeat unfold 3 { e r e }
        | r4 r r
	| R2. % [E]
	| R2. % [E]
	| R2. % [E]
	| r4 r e''
	| dis4( )b8 r e4

% 10
	| dis( )b8 r gis4
	| fis2.
	| b4( )fis b
	| ais2. ~ % [R] The source text is unreadable
	| ais ~
	| ais
	| b4 r b,
	| fis2.(
	| fis'
	| fis,
    }

    \alternative {
        {
	    | )b4 r e,
	}
	
	{
	    | b4 r b'(
	}
    }

    \repeat volta 2 {
        | ais'2 )a4
	| gis!2( g4
	| fis2 e4
	| )dis!4 r r
	| R2. % [E]
	| r4 r e,(
	| dis2 )d4
	| c2.-\pp

% 30
	| c'
	| c, % [E]
	| c'
	| c,
	| c'
	| c,
	| c'
	| c,
	| c'
	| c,

% 40
	| c'
	| c,
	| c'(
	| )b4 r r
	| R2. % [E]
	| r4 c' ~ c8 r
	| r4 cis!2(->
	| )b8 r r4 r
	| r r c4(
	| )b8 r r4 r

% 50
	| r4 r cis!4(
	| )b8 r r4 r
	| r r b,
	| c r r
	| r r b
	| c2.(
	| )cis!
	| d(
	| )dis!
	| e4 r e,

% 60
	| \repeat unfold 3 { e r e }
        | e r r
	| R2. % [E]
	| R2. % [E]
	| R2. % [E]
	| \repeat unfold 4 { <d4-> d'> r <d d'> }

% 71
	| d'4 r r
	| d2.(
	| )g4 r r
	| b,2.
	| e
	| d
	| c4 b c
	| a-\f r b
	| <e, e'> r r

% 80
	| r r e''(
	| )f r c(
	| )b r b,
	| <e, e'> r r
	| dis''!2.-\p ~
	| dis ~
	| dis(
	| )e4r e,
	| b2.
	| b

% 90
	| b
	| e4 r b-\f
	| e r e,
    }

    \alternative {
        {
	    | e4 r b''
	}

	{
	    | e r r
	}
    }

    % Trio

    \bar "||"
    \key b \major

    \repeat volta 2 {
        | \repeat unfold 10 { b'4-\p r r }
	| \repeat unfold 2 { cis4 r r }
	| ais r r
	| fis r r
	| b r r

% 110
	| b r r
        | \repeat unfold 8 { b4-\p r r }
        | gis4 r r

% 120
	| gis r r
	| cis r r
	| dis, r r
	| gis r r
	| b r r
    }

    \alternative {
        {
	    | dis2.(
	    | )cis
	}

	{
	    | dis4 r r
	}
    }

    | \repeat unfold 3 { dis4 r r }

    \repeat volta 2 {
% 131
        | \repeat unfold 2 { ais!4 r r }
        | \repeat unfold 2 { gis4 r r }
        | \repeat unfold 2 { bis4 r r }
        | \repeat unfold 2 { cis4 r r }
	| fis4 r r

% 140
        | \repeat unfold 3 { fis,4 r r }
	| g2. ~ g
	| fis4 r r
	| R2. % [E]
        | \repeat unfold 4 { b4 r r }

% 151	
        | \repeat unfold 2 { gis!4 r r }
        | g4 r r
        | g4-\cresc r r
	| fis4 r r
	| fis r r
	| fis-\f r r
	| fis r r
        | \repeat unfold 2 { fis fis fis}
    }

    \alternative { % [E]
        {
	    | b4 r r
	    | R2.
	}

	{
	    | b4 r
        }
    }

    \bar "||"
}
