violinIFourthMov = \notes \relative b'' {
    \key e \major
    \clef violin

    \smartTupletBracket

    R2.*3
    | [b8-.-\f b-\p] ~ [b16. cis32( )b16. ais32(] [)b16. gis32( )a16. b32]
    | [a8-. b,-.] [a'-. b,-.] [a'-. b,-.]
    | [gis'-. gis->] ~ [gis16. a32 gis16. fisis32] [gis16. e32 cis16. e32]
    | [dis8 gis,] [dis' gis,] [dis' gis,]
    | [b'-. b->] ~ [b16. cis32 b16. ais32] [b16. gis32 a16. b32]
    | [a8 b,] [a' b,] [a' b,]

% 10
    | [gis' gis->] ~ [gis16. e'32 dis16. cis32] [b16. ais32 gis16. ais32]
    | [b16. dis32 cis16. ais32] cis4( )b8 r
    | R2.*3
    | [c8-. c->] ~ [c16. d32 c16. b32] [c16. a32 bes16. c32]
    | [bes8 c,] [bes' c,] [bes' c,]
    | [a'-. a->] ~ [a16. bes32 a16. gis32] [a16. f32 d16. f32]
    | [e8 a,] [e' a,] [e' a,]
    | [e'-. e->] ~ [e16. f32 e16. dis32] [e16. gis!32 a16. b32]

% 20
    | \repeat unfold 3 { [c8 a] }
    | [e8-. e] ~ [e16. fis!32 e16. dis!32] [e16. g32 fis16. e32]
    | [b'8. b16] <b,2 b'-> > ~
    | [<b8. b'> <b16-\cresc b'>] [b'16. b32 b16. b32][ b16. b32 b16. b32]
    | [b8-.-\f b->-\p] ~ [b16. cis32 b16. ais32] [b16. gis32 a16. b32]
    | [a8 b,] [a' b,] [a' b,]
    | [gis' gis->] ~ [gis16. a32 gis16. fisis32] [gis16. e32 cis16. e32]
    | [dis8 gis,] [dis' gis,] [dis' gis,]
    | [b' b->] ~ [b16. cis32 b16. ais32] [b16. gis32 a16. b32]
    | [a8 b,] [a' b,] [a' b,]

% 30
    | [gis' gis->] ~ [gis16. e'32 dis16. cis32] [b16. a32 gis16. fis32]
    | [e16. gis32 fis16. dis32] fis4( )e8 r
    | r4 e2->-\p ~
    | e8 r dis2->
    | r4 fis2 ~
    | fis4 eis e ~
    | [e8 d16. cis32] d4 cis
    | b b' ~ [b16. b32 cis16. d32]
    | fis,2.
    | r16 [ais(-\p b cis] [e d cis b] [a g fis )eis]

% 40
    | fis8 fis4 fis fis8
    | r16 [e'( d cis] [b a g fis] [e d cis b]
    | )fis8 r r4 r
    | r8 fis'4 fis fis8 ~
    | fis fis4 < { fis [gis32( ais b )cis] } 
                 \context Voice=x { s8 \< s8 s16. \! s32 } >
    | [dis16( )e e( )dis] [dis( )cis cis( )b \<] [b( )ais ais( \! )gis]
    | [gis( \> )fis fis( )e] \! e2->
    | [cisis16( )dis dis( )e] [e( )dis dis( )cis!] [cis( )b b( )ais]
    | [cis( )b b( )ais] gis2->
    | [dis''16( )e e( \< )dis] [dis( )cis cis( )b] [b( )ais ais( \! )gis]

% 50
    | [gis( )fis fis( )eis] eis2
    | [fis16( \< )gis gis( )ais] [ais( )b b( \! )cis] [cis( \> )d d( \! )eis,]
    | \repeat unfold 2 {
        fis4 ~ [fis16( )eis eis( )fis] [fis( )eis eis( )fis]
      }
    | [fis( )gis gis( )ais] [ais( )b b( )cis] [cis( )d d( )dis]
    | [dis( )e e( )dis] [dis( )cis cis( )b] [b( )ais ais( )gis]
    | [gis( )fis fis( )e] e2
    | [cisis16( )dis dis( )e] [e( )dis dis( )cis] [cis( )b b( )ais]
    | [cis( )b b( )ais] gis2->
    | [dis''16( )e e( )dis] [dis( )cis cis( )bis] [bis( )a a( )gis]

% 60
    | [gis( )fis fis( )e] [e( )dis! dis( )cis] [cis( )b b( )gis]
    | [fis( )b b( )dis] [dis( )fis fis( )b] [ais( )fis gis( )ais]
    | b8 r b4.(-\f )ais8
    | a!2 ~ [a16. a32 gis16. fis32]
    | gis8 r cis4.(-> )bis8
    | b!2( )ais4
    | [b16. cis32 b16. ais32] [b16. gis32 ais16. b32] 
      [ais16. fis32 eis16. fis32]
    | [gis16. ais32 gis16. fis32] % [R] The last fis may be a fisis
      [gis16. e32 fis16. gis32] [fis16. dis32 eis16. fis32]
    | [e16. fis32 dis16. e32] [cis16. dis32 b16. cis32] 
      [ais16. b32 gis16. eis32]
    | [fis16. b,32 cis16. dis32] [e16. fis32 gis16. ais32] b4 ~ % [E]

% 70
    | [b16. dis,32 e16. fis32] [gis16. ais32 b16. cis32] dis4 ~
    | [dis16. b32 cis16. dis32] [e16. fis32 gis16. ais32] 
      [b16. ais32 b16. ais32]
    | \repeat unfold 3 { [b16. ais32 b16. ais32] }
    | b2. ~
    | b8 \< b4 b \! b8 ~
    | [b16. b32 ais16. gis32] [fis16. e32 dis16. cis32] 
      [b16. ais32 gis16. g32]
    | fis4( eis )e
    | dis( cis )b
    | c2 ais4
    | b r r
    | c2.(

% 80
    | )b4 r r
    | \lowerDynamics c2.(-\f
    | )b4 r r
    | R2.*3
    | [c''8-. c] ~ [c16. d32 c16. b32(] [)c16. a32( )bes16. c32(]
    | [)bes8 c,] [bes' c,] [bes' c,]

% 89
    | R2.*3 % [E]
    | [d'8 d] ~ [d16. e32 d16. cis32] [d16. b32 ais16. b32]
    | [c8 d,] [c' d,] [c' d,]
    | [b'16. g32 a16. b32] [a16. fis32 g16. a32] [g8 g]
    | [gis!8.( )gis16] a4 \raiseScript [b8.(-\trill a32 )b]
    | [c16. a32( )b16. c32(] [)b16. gis32( )a16. b32(] 
      [)a16. fis32( )gis16. % [R] g16.?
       a32]
    | [ais8.( )ais16] b4 \raiseScript [cis!8.(-\trill b32 )cis]
    | [d16. b32( )cis16. d32(] [)cis16. ais32( )b16. cis32(] 
      [)b16. fis32( )b16. a32(]
    | [)g8 g] a4 \raiseScript [b8.(-\trill a32 )b]

% 100
    | [cis16. a32( )b16. cis32(] [)b16. gis!32( )a16. b32(] 
      [)a16. e32( )a16. g32]
    | fis4( g )a
    | [b16. g32 % [E] To avoid a dissonance with the cello part
       a16. b32] [a16. fis32 g16. a32] [g16. b,32 g'16. fis32]
    | [e8.( )e16] fis4 \raiseScript [g8.(-\trill fis32 )g]
    | [fis16. eis32 fis16. g32] [e16. dis32 e16. fis32] [e16. dis32 e16. fis32]
    | [b,16. e32( )d16. cis32(] [)b16. e32( )d16. cis32(] 
      [)b16. e32( )d16. cis32]
    | [b16. e32( )d16. cis32(] [)b16. cis32( )b16. a32(] [)g16. f32( )e16. d32]
    | c2.
    | g
    | a

% 110
    | b4 r r
    | [c8.-\p c32 c] c2:8
    | b4 r r
    | [c8. c32 c] [c8 c d c]
    | b4 r r16. [b'32 c16. d32]
    | c2 ~ [c16. ais32( )b16. c32]
    | b2 ~ [b16. ais32( )b16. c32]
    | b2. ~
    | [b16. ais32( )b16. c32(] [)b16. ais32( )b16. c32(] 
      [)b16. ais32( )b16. c32(]
    | [)b16. ais32 b16. c32] [b16. ais32 b16. c32] [b16. b32 cis16. dis!32(]

% 120
    | [)e16. dis!32 e16. fis32] [e16. dis32 e16. fis32] [e16. fis32 g16. ais32]
    | [b8-. b->] ~ [b16. cis32 b16. ais32] [b16. gis32 a16. b32]
    | [a8 b,] [a' b,] [a' b,]
    | [gis'-. gis->] ~ [gis16. a32 gis16. fisis32] [gis16. e32 cis16. e32]
    | [dis8 gis,] [dis' gis,] [dis' gis,]
    | [b'-. b->] ~ [b16. cis32 b16. ais32] [b16. gis32 a16. b32]
    | [a8 b,] [a' b,] [a' b,]
    | [gis'-. gis->] ~ [gis16. e'32 dis16. cis32] [b16. ais32 gis16. ais32]
    | [b16. dis32 cis16. ais32] cis4( )b8 r

% 129
    | R2.*3 % [E]
    | [c8-. c->] ~ [c16. d32 c16. b32] [c16. a32 bes16. c32]
    | [bes8 c,] [bes' c,] [bes' c,]
    | [a' a->] ~ [a16. bes32 a16. gis32] [a16. f32 d16. f32]
    | [e8 a,] [e' a,] [e' a,]
    | [e' e] ~ [e16. f32 e16. dis32] [e16. gis!32 a16. b32]
    | \repeat unfold 3 { [c8 a] }
    | [e8 e] ~ [e16. fis!32 e16. dis32] [e16. g32 fis16. e32]
    | b'4 r [c8.( )c16]

% 140
    | b4-> r [c8.( )c16]
    | b8 r r4 [a8.( )a16]
    | gis2(-> ~ % [E]
      [gis 16. gis32 a!16. )a32]
    | [gis8(-\p eis fis dis e )cis]
    | [dis( bis cis ais b )gis]
    | cis2.
    | [bis8( b ais a gis )gis]
    | [fisis( fis eis e dis )fis]
    | e r e'4..( cis16
    | )gis [gis( ais bis] [cis e dis cis] [b a gis )fisis]

% 150
    | gis [gis( ais bis] [cis e dis cis] [b a gis )fisis]
    | \repeat unfold 3 { [gis16( )fisis fisis( )gis] }
    | [gis'(-\p )fisis fisis( )gis] 
      \repeat unfold 2 { [gis( )fisis fisis( )gis] }
    | [gis( )a a( )gis] [gis( )fis fis( )e] [e( )dis dis( )cis]
    | [cis( )b b( )a] a2
    | [fisis16( )gis gis( )a] [a( )gis gis( )fis] [fis( )e e( )dis]
    | [fis( )e e( )dis] cis2
    | [gis''16( )a a( )gis] [gis( )fis fis( )e] [e( )dis dis( )cis]
    | [cis( )b b( )ais] ais2->
    | [b16( )cis cis( )dis] [dis( )e e( )fis] [fis( )g g( )ais,]

% 160
    | \repeat unfold 2 { b4 ~ [b16( )ais ais( )b] [b( )ais ais( )b] }
    | [b( )cis cis( )dis] [dis( )e e( )fis] [fis( )fisis fisis( )gis]
    | [gis( )a a( )gis] [gis( )fis fis( )e] [e( )dis dis( )cis]
    | [cis( )b b( )a] a2->
    | [fisis16( )gis gis( )a] [a( )gis gis( )fis] [fis( )e e( )dis]
    | [fis( )e e( )dis] cis2
    | [gis''16( )a a( )gis] [gis( )fis fis( )eis] [eis( )d d( )cis]
    | [b( )a a'( )gis] [gis( )fis fis( )e] [e( )dis dis( )cis]
    | [cis( )b dis( )cis] [cis( )b b( )a] [a( )gis gis( )fis]

% 170
    | e8 r e'4.(-\f )dis8
    | d2( )cis8 r
    | r4 fis4.( )eis8
    | e!2( )dis4
    | [e16. fis32 e16. dis32] [e16. cis32 dis16. e32] [dis16. b32 ais16. b32]
    | [cis16. dis32 cis16. bis32] [cis16. ais32 % [R] Dissonant, but...
       b16. cis32] [b16. gis32 a16. b32]
    | [a16. b32 gis16. a32] [fis16. gis32 e16. fis32] [dis16. e32 cis16. dis32]
    | [b16. e32 fis16. gis32] [a16. b32 cis16. dis32] e4 ~
    | [e16. gis,32 a16. b32] [cis16. dis32 e16. fis32] gis4 ~
    | [gis16. e32 fis16. gis32] [a16. b32 cis16. dis32] [e16. dis32 e16. dis32]

% 180
    | \repeat unfold 3 { [e16. dis32 e16. dis32] }
    | e2. ~
    | e8 e4 e e8 ~
    | [e16. e32 dis16. cis32] [b16. a32 gis16. fis32] [e16. dis32 cis16. c32]
    | b4( ais )a
    | gis( fis )e
    | f2(-\f )dis4
    | e r r
    | [f8.-\p f32 f] [f8 f g f(]
    | )e4 r r

% 190
    | [g8. g32 g] [g8 g a g]
    | [fis!8.-\markup { \italic { cresc. poco } } a32 a] [a8 a b a(]
    | [)gis!8. b32 b] [b8 b cis b(]
    | [)ais cis( bis-\cresc dis cis )e]
    | [dis( fis e gis fis )a]
    | \property Voice.Script \override #'extra-offset = #'(0.0 . 1.0) 
      gis4-\trill a-\trill ais-\trill
      \property Voice.Script \revert #'extra-offset
    | [b16. e32( )dis16. cis32(] [)b16. e32( )dis16. cis32(] 
      [)b16. e32( )dis16. cis32(]
    | [)b16. a32( )gis16. fis32(] [)e16. dis32( )cis16. b32(] 
      [)a16. gis32( )fis16. e32(]
    | )d4 r r
    | R2. % [E]

% 200
    | [e'8 e->] ~ [e16. fis32 e16. dis32] [e16. cis32 d16. e32]
    | [d8 gis,] [d' gis,] [d' gis,]
    | \repeat unfold 3
          { [e'-. e->] ~ [e16. fis32 e16. dis32] [e16. fis32 e16. dis32] }
    | [e8-. e->] ~ [e16. fis32 e16. dis32] [e16. fis32 e16. cis32]
    | b8 [gis,16( )b] [b( )e e( )gis] [gis( )b b( )e]
    | e8 [gis,16( )b] [b( )e e( )gis] [gis( )b b( )e]
    | fis,2.-\trill
    | b-\trill \< % [E]

% 210
    | [e,8. <e16 \! e'>] <e2 e'-> >
    | r16. [cis'32 b16. ais32] [b16. cis32 b16. ais32] [b16. a32 gis16. fis32]
    | [e8. <e16 e'>] <e2 e'-> >
    | r16. [cis'32 b16. ais32] [b16. cis32 b16. ais32] [b16. a32 gis16. fis32]
    | \repeat unfold 2
          { [e16. cis'32 b16. ais32] [b16. % [E]
             cis32 b16. ais32] [b16. a32 gis16. fis32] }
    | \repeat unfold 6 { [e16. % [E]
                          b'32 a16. fis32] }
    | e8 r <e4 e'> r
    | cis,2(-\fp [cis8. dis16] % [R] Perhaps a tie should join the two Cis

% 220
    | )e2.-\fermata

    \bar "|."
}
