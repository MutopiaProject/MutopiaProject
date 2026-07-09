st = \staccato
part = \relative c' {
  \clef bass
  \time 2/4
  \key f \major
  \tempo "Allegretto"
  \omit TupletNumber
  \override TupletBracket.bracket-visibility = ##f
  \partial 8
  \relative c' {
    a8
    \rondeauFirstBarLine
    %% 01
    | d8 d\prall f f | e4. a,8
    | bes8 bes\prall d8 d | c4. f,8
    %% 05
    | g8 g\prall bes bes | a4 b8 cis
    | d8 d\prall e f | e16 d c bes a g f e
    %% 09
    | d8\P\st \bmOn f\st d\st f\st \bmOff
    |  c8\st \bmOn e\st c8\st e\st \bmOff
    |  bes8\st \bmOn d\st bes8\st d\st \bmOff
    | a8\st \crescDotMark \bmOn c\st a\st c\st \bmOff
    %% 13
    | b4 gis8 e
    | a8 \bmOn b c d \bmOff | e8 \bmOn dis e e, \bmOff
    | a4 r8 a'\F
    \override Beam.auto-knee-gap = #1.5
    %% 17
    | fis8 d'4 c8 | c16 \cAccOn bes \cAccOff a g fis g a bes
    | e,8 c'4 bes8 | bes16 a g a f a bes c
    %% 21
    | d8. e16 g f e d | c a g f e f a c
    | c16 bes d bes a8 g | f8 r r4
    %% 25
    \set Timing.beamExceptions =
    \beamExceptions { 8 [ 8 8 8 ] | 16 [ 16 16 16] 16 [ 16 16 16 ] }
    | d8\st\P f\st d\st f\st
    | c8\st e\st c\st e\st
    | bes8\st d\st bes\st d\st
    | a8\st c\st a\st c\st
    %% 29
    | g8 bes g bes
    | f8 f' g4 (
    | f8) f e d
    | a'4 r8 a
    %% 33
    | d8\F \bmOn d\prall \bmOff f f
    | e4. a,8
    | bes8 \bmOn bes\prall \bmOff d d
    | c4. f,8
    %% 37
    | g8 \bmOn g\prall \bmOff bes bes
    | a16 f g a b cis d e
    | f8 e d cis
    | d8 d d r
    \bar "||"
    \Fin
    %% 41
    | bes4.\FF
    << { \voiceTwo c8\tr }
       \\
       { \voiceOne s16. \cadenzaOn \grace { bes16 c } \cadenzaOff s32 }
     >>
    | d8 bes,r4
    | r16 f'' ees d c bes a bes
    | c4.
    << { \voiceTwo d8\tr }
       \\
       { \voiceOne s16. \cadenzaOn \grace { c16 d } \cadenzaOff s32 }
     >>
    %% 45
    | ees8 c, r4
    | r16 ees' c bes a c f, a
    | bes16 f bes d f,8 r
    | a16 f a c f,8 r
    %% 49
    | bes16 f bes d a f a c
    | bes16 f bes d c a c ees
    | d16 bes d f ees d c bes
    | f4 r
    %% 53
    \revert Beam.auto-knee-gap
    | r8\P a ( bes a
    | g8 f ees d )
    | c8 ( b' c bes
    | a g f ees )
    %% 57
    | d8 ( cis' d c
    | bes8 a g f )
    \override Beam.auto-knee-gap = #1.5
    \set Timing.beamExceptions =
    \beamExceptions { 8 [ 8] 8[ 8 ] | 16 [ 16 16 16] 16 [ 16 16 16 ] }
    | \cAccOn e8 \cAccOff c f f,
    | c'8 r e\st c\st
    %% 61
    | f8\st c\st a\st f\st
    | c'8\st r e\st c\st
    | f8\st c\st a\st f\st
    | bes8 r r bes
    %% 65
    | a8 r r a | g8 r r e | f8\st g\st a\st bes\st | a8 bes c d
    %% 69
    | f16\F c' b c d c a f
    | e16 c' bes c g c e c
    | a16 c f c a c a f
    | e16 c' bes c g c bes c
    %% 73
    | a16 c f c a c a f
    | r16 d' f d bes f d bes
    | r16 d' f d b f d bes
    | r16 e' g e c g e c
    %% 77
    | r16 e' g e cis \cAccOn bes \cAccOff a g
    | f16 d' cis d e f e d
    | cis16 ( d cis d ) e ( f e d )
    | cis8 r r16 f e d
    %% 81
    | cis8 r r16\crescDot f e d
    | cis16 ( f e d ) cis ( f e d )
    | cis8 r r a
    | d8 d\prall f f
    %% 85
    | e4. a,8
    | bes8 bes\prall d d
    | c4. f,8
    | g8 g\prall bes bes
    %% 89
    | a4 b8 cis
    | d8 d\prall e f
    | e16 d c bes a g f e
    | d8\P\st f\st d\st f\st
    %% 93
    \set Timing.beamExceptions =
    \beamExceptions { 8 [ 8 8 8 ] | 16 [ 16 16 16] 16 [ 16 16 16 ] }
    | c8\st e \st c\st e\st
    | bes8\st d\st bes\st d\st
    | a8\st c\st a\st c\st
    
    | g8 bes g bes
    %% 97
    | f16\F d' e f g a b cis
    \set Timing.beamExceptions =
    \beamExceptions { 8 [ 8 ] 8 [ 8 ] | 16 [ 16 16 16] 16 [ 16 16 16 ] }
    | d8 g, a a,
    | d8 a d, r
    \bar "||"
    \time 2/4
    \tempo "mineur"
    \key g \minor
    \set Timing.beamExceptions =
    \beamExceptions { 8 [ 8  8  8 ] | 16 [ 16 16 16] 16 [ 16 16 16 ] }
    | g'8\dolDot ( bes ) bes a
    %% 101
    | a8 ( g) g4
    | d'4. ees8
    | d8 c c4
    | a8 c c bes
    %% 105
    | bes8 a a4 | d4. c8 | c8 bes bes4
    | d8 \bmOn c\prall \bmOff bes d
    %% 109
    | ees8 d\prall c r
    | c8 bes\prall a c
    | d8 c\prall bes r
    | bes8 \bmOn a\prall \bmOff g b
    %% 113
    | c8 \bmOn d  \bmOff ees d
    | c bes a g
    | f16\crescDotMark f e f g f e f
    | f2 ~
    %% 117
    | f4 \cAccOn ees ~ \cAccOff
    | ees4 d ~ | d c ~ | c4 cis
    %% 121
    | d4 r
    | R2*1
    | g8\dolDot ( bes ) bes a
    | g8 ( a bes c )
    %% 125
    | bes8 a a4
    | R2*1
    | d,8 fis fis e
    | d8 e fis d
    %% 129
    | g8 r g\P\st fis\st
    | g8\st \bmOn d\st \bmOff bes\st g\st
    | d'8 r g\st fis\st
    | g8\st \bmOn d\st \bmOff bes\st g\st
    %% 133
    | d'16\crescDot a' g a bes a g a
    | f16\F a g a f a e a
    | f16 a d a f a f d
    | a'16 a g a f a e a
    %% 137
    | f16 a d a f a f d
    | a'8 r r16\P a bes a
    | bes8 r r16 b cis b
    | cis8 r r16 cis d cis
    %% 141
    | d8 r r16\crescDot d e d
    | ees8 r r16 ees f ees
    | f8 r8 r16 f e d
    | cis8 r r16\F f ees d
    %% 145
    | cis16 f ees d cis16 f ees d 
    | cis8 r r a
    \rondeauSecondRepeat
    %% 149
    %% 153
    %% 157
    %% 161
    %% 165
    %% 169
    %% 173
    %% 1177
    
  }
}
