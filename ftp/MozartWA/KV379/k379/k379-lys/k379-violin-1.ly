% -*- mode: LilyPond; coding: utf-8; -*-

\version "2.6.0"

violinPartI = \relative g {
    \key g \major
    \time 2/4
    %\override Hairpin #'minimum-length = #5
    \noTupletBracket

    \override Score.RehearsalMark
    #'break-visibility = #begin-of-line-invisible

    \repeat volta 2 {
	R2*8
	| <g d' b'>4-\f b'8 b

% 10
	| b16.( a32) e'8 ~ e16 dis32(-\> e d c b a)-\!
	| a16.(-\p g32) g8 ~ g16.[( fis32 b16 a])
	| a( g) g8 r g'
	| dis16( e) e8 ~ e16( fis8 g16)
	| e16( d!) d8-. r16. d32-. d16.[-\( \grace { e32[( d cis d)] } e32]-\)
	| d16.( c!32) c4( b8)
	| b16.( a32) a'4( b8)
	| a16.( g32) g4( fis8)
	| fis16( e) e8 ~ e16( f) r d
	| d32( cis b a) a8 r4

% 20
	| R2*2
	| <a fis'>2-\f
	| <a g'>4. cis8(
	| d4) r
	| R2*6
	| r8 d32( cis b a) a16-. r \grace cis32( b16. a32)
	| a16-. r b32( a g fis) fis16[-. r32 fis32](-\trill g16. e32)
	| d8[-. fis-. d]-. r
    }

    | d'2-\p(
    | d4)(-\markup { \italic "cresc." } d16( c' b d,)
    | fis16.( e32) e8 ~ e16[( e] fis32 e dis e)
    | g16.(-\f f32) f8( ~ f16 fis) fis( g)
    | g8 r r4
    | R2*6
    | \grace d16( d'8. c16) c16( bes a g)
    | fis4( g)
    | d8. a16( bes8) cis,(
    | d)[ r16 bes'](-\p a8)[ a]-.
    | << { a2*1/2-\fermata \hideNotes a4 } { s8-\< s8-\!-\> s8-\! s8 } >>

    \bar "||"
    \time 3/4
    \key g \minor
}
