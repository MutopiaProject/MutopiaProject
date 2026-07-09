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
    r8
    \bar ".|:"
    \repeat segno 2 {
      %% 01
      | d,8\F\st f\st d\st f\st | c8 \st e \st c\st e\st
      | bes8\st d\st bes\st d\st | a8\st c\st a\st c\st
      %% 05
      | g8 bes g bes | f8 f' g4 ( | f8 ) f e d | a'4 r8 a
      %% 09
      | d8\F d\prall f f | e4. a,8 | bes8 bes\prall d d
      | c4. fis,8
      %% 13
      | g8 gis b b
      | a4. b8 | c4 b\prall | a8 e a, r
      %% 17
      | r8\P d e fis
      | g8 r r4 | r8 c, d e
      | f8 r r16 f g a
      %% 21
      | bes8. c16 e d c bes
      | a4 a, | bes8 r c c,
      | f16\F d' e f g a b cis
      %% 25
      | d8 d\prall f f
      | e4. a,8 | bes bes\prall d d
      | c4. f,8
      %% 29
      | g8 g\prall bes bes
      | a4 b8 cis | d8 d\prall e f
      | e16 d c bes a g f e
      %% 33
      | d8\P\st f\st d\st f\st
      | c\st e\st c\st e\st
      | bes\st d\st bes\st d\st
      | a\st c\st a\st c\st
      %% 37
      | g8\st bes\st g\st bes\st 
      | f16\F d' e f g a b cis
      | d8 g, a a,
      | d8 a d, r
      \volta 2 \fine
      \volta 1 {
	%% 41
	| bes'4.\FF c8\trill \grace { bes16 c } 
	| d16 bes c d ees f g a
	| bes8 r r4
	| c,4. d8\trill \grace { c16 d }
	%% 45
	| ees16 c d ees g g a bes
	| c8 r f, ees
	| d8 r bes16 f bes d
	| f,8 r a16 f a c
	%% 49
	| d16 r d f ees r c ees
	| d16 r d f ees r a, c
	| bes16 bes d f ees d c bes
	| f16 f' \cAccOn e \cAccOff f g a bes c
	%% 53
	| d4.\dolce c8 
	| bes8 a g16 b c d
	| ees4. d8
	| c8 bes a16 c d ees
	%% 57
	| f4. ees8 (
	| d c bes a )
	| a16 g a bes a c a f
	| e16 c' bes c g c bes c
	%% 61
	| a16 c f c a c a f
	| e16 c' bes c g c bes c
	| a16 c f c a c a f
	| r16 d' f d bes f d bes
	%% 65
	| r16 c' f c a f c a
	| r16 bes' d bes g e c bes'
	| a16 f bes g c a d bes
	| c16 f d bes a8 g\trill 
	%% 69
	| f8 r r4
	| c8\P r e\st c\st
	| f8\st c\st a\st f\st
	| c8 r e'8\st c\st
	%% 73
	| f8\st c\st a\st f\st
	| bes8 r r bes | b8 r r b | c8 r r c    
	%% 77
	| cis8 r r cis
	| d8 f g gis | a8 f g gis
	| a16 ( bes a gis ) a8 r
	%% 81
	| r16\cresc bes ( a gis ) a ( f g gis )
	| a16 ( f g gis ) a f g gis
	| a16 g a bes a \cAccOn g \cAccOff f e
	| d8\P\st f\st d\st f\st
	%% 85
	| c\st e\st c\st e\st
	| bes8\st d\st bes\st d\st
	| a8\st c\st a\st c\st
	| g\st bes\st g\st bes\st
	%% 89
	| f8 f' g4 (
	| f8 ) f e d
	| a'4 r8 a\F
	| d8 d\prall f f
	%% 93
	| e4. a,8 | bes8 bes\prall d d
	| c4. f,8
	| g8 g\prall bes bes
	%% 97
	| a16 f g a b cis d e
	| f8 e d cis
	\rondeauPlayerTwoRepeat
	\bar "||"
	\time 2/4
	\tempo "mineur"
	\key g \minor
	| R2*1
	%% 101
	| g8\dolce ( bes ) bes a
	| g8 ( a bes c )
	| bes8 a a4
	| R2*1
	%% 105
	| d,8 fis fis e
	| d8 e fis d
	| g8 g, bes d
	| g8\st a\st bes\st g\st
	%% 109
	| c,8\st d\st ees\st c\st
	| f8\st g\st a\st f\st
	| bes,8 c d bes
	| ees8 f g f
	%% 113
	| ees8 d c bes
	| a8 g f e
	| f8 r r4
	| r16\crescMark g' fis g a g fis g
	| g16 bes a bes c d \cAccOn ees \cAccOff c
	%% 117
	| f,16 a g a bes c d bes
	| ees,16 g fis g a bes c a
	| fis16 d e fis g bes a g
	| f16 d' \cAccOn ees \cAccOff d d c bes a
	%% 121
	| g8\dolce ( bes ) bes a
	| a8 g g4
	| d'4. ees8
	| d8 c c4
	%% 125
	| a8 c c bes
	| bes8 a a4
	| d4. c8
	| bes16 d c d bes d a d
	%% 129
	| g,16 d' ees d bes d bes g
	| fis16 d' ees d bes d a d
	| g,16 d' ees d c bes a g
	| d8 r r4
	%% 133
	| d8\P r d\st cis\st
	| d\st a\st f\st d\st
	| a'8\st r d\st cis\st
	| d8\st a\st f\st d\st
	%% 137
	| a'16\P gis a gis a8 r
	| r16 gis' a gis a8 r
	| r16 gis a gis a8 r
	| r16\cresc gis a gis a8 r
	%% 141
	| r16 gis a gis a8 r
	| r16 gis a gis a8 r
	| r16\F \cAccOn bes16 \cAccOff a gis a f g gis
	| a16 f g gis a f g gis
	%% 145
	| a16 gis a bes a g f e
	\bar "||"
      }
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
}


