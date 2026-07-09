
part = \relative c' {
  \clef bass
  \key bes \major
  \time 6/8
  \relative c' {
    \sicilianoFirstBarLine
    \repeat segno 2 {
      %% 01
      \override Beam.auto-knee-gap = #2
      | bes,8\P d f a, c f
      | bes,8 d e f f ees
      | d8 c bes a g f
      | bes16 a bes c d ees f4 r8
      %% 05
      | bes,8 d f a, c f
      | bes,8 d e f f ees
      | d4 bes8 ees4 c8
      | f4 f,8 bes4 r8
      %% 09
      | d'8.\F ees16 d8 c8. d16 c8
      | bes8. c16 bes8 a8. f16 g a
      | \grace c8 bes a bes c4 c8
      | d4. ( c16 ) f, g a bes c
      %% 13
      | d8. ees16 d8 c8. d16 c8
      | bes8. c16 bes8 a8. f16 g a
      | \grace c8 bes16 a bes c d c g b c d ees c
      | bes8. c16 a8 bes4 r8
      \volta 2 \fine
      \volta 1 {
        %% 17
        | bes,8\P d f a, c f
        | g8 f e f4 r8
        | c16_\CrescMark d e f g e f4 r8 
        | c16 d e f g e f4 r8
        %% 21
        | r16 bes d bes g f e4. ~
        | e16 a c a f e d4. ~
        | d16 g bes g e d c8 r c
        | f8\dolce f16 a f a g8 e16 g e g
        %% 25
        | f8 f16 a f a g8 e16 g e g
        | f16\cresc a g f g a bes a g a bes g
        | a4 a,8 bes4.
        | c8\F bes' a g f e
        %% 29
        | f16 c f a c a bes g e c d e
        | f16 c f a c a bes g e c d e
	| f16 a c a c a r a c \cAccOn ees \cAccOff c a
	| bes f d f bes d \cAccOn ees \cAccOff c a c d ees
        %% 33
        | d16 f, bes d f e f e d c bes a
        | g16 c bes c d c e c bes c e c
        | f16 e d c bes a g4.\prall
        | f8 r f\P e r c
        %% 37
        | f8 r f e r c
	| f r f \cAccOn ees \cAccOff r ees
        | d8 r d c r c
        | bes8 r bes bes r bes
        %% 41
        | bes2.
        | a8 r f c'8\F c c
        | f16\P ( e f e f e ) f4 r8
        | f16 ( e f e f e ) f4 r8
        %% 45
        | f16\Cresc ( e f e f e ) f4 r8
        | f16 ( e f e f e ) f8\F ees' d
        | c8 ( bes a g\smorz f e )
        \sicilianoFagotTwoFirstRepeat
        \tempo "mineur"
        \time 6/8
        \partial 8
        \mark \markup \segno
        | r8 \bar "||"
        %% 49
        | g16\dolce fis g a bes g c bes a g fis a
        | bes16 c bes a g fis g d c bes a g
        | c16 d ees c a c d e fis d e fis
        %% 53
        | g16 bes, c d e fis g4 r8
        | g16 fis g a bes a g f e d cis e
        | a16 g a bes a g f a g f ees d
        | g fis g a bes g a bes a g f e
        %% 57
        | d16 f d a f a \autoBeamOff d,8 \autoBeamOn d''\F bes
        | a4 a8 c4 c8
        | bes 4. g8 d' bes
        | a4 a8 c4 c8
        %% 61
        | bes8 g d' ees4. ~
        | ees8 d cis d4. ~
	| d8 \cAccOn c \cAccOff  b c c bes
        | a8 c bes a a g
        %% 65
        | fis8\dolce d' d d d d
        | d4 bes8 ees4 ees8
        | d4. bes4 g8
        | a4 a8 d4 c8
        %% 69
        | bes4 a8 g4 g8
        | d'4 d8 e4 e8
        | cis4. d4 d8
        | ees4 ees8 a,4 cis8
        %% 73
        | d4 r8 r d\dolce ( bes )
        | a4 r8 r c ( a )
        | fis4 r8 r d'8 ( bes )
        | a4 r8 r c ( a )
        %% 77
        | g16 ( fis g fis g fis ) g4 r8
        | g16 ( fis g fis g fis ) g4 r8
        | g16  fis g fis g fis  g4 r8
	| \cAccOn f16 \cAccOff e f e f e f4 r8
        %% 81
        | f16 e f e f e f4 r8
        | f16\cresc e f e f e f8\F ees' d
        | c8 c bes \autoBeamOff a \autoBeamOn a bes
        | c8 ( bes a g\smorz f e )
        %% 85
        | f8 ( f e ees d c )
        \bar "||"
	%%        \sicilianoSecondRepeat
      }
    }
  }
}