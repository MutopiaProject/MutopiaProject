violinIFirstMov = \notes \relative e' {
    \key e \minor
    \clef violin

    \noTupletBracket
    \noTupletNum

    \repeat volta 2 {
	e2->-\f c->
	| e ~ \times 2/3 { [e8 dis-. \< e-.] [fis-. g-. a-.] }
	| \times 2/3 { [b-. c-. dis-.] [e-. fis-. \! g-.] } a-.-\p r g-. r
	| e,2(-> )dis4 r
        | c'2->-\f a->
	| c-> ~ \times 2/3 { [c8 b-. a-.] [g-. fis-. e-.] }
	| \times 2/3 { [dis-. e-. fis-.] [g-. a-. b-.] } a-\p r g r
	| fis4 r \times 2/3 { r8 [ais,-\f b] [cis d dis] }
	| e2-> c->

% 10
	| e ~ \times 2/3 { [e8 dis-. e-.] [fis-. g-. a-.] }
	| \times 2/3 { [b-. cis-. dis-.] [e-. fis-. g-.] } a-.-\p r g-. r
	| <c,!2-\f c'!> \RaiseScript e4..-\trill \( [dis32( \) )e]
	| <c!2-\f c'!> \RaiseScript e4..-\trill \( [dis32( \) )e]
	| c'8 r \times 2/3 { \lowerDynamics [f,,-\p f f] [f f f] [f f f] }
	| c'' r \times 2/3 { [f,, f f] [f f f] [f f f] }
	| b' r \times 2/3 { \lowerDynamics [e,,-\p e e] [e e e] [e e e] }
	| b'' r \times 2/3 { \lowerDynamics [ dis,,-\p dis dis]
                             [dis dis dis] [dis dis dis] }
        | <e2-\f e'-> > <e e'-> >
	| e'2. \grace { e8( } [)b'8.( )a16]

% 20
	| a4( [)g8 r16 fis] fis4( [)e8 r16 d]
	| d2( )c8 r \grace { c( } [)c'8.( )b16]
	| b4( [)a8 r16 g16] g4( [)fis8 r16 e]
	| e2( )dis8 r \grace b( [)fis'8.( )e16]
	| e4( [)dis8. fis16] c4( [)b8. a16]
	| a2( )g8 r [b'8.( )a16]
	| a4( [)g8 r16 fis] fis4( [)e8 r16 d]
	| d2( )c8 r [c'8.( )b16]
	| b4( [)a8. g16] g4( [)fis8. e16]
	| e2( )d8 r [a'8.( )g16]

% 30
	| g4( [)fis8 r16 e] e4( [)d8. c16]
	| b4 r r2
	| \times 2/3 { r8 [e'-.-\f d-.] [c-. b-. a-.] 
                       [g-. fis-. e-.] [d-. c-. b-.] }
        | a4 r r2
	| \times 2/3 { r8 [fis''-. e-.] [d-. c-. b-.]
	               [a-. g-. fis-.] [e-. d-. c-.] }
        | b4 r r2
	| \times 2/3 { r8 [g''-. f-.] [e-. d-. c-.] 
                       [b-. a-. g-.] [f-. e-. d-.] }
        | c4 r8. gis'16-\p [b8( )a] r8. gis16
	| [b8( )a] r8. gis16 [b8( )a] r8. gis16
	| b4( [)a8. a16] b4( [)a8. a16]

% 40
	| bes4( [)a8. g!16] bes4( [)a8. g16]
	| <d4-\f d'> r8. cis'16 es4( [)d8 r16 a]
	| c!4( [)bes8. fis!16] a4( [)g8. cis,16]
	| e!4( )d8 r r4 r8. d,16-\p
	| g2( )bes
	| d->-\f bes->
	| d ~ \times 2/3 { [d8 bes( )a] [g-. bes( )c] }
	| \times 2/3 { [d-. bes'( )a] [g-. bes( )c]
          [d-. bes( )a] [g-. bes( )c] }
	| \repeat "percent" 2
          { \times 2/3 { [d-. bes( )c] [d-. bes( )c]
	                 [d-. bes( )c] [d-. bes( )c] } }

% 50
        \property Score.currentBarNumber = #50
        | d8 r d,, r r2
	| R1
	| a''2(-\p )gis
	| a ~ \times 2/3 { [a8 b( a] [g fis )e] }
	| \raiseSlur d4(---\p d-- d-- )d--
	| e2( )d8 r r4
	| a'2( )gis
	| a ~ \times 2/3 { [a8 b( a] [g fis )e] }
	| \raiseSlur d4(---\p d-- d-- )d--
	| e2( )d4 r8. g16

% 60
	| [g8( fis b )a] d, r d r
	| e2( [)d8 d'( b )g]
	| [g( fis b a] [g fis e )d]
	| d r b'2(-> )dis,4
	| e8 r g2(-> )ais,4
	| [b8( cis dis )e] [eis( fis g! )gis]
	| a2( )gis
	| a ~ \times 2/3 { [a8 b( a] [g fis )e] }
	| \raiseSlur d4(---\p d-- d-- )d--
	| e2( )d4 r

% 70
	| a'2( )gis
	| a ~ \times 2/3 { [a8 b( a] [g fis )e] }
	| \raiseSlur d4(---\p d-- d-- )d--
	| <d2-\f d'> fis4.(-> [e16 )fis]
	| <d2 d'> fis4.(-> [e16 )fis]
	| d'2. [fis,,8.(-\trill-\f e32 )fis]
	| e2 e''
	| a,,, a'''
	| \times 2/3 { r8 [g-\f g] [g( )e e] [e( )cis cis] [cis( )bes bes] }
	| \times 2/3 { [bes( )g g] [g( )e e] [e( )cis cis] [cis( )g' g] }

% 80
	| d4 r8. fis16 a4( [)g8 r16 a]
	| c4( [)b8 r16 cis] e4( [)d8. b16]
	| a1-\trill
	| a1-\trill
	| a1-\trill
	| a1-\trill
	| a1-\trill
	| a1-\trill
	| a1-\trill
	| < { a1-\trill } \context Voice=x { s4 \< s2 \! s4 } >
          % [R] It is hard to determine if this crescendo belongs
          %     to Violin I or Violin II

% 90
	| a1-\trill-\cresc % [R] Ditto for the "cresc."
	| a1-\trill
	| a1-\trill
	| g2->-\f e,4.(-> )e8 % [R] Probably ")f8"
	| g2.-> [a8.(-\p )b16]
	| c8 r c r c r c r
	| b2( \raiseScript )e4..-\trill [dis32( )e]
	| a,2( \raiseScript )d4..-\trill [cis32( )d]
	| [d8 b'( a g] [dis e c )a]
	| g2( )a

% 100
	| \lowerText g_#'(italic "rall. poco") ~ 
          \times 2/3 { [g8 b( a] [g fis )e] }
	| d2 \raiseScript d'4..(-\trill [cis32 )d]
	| g,2 ~ \times 2/3 { [g8 b( a] [g fis )e] }
	| d2 \raiseScript d'4..(-\trill [cis32 )d]

	\bar "||"
    }

    \alternative
    {
        {
	    | g,2 \times 2/3 { r8 [fis-. g-.] [a-. b-. c-.] }
	    | e,2 fis
	}
	{
	    | g,4 r r2
	}
    }
    
    r4 r8. fis16 a4( [)g8. cis,16]
    | \raiseScript e4(-> [)d8. ais16] \raiseScript c4(-> [)b8. fis16]
    | g4 r r2

% 110
    | r4 r8. fis'16 a4( [)g8. cis,16]
    | es4( [)d8. a16] c4( [)bes8. a16]
    | a4( )g8 r16 fis' a4( [)g8. cis,16]
    | es4 [d8.( )a16] % [R] A strange slur!
      c4( [)bes8. d,16]
    | es2-\f es'4..( )es16
    | es'2 ~ \times 2/3 { [es8 es d] [c bes as] }
    | \times 2/3 { [g fis g] [bes as f] [es d es] [g f d] }
    | es8 r \times 2/3 { [es,8-\fp es es] [es es es] [es es es] }
    | es' r \times 2/3 { [es,8 es es] [es es es] [es es es] }
    | r4 % [R] Perhaps es'8 r
      \times 2/3 { [es8-\p es es] [es es es] [es es es] }

% 120
    | e'!-\f r \times 2/3 { [e,8-\fp e e] [e e e] [e e e] }
    | f2-\f f'4..(-> )f16
    | f'2 ~ \times 2/3 { [f8 f des] [b c b] } % [R] [f f des] [bes c bes] ?
    | \times 2/3 { [as g as] [c bes g] [f e f] [bes g e] }
    | f-\f r \times 2/3 { f,4.:8-\p f4.: f4.: }
    | f'8 r \times 2/3 { f,4.:8 f4.: f4.: }
    | f'8 r \times 2/3 { f,4.:8 f4.: f4.: }
    | fis'!8 r \times 2/3 { fis,4.:8 fis4.: fis4.: }
    | g2-> \raiseScript g'4..(-> )g16
    | \times 2/3 { r8 [g, a] [bes c d] [e! fis g] [a bes c] }

% 130
    | d4 \< dis \! e2
    | a,4 r <a,4.. a'(> <a16 )a'>
    | \times 2/3 { r8 [a b] [c d e] [fis g % [R] Probably gis
                   a] [b c d] }
    | e4 eis fis!2
    | b,!4 r8. b16 d4( [)c8 r16 gis]
    | \raiseScript b4(-> [)a8 r16 a] \raiseScript c!4(-> [)b8 r16 fis!]
    | \raiseScript a4(-> [)g8 r16 g] \raiseScript b4(-> [)a8 r16 e]
    | \raiseScript g4(-> [)fis8 r16 fis] \raiseScript a4(-> [)g8 r16 e]
    | b4 r8. b16-\p d4( [)c8 r16 gis]
    | b4( [)a8 r16 a] c4( [)b8 r16 fis]

% 140
    | a4( \lowerText [)g8_#'(italic "calando") r16 g] b4( [)a8 r16 e]
    | g4( [)fis8 r16 fis] a4( [)g8 r16 e]
    | b4 r r2
    | r4 b' ~ \times 2/3 { [b8 cis dis] [e g a] }
    | \times 2/3 { [b g( )a] [b g( )a] [b g( )a] [b g( )a] }
    | < \raiseScript b1-\trill 
        \context Voice=x { \once \property Voice.Slur
            \override #'attachment-offset = #'((0.7 . 0) 0 . 1.5)
            \blankNotes b2( b4 b8 b16 )b16 }
	\context Voice=y { s2. s8 \tiny \stemUp \slurDown [a16( )b] } >
    | \times 2/3 { [c!8 a( )b] [c a( )b] [c a( )b] [c a( )b] }
    | < \raiseScript cis1-\trill 
        \context Voice=x { \once \property Voice.Slur
            \override #'attachment-offset = #'((0.7 . 0) 0 . 1.5)
            \blankNotes cis2( cis4 cis8 cis16 )cis16 }
	\context Voice=y { s2. s8 \tiny \stemUp \slurDown [b16( )cis] } >
    | \times 2/3 { [d8 b( )cis] [d b( )cis] [d b( )cis] [d b( )cis] }
    | < dis1-\trill 
	\context Voice=x { s2. s8 \tiny \stemUp \slurDown [cis16( )dis] } >

% 150
    | <e,2 e'> <e, e'>
    | <e' e'> <e, e'>
    | <b'4 b'> r \times 2/3 { r8 [fis'-\f eis] [e dis cis] }
    | b r r4 \times 2/3 { r8 [a' g] [fis dis cis] }
    | \times 2/3 { [b b'-\f a] [g fis e] [d c b] [a g fis] }
    | e2-> c-> e2 ~ \times 2/3 { [e8 dis-. e-.] [fis-. g-. a-.] }
    | \times 2/3 { [b-. c-. dis-.] [e-. fis-. g-.] } a-.-\p r g r
    | e,1(->
    | )dis4 r r2

% 160
    | c'2-> a->
    | c2 ~ \times 2/3 { [c8 b-. a-.] [g-. fis-. e-.] }
    | \times 2/3 { [dis-. e-. fis-.] [g-. a-. b-.] } a-\p r g r
    | fis4 r \times 2/3 { r8 [ais,8 b] [cis d dis] }
    | e2-> c->
    | e2 ~ \times 2/3 { e8 [dis-. e-.] [fis-. g-. a-.] }
    | \times 2/3 { [b-. cis-. dis-.] [e-. fis-. g-.] } a-.-\p r g r
    | \repeat "percent" 2
      { <c,!2-\f c'!> \raiseScript e4..(-\trill [dis32 )e] }
    \property Score.currentBarNumber = #169
    | c'8 r \times 2/3 { [f,,-\p f f] [f f f] [f f f] }

% 170
    | c''8 r \times 2/3 { [f,,-\p f f] [f f f] [f f f] }
    | b'8-\f r \times 2/3 { [e,,8-\p e e] [e e e] [e e e] }
    | b''8 r \times 2/3 { [dis,,8-\fp dis dis] [dis dis dis] [dis dis dis] }
    | <e2->-\f e'> <e-> e'>
    | e'2. \grace e8( [)b'8.(-\p )a16]
    | a4( [)g8 r16 fis] fis4( [)e8 r16 d]
    | d2( )c4 \grace c8( [)c'8.( )b16]
    | b4( [)a8 r16 g] g4( [)fis8 r16 e]
    | e2( )dis8 r \grace b( [)fis'8.( )e16]
    | e4( [)dis8. fis16] c4( [)b8. a16]

% 180
    | a2( )gis8 r \grace b8( [)b'8.( )a16]
    | a4( [)gis8 r16 b] f4( [)e8 r16 d]
    | c4 r r [e8.( )e'16]
    | e4( [)d8. e16] % [R] Maybe [)d8. fis16]
      e4( [)d8. c16]
    | c4( [)b8. d16] g,4 [g8.(-\f )g16]
    | g'2. [g,8.( )g16]
    | g'2. [g,8.( )g16]
    | g'4-> [g,8.( )g16] g'4-> [g,8.( )g16]
    | g'4-> [g,8.( )g16] g'4-> [g,8.( )g16]
    | g'4 r r2

% 190
    | R1
    | d,2( )cis
    | d ~ \times 2/3 { [d8 e( d] [c b )a] }
    | g4(-- g-- g-- )g--
    | c!4 [a8.(-\f )a16] <a4 a'> [a8.( )a16]
    | <a4 a'> [a8.( )a16] <a4 a'> [a8.(-\p )a16]
    | e'2( )dis
    | e2 ~ \times 2/3 { [e8 fis!( e] [d cis )b] }
    | a4(-- a-- a-- )a--
    | d8 r [b8.( )b16] <b4 b'-> > [b8.( )b16]

% 200
    | <b4 b'-> > [b8.( )b16] <b4 b'-> > [b8.( )b16]

    \key e \major
    \bar "||"

    | fis'2( )eis
    | fis2 ~ \times 2/3 { [fis8 gis( fis] [e dis )cis] }
    | b4(-- b-- b-- )b--
    | cis2( )b8 r e4
    | [e8( dis gis )fis] b,4 b
    | cis2( [)b8 b'( gis )e]

% 210
    | [e( dis gis fis] [e dis cis )b]
    | b4 gis'2( )bis,4
    | cis e2( )fisis,4
    | [gis8( ais bis cis] [d dis e )eis]
    | fis2( )eis
    | fis2 ~ \times 2/3 { [fis8 gis( fis] [e dis )cis] }
    | b4(-- \< b-- b-- \! )b--
    | cis2( )b8 r r4
    | fis'2( )eis
    | fis ~ \times 2/3 { [fis8 gis( fis] [e dis )cis] }
    | b4(-- b-- b-- )b--
    | \repeat "percent" 2 { <b2 b'-> > dis4..-\trill \( [cis32( \) )dis] }
      \property Score.currentBarNumber = #220

% 220
    | b'2. [d,,8.(-\trill cis32 )d]
    | cis2 cis''->
    | fis,, fis''->
    | \times 2/3 { r8 [e-\f e] [e( )cis cis] [cis( )ais ais] [ais( )g g] }
    | \times 2/3 { [g( )e e] [e( )cis cis] [cis( )ais ais] [ais( )e' e] }
    | b4 r8. dis16 fis4( [)e8 r16 fisis]
    | a4( [)gis8 r16 ais] cis4( [)b8 r16 gis]
    | fis1-\trill-\p
    | fis-\trill
    | fis-\trill

% 230
    | fis-\trill
    | fis-\trill
    | fis-\trill^#'(italic "cresc. e rinf.")
    | fis-\trill
    | fis-\trill
    | fis-\trill
    | fis-\trill
    | fis-\trill
    | e2-> cis,4..( )dis16
    | e2. \lowerDynamics [fis8.(-\p )gis16]

% 240
    | a8 r a r a r a r
    | gis2 \RaiseScript cis4..-\trill \( [bis32( \) )cis]
    | fis,2-\cresc \RaiseScript b4..-\trill % [R] A cautionary natural here?
      \( [ais32( \) )b]
    | [b8( gis' fis e] [bis cis a )fis]
    | e2 \grace gis8( )fis2

    \key e \minor
    \bar "||"

    | \times 2/3 { e4.:8-\cresc g: c: e: }
    | \times 2/3 { g!: c: e: g: }
    | \times 2/3 { f: e: f: e: }
    | \times 2/3 { f: e: f: e: }
    | e4( [)dis8. fis16] c!4( [)b8. a16]

% 250
    | a4( [)gis8. b16] f4( [)e8. d16]
    | c4 r8. gis'16 [b8( )a] r8. gis16
    | [b8( )a] r8. gis16 [b8( )a] r8. gis16
    | a2 e'4..(-> )e16
    | e,2 g4 [fis8.( )e16]
    | b4 r8. ais'16 c4( [)b8. f16]
    | a4( [)g8 r16 dis] fis4( [)e8 r16 ais,]
    | b1
    | e2( g
    | <b,1 )b'>

% 260
    | <c-\fp c'>
    | <c-\p c'>
    | \times 2/3 { [b'8(-\f )a a-.] [a( )fis fis-.] 
                   [fis( )dis dis-.] [dis( )b b-.] }
    | e8 r \times 2/3 { [e,-\f e e] [e e e] [e e e] }
    | g' r \times 2/3 { [e, e e] [e e e] [e e e] }
    | b'' r \times 2/3 { [e,, e e] [e e e] [e e e] }
    | \repeat "percent" 2
      { e'' r \times 2/3 { [e,, e e] [e e e] [e e e] } }
      \property Staff.currentBarNumber = #268
    | \times 2/3 { [e''( )e, e] [e'( )e, e] [e'( )e, e] [e'( )e, e] }
    | \times 2/3 { [e'( )e, e] [e'( )e, e] [e'( )e, e] [e'( )e, e] }

% 270
    | e'4 r \lowerScript c,,4..(-> d16
    | )e4 r r2-\fermata
    
    \bar "||"
}
