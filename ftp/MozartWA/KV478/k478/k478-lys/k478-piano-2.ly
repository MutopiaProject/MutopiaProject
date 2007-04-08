pianoRightPartII = \relative f'' {
    \key bes \major
    \time 3/8
    %\override Hairpin #'minimum-length = #5
    \noTupletBracket

    \set tupletSpannerDuration = #(ly:make-moment 1 16)
    #(override-auto-beam-setting '(end 1 32 * *) 1 8 'Staff)

    << { f4( es8 ~ | es d c) } { d4 a8 | c bes g } >>
    | << { g16.( c32) } { s16 s16^\turnSharp } >> bes8( a)
    | << { bes16.[( c32 d8)] } { s16 s16-\turn s8 } >> r
    | << { bes16.( g'32) g8.( f16) | f16.( es32) es8.( d16) }
	 { g,16. es'32 es8. d16 | d16. c32 c8. bes16 } >>
    | << { c16.( d32 \oneVoice f16 es d c) } \\
	 { g16 \once \override TextScript #'extra-offset = #'(0 . -3.5) 
	   s^\turnNatural s4 } >>
    | bes!32( a g f g a bes c des d es e)
    | << { f4( es8 ~ | es d c) } { d4 a8 c bes g } >>

% 11
    | << { g16.( c32) } { s16 s16^\turnSharp } >> bes8( a)
    | << { bes16.[( c32 d16)\noBeam] } { s16 s16-\turn s16 } >>
    << { <bes d>16[( <c es> <d f>)] } \\ { bes8 as16 } >>
    | <g bes es g>8\noBeam g'8. g16
    | f32( es' c a f es c es d bes' f d
    | c g' es c bes f' d bes a es' c a
    | bes8) <es, g>4
    | << f4. \\ { es4( d8) } >>
    | <c es>( <bes d> <a c>)
    | bes32 bes'( d f es d c bes a g f es

% 20
    | d c bes a bes d es f g a bes c
    | d c bes a bes d es f es d c bes
    | a g fis g f es d es d c b  c
    | des[ d es e f8]) r
    | <c es!>8( <bes d>) r
    | << { <c' es>-[( <bes d>-]) } \\ f4 >> r8
    | fis'8( c'8. fis,16)
    | a8( g) r
    | e8( bes'8. e,16)
    | g8( f!16) f(-. f-. f)-.

% 30
    | f8. d16( g b,)
    | \repeat unfold 2 { c8[ r16 \lbcOne e( f b,)] }
    | c8\noBeam( ~ c32 b c b c b c b
    | c cis d16) r \stemDown \appoggiatura c32 bes16[ 
	\appoggiatura a32 g16 \appoggiatura f32 e16] \stemNeutral
    | f4 r8
    | R4.*3
    | << { a8 a16 a a a } { g8 g16 g g g } { e8(-. e16-. e-. e-. e)-. } >>

% 40
    | <d f a>8-.\noBeam <d f d'>-. r
    | << { <g, e'>-[( <a f'>-]) c'16[( bes]) } \\ { c,4 f8 } >>
    | << { a8[( g32 a bes a] c bes a g) } \\ { f8 e r } >>
    | f8.[( g32 a] bes16.[ a32])
    | a16[( g f8] d'16.[ c32])
    | << { c16[( bes a8] f'16.[ e32]) e16[( d) c8] } \\ { f,4. ~ f4 } >> r8
    | R4.*3

% 50
    | r32 f'( a g f e d c bes a g f)
    | r g'( bes a g f e d c bes a g)
    | r a'( c bes a g f e d c bes a)
    | r g'( bes a g f e d c bes a g)
    | r a'( c bes a g f e d c bes a)
    | r a'( c bes a g fis es! d c bes a
    | bes a g f! e f g e f g a f 
    | d bes' d bes a c a f bes c bes g)
    | a4 r8
    | e'( bes'8. e,16)

% 60
    | g8( f) r
    | e( bes'8. e,16)
    | g8( f) r
    | fis8( c'8. fis,16)
    | << { g16. a32 } { s16 s16^\turnSharp } >> bes8( a)
    | a32( g bes g) f!8( e)
    | f r <c es!>-.
    | <bes d>-. r <bes e>-.
    | <a f'>-. r <c es!>-.
    | <bes d>-. r <bes e>-.

% 70
    | <a f'>-. r32 c,( f e g f a g
    | bes16 a) r32 f( a g bes a c bes
    | d16 c) r32 a-\( c bes d c es! d
		      | f[( es) g8] f32[ es d c bes a]-\)
    | f'16[( es8 c32 a] es'16[ c32( a)]
    | << { f'4( es8 ~ | es d c) } { d4 a8 | c bes g } >>
    | << { g16.( c32) } { s16 s16^\turnSharp } >> bes8( a)
    | << { bes16.[( c32 d8)] } { s16 s16-\turn s8 } >> r
    | << { bes16.( g'32) g8.( f16) | f16.( es32) es8.( d16) }
	 { g,16. es'32 es8. d16 | d16. c32 c8. bes16 } >>
    | << { c16.( d32 \oneVoice f16) <g, es'>( <f d'> <es c'>) } \\
	 { g8 s4 } \\
	 { s16 \once \override TextScript #'extra-offset = #'(0 . -3.5) 
	   s^\turnNatural s4 } >>
    | bes8(\noBeam \times 2/3 { a32[ f g gis a bes] b[ c cis d es e]) }
    | << { f4( es8 ~ | es d c) } { d4 a8 c bes g } >>
    | << { g16.( c32) } { s16 s16^\turnSharp } >> bes8( a)
    | << { bes16.[( c32 d16)\noBeam] } { s16 s16-\turn s16 } >>
    << { <bes d>16[( <c es> <d f>)] } \\ { bes8 as16 } >>
    | <g bes es g>8\noBeam g'8. g16
    | f32( es' c a f es c es d bes' f d
    | c g' es c bes f' d bes a es' c a)

% 90
    | bes16( a g f es d)
    | <c es>4( <bes d>8) \clef bass
    | << { c8( bes a) } { g f es } >>
    | <d bes'>32\noBeam \clef violin bes''[( d f] es d c bes a g f es
    | d c bes a bes d es f g a bes c
    | d c bes a bes d es f es d c bes
    | a g fis g f es d es d c b c
    | des[ d es e f8]) r
    | <c es>( <bes d>) r
    | << { <c' es>-[-( <bes d>-)-] } \\ f4 >> r8

% 100
    | fis'8( c'8. fis,16)
    | a8( g) r
    | e( bes'8. e,16)
    | g16[( f]) r a[( bes e,)]
    | g[( f]) r a[( bes e,])
    | g[( f] ~ f32 e f e f e f e
    | f[ fis g16]) r \appoggiatura f32 es16[ 
	\appoggiatura d32 c16 \appoggiatura bes32 a16]
    | bes4 r8
    | R4.*3

% 111
    | << { d,8 d16 d d d } { c8 c16 c c c } { a8 a16(-. a-. a-. a)-. } >>
    | <g bes d>8-.\noBeam <g bes g'>-. r \clef bass
    | << { a8[( bes]) f'16( es) } \\ { c,8[( d)] s8 } \\ { \voiceFour f4 bes8 } >>
    | << { d8[( c32 d es d] f[ es d c]) } \\ { bes8[ a] r } >>
    | \clef violin bes'8.[( c32 d] es16.[ d32])
    | d16[( c bes8] g'16.[ f32])
    | f16[( es d8] bes'16.[ a32])
    | a16[( g) f8] r
    | R4.*3
    | \repeat unfold 9 R4.

% 131
    | a,8( es'8. a,16)
    | c8( bes) r
    | a'8( es'8. a,16)
    | c8( bes) r
    | b( f'8. b,16)
    | << { c16.( d32) } { s16 s16^\turnNatural } >> es8( d)
    | d32( c es c) bes!8( a)
    | \grace { f32[( bes d] } f8) f8. f16
    | \grace { f,16[( a c] } es4)( d8)

% 140
    | << { g,16.( c32) } { s16 s16^\turnSharp } >> bes8( a)
    | bes( f!) r
    | R4.
    | es,32( g c es, d f bes d, es f a es)
    | <d bes'>8 r <d' as'>-.
    | <es g>-. r <es a!>-.
    | <d bes'>-. r <d, as'>-.
    | <es g>-. r <es a!>-.
    | <d bes'>-. r \clef bass <d, f bes>-.
    | <d f bes>-. r r

    \bar "|."
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pianoLeftPartII = \relative c' {
    \key bes \major
    \clef bass
    \time 3/8
				%\override Hairpin #'minimum-length = #5
    \noTupletBracket

    #(override-auto-beam-setting '(end 1 32 * *) 1 8 'Staff)

    << { s4. | s4. | c8 d es! } \\
       { \oneVoice bes,8( d fis | g4 \tieDown e8) ~ | \voiceTwo e \tieNeutral f!4 } >>
    | <bes d>8 r16 bes,( c d)
    | es8( g bes)
    | c,( es g)
    | es r16 c( d es)
    | f4 r8
    | bes,( d fis

% 10
    | g4 e8) ~
    | e( f! fis)
    | g\noBeam <g, g'>( <f! f'!>)
    | <es! es'!>\noBeam <c'' es>( <bes d>)
    | <a! c>4( bes8)
    | es,( f) f
    | g\noBeam <c,, c'>( <bes bes'>)
    | <a a'>4( <bes bes'>8)
    | <es es'>( <f f'>) <f f'>
    | <bes, bes'>4 r8

% 20
    | f''4 r8
    | f'4 r8
    | R4.*2
    | << f,4 \\ { f,8[( bes]) } >> r
    | f'8( bes) r
    | <d,, d'>4.
    | <g g'>4.
    | <c, c'>
    | <d d'>

% 30
    | <g, g'>
    | <c c'>_\p
    | <c c'>
    | <c c'>4 r8
    | R4.*5
    | << { cis8 cis16(-. cis-. cis-. cis)-. } { cis'8 cis16 cis cis cis } >>

% 40
    | <d, d'>8-.\noBeam <bes bes'>-. r
    | <bes bes'>( <a a'>) <d d'>
    | <c c'>4 r8
    | << { a''8.[( bes32 c] d16.[ c32]) | c16[( bes a8] \oneVoice bes16.[ a32]) } \\
	 { f4. ~ | f4 s8 } >>
    | a16[( g f8] d'16.[ c32])
    | << { c16[( bes) a8] } \\ f4 >> r8
    | R4.*3

% 50
    | f8 r r
    | c r r
    | f r r
    | c r r
    | f r r
    | <d, d'>4.
    | << { g8 c, d | bes c c } { g'' c, d | bes c c } >>
    | <f, f'> r r
    | <c c'> r r

% 60
    | <f f'> r r
    | <c c'> r r
    | <f f'> r r
    | <d d'>4.
    | << { g8 c, d | bes c c } { g''8 c, d | bes c c } >>
    | r32 f( a g f e d c bes a g f)
    | r f'( bes a g f e d c bes a g)
    | r f'( a g f e d c bes a g f)
    | r f'( bes a g f e d c bes a g

% 70
    | f8) r r
    | r16 <f' a c>\noBeam <f a c>8 r
    | r16 <f a es'!>\noBeam <f a es'>8 r
    | <f a c es>4. ~
    | <f a c es>8 r r
    | << { s4. | s4. | c'8 d es! } \\
	 { \oneVoice bes,8( d fis | g4 \tieDown e8) ~ | \voiceTwo e \tieNeutral f!4 } >>
    | <bes d>8 r16 bes,( c d)
    | es8( g bes)

% 80
    | c,( es g)
    | es r16 c( d es)
    | << { d'8[( c]) } \\ f,4 >> r8
    | bes,,16( c d es f fis
    | g fis g d es d
    | es e f! e f fis
    | g a bes as g f!
    | es g es d c bes)
    | a!4( bes8)
    | es( f) f

% 90
    | g16( f es d c bes)
    | a4( bes8)
    | es( f) f
    | bes,4 r8
    | f''4 r8
    | f'4 r8
    | R4.*2
    | << f,4 \\ { f,8[( bes)] } >> r8
    | f'8( bes) r

% 100
    | <d,, d'>4.
    | <g g'>
    | <c, c'>
    | <f f'>
    | <f f'>
    | <f f'>4 r8
    | R4.*5

% 111
    | << { fis8 fis16 fis fis fis } { fis,8 fis16(-. fis-. fis-. fis)-. } >>
    | <g g'>8-.\noBeam <es' es'>-. r
    | es[( d)] <g g'>
    | <f f'>4 r8 \clef violin
    | << { d''8.[( es32 f] g16.[ f32]) | f16[( es d8] es16.[ d32]) } \\
	 { bes4. ~ | bes4 s8 } >>
    | d16[( c bes8] g'16.[ f32])
    | << { f16[( es) d8] } \\ bes4 >> r8

% 119
    | R4.*3 \clef bass
    | <bes, bes'>8 r r
    | <f f'> r r
    | <bes bes'> r r
    | <f f'> r r
    | <bes bes'> r r
    | <g g'>4.
    | <c, c'>8-[ <f f'>16. <fis fis'>32 <g g'>8-]
    | <es es'> <f! f'!> <f f'>

% 130
    | r16 bes d f bes bes,
    | r f a c f f,
    | r bes d f bes bes,
    | r f a c f f,
    | r bes d f bes bes,
    | r g b d g g,
    | c c' fis,, fis' g, g'
    | es, es' f,! f'! es, es'
    | <d, d'>4.
    | <a a'>4 <bes bes'>8

% 140
    | <es es'>( <f f'> <es es'>)
    | <d d'>4 r8
    | r f32( es d c bes c d bes)
    | es8 f f
    | r32 bes'( d c bes a g f es d c bes)
    | r bes'( es d c bes a g f es d c)
    | r bes( d c bes a g f es d c bes)
    | r bes'( es d c bes a g f es d c
    | bes8) r <bes bes'>-.
    | <bes bes'> r r

    \bar "|."
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pianoDynamicsII = {
    \standardTextScriptLayout

    s4.-\p
    | \skip 4.*6
    | s8 s4-\crescText
    | s4.-\f
    | \skip 4.*5
    | s4.-\p
    | s4.-\f
    | s4.
    | s4.-\p
    | \skip 4.*7
    | s4.-\f
    | \skip 4.*4

% 31
    | s8 s16 s8.-\p
    | s4.
    | s8 s4-\crescText
    | s8-\f s16 s8.-\p
    | \skip 4.*4
    | s4.-\p

% 40
    | s8 s4-\f
    | \lowerDynamics s4-\p s8-\sf
    | \skip 4.*8
    | s4.-\p
    | \skip 4.*4
    | s4.-\crescText
    | s8 s4-\f
    | s4.-\p
    | \skip 4.*5
    | s4.-\crescText
    | s4.-\f
    | s4.-\p
    | \skip 4.*5
    | s8 s32 s16.-\crescText s8
    | s8 s32 s16.-\crescText s8
    | s4.-\f
    | s4 s8-\p
    | \skip 4.*7
    | s8 s4-\crescText
    | s4.-\f
    | \skip 4.*5
    | s4.-\p

% 90
    | s4.-\f
    | s4.
    | s4.-\p
    | \skip 4.*7
    | s4.-\f
    | \skip 4.*2
    | s8 s16 s8.-\p
    | s4.
    | s8 s4-\crescText
    | s8.-\f s8.-\p
    | \skip 4.*4
    | s4.-\p
    | s8 s4-\f
    | s4-\p s8-\sf
    | \skip 4.*8

% 122
    | s4.-\p
    | \skip 4.*4
    | s4.-\crescText
    | s4.-\f
    | s4.-\p

% 130
    | \skip 4.*5
    | s4.-\crescText
    | s4.-\f
    | s4.-\p
    | s4.
    | s4.-\crescText

% 140
    | s4.-\f
    | s4.-\p
    | s8 s4-\f
    | s4.
    | s4.-\p
    | \skip 4.*3
    | s4 s8-\pp
    | s4.
}
