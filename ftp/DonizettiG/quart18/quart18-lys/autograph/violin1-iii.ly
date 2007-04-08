violinIThirdMov = \notes \relative e' {
    \key e \major
    \clef violin

    \smartTupletBracket
    %\property Voice.tupletSpannerDuration = #(make-moment 1 4)

    e4-\f

    \repeat volta 2 {
        | \repeat "percent" 3 { e r e }
	  \property Score.currentBarNumber = #4
	| e r cis'
	| b( )e,8 r cis'4
	| b( )e,8 r a4
	| gis( )e8 r cis'4
	| fis, r gis'
	| fis( )b,8 r gis'4

% 10
	| fis( )b,8 r fis'4 % [R] A dis4 would avoid a dissonant chord
        | dis( )e cis
	| b r b
	| c( )gis' % [R] A g would be "better"
          fis
        | c( )gis' fis
	| c( )gis' fis
	| b,2 b4
	| cis!( )gis'! fis
	| bis,( )gis' fis
	| cis( )gis'! fis
    }

    \alternative
    {
        {
	    | <b,4 a'!> r e,
	}
        {
	    | b, r b
	}
    }

    \repeat volta 2 {
        | \repeat "percent" 6 { b, r b }
          \property Score.currentBarNumber = #28
	| b r b
	| c2.-\pp ~

% 30
        | c4 \< e( )f
	| \! g2. ~
	| g4 e'( )c
	| b2. ~
	| b4 a( )g
	| g2. ~
	| g4 g,( )b
	| c2. ~
	| c4 e( )f
	| g2. ~

% 40
        | g4 e( )fis!
	| g2. ~
	| g4 fis!( )e
	| dis8 r r4 e(-\p
	| )dis! r e(
	| )dis8 r r4 e4(
	| )dis8 r r4 e(
	| )dis8 r a'!4 ~ a8 r
	| r4 a ~ a8 r

% 49
        | \repeat "percent" 2 { r4 <a,4-\cresc a'> ~ <a8 a'> r }
          \property Score.currentBarNumber = #51
        | r4 r <b,-\f b'> ~
	| <b b'> r r
	| r r <b b'> ~
	| <b b'> r r
	| r r <b b'> ~
	| <b b'> r <b b'> ~
	| <b b'> r <b b'> ~
	| <b b'> r <b b'>

% 59
        | \repeat "percent" 4 { e r e }
	  \property Score.currentBarNumber = #63
        | e r cis'
	| b( )e,8 r cis'4
	| b( )e,8 r a4
	| gis( fis )e
	| \repeat "percent" 4 { d-\f r d }
          \property Score.currentBarNumber = #71

% 71
        | d2. ~
	| d4 e fis
	| g a b ~
	| b cis! dis!
	| e fis g ~
	| g( a )b
	| \raiseText c-\f-\cresc \< d e
	| f \! r <fis,,!-\f dis'>
	| <gis! e'> r g'

% 80
        | f( )c8 r gis'4 % [R] Probably g'4
	| f( )c8 r e4
	| dis!( )b8 r <dis4 b'>
	| e r e-\p
	| \repeat "percent" 3 { f c' b }
	  \property Score.currentBarNumber = #87
	| e,2 e4
	|fis!( )cis'! b
	| eis,( )cis' b-.

% 90
        | fis( )cis' b-.
	| e, r <fis,-\f dis'>
	| <gis e'> r e
    }

    \alternative
    {
        {
	    | e4 r b'
	}
        {
	    | e r r
	}
    }

    \bar "||"
    \break

    % Trio

    \key b \major

    \repeat volta 2
    {
        | fis'2.-\p \( ~
	| fis2 eis4
	| gis2.(->
	| \) )fis4 r r
	| dis2. \( ~

% 100
        | dis2 cisis4
	| e2.(
	| \) )dis4 r r
	| b2.( ~
	| b4 cis )dis
	| e2.( ~
	| e4 fis gis
	| )gis2. ~
	| gis4 fis( e
	| cisis2.

% 110
        | )dis4 r fis, \(
	| fis'2. ~
	| fis2 eis4
	| gis2.(
	| \) )fis4 r fis, \(
	| dis'2. ~
	| dis2 cisis4
	| e2.(
	| \) )dis4 r r
	| dis2. ~

% 120
	| dis4( cis b
	| )ais2. ~
	| ais4( b )cis
	| dis2. ~
	| dis4( \< cis b
    }

    \alternative
    {
        {
	    | \! ais2.
	    | )ais4 gis fis
	}
	{
	    | ais2. ~
	}
    }

        | ais4 dis( )dis
	| ais2. ~

% 130
	| ais4 dis( )dis
	| dis2. ~
	| dis4 eis( )fisis
	| gis2. ~
	| gis4 a( )gis
	| dis'( cis )bis
	| a( gis )fis
	| fis2( )eis4
	| e! r r
	| cis2. ~

% 140
	| cis4 bis( )cis
	| d2. ~
	| d4 \< cis( \! )b
	| b'( \> )ais \! g
	| g( )fis eis
	| fis( eis )fis
	| eis( fis )eis
	| fis2.( ~
	| fis2 eis4
	| gis2.

% 150
	| )fis
	| \raisePhrasingSlur b \( ~
	| b2 ais!4
	| cis2.(
	| \LowerText \) )b-\cresc \<
	| \! dis2. \( ~
	| dis2 cisis4
	| e2.(-\f
	| \) )dis
	| e4( cis )ais

% 160
	| fis( e )cis


	  % [R] First alternative

	    | b2. ~
	    | b4( cis )cisis

	  % [R] Second alternative
	    | b4 r


    \bar "||"
}
