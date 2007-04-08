violaFourthMov = \notes \relative g {
    \key e \major
    \clef alto

    R2.
    | \repeat "percent" 2 { [g8.-\f g'32 g] g2:8 }
      \property Score.currentBarNumber = #4
    | [gis!8.-\f e32-\p e] e2:
    | [<dis8. fis> <dis32 fis> <dis fis>] <dis2: fis:>
    | [<gis,8. cis> <gis32 cis> <gis cis>] <gis2: cis:>
    | [bis8. bis32 bis] bis2:
    | [b!8. e32 e] e2:
    | [<dis8. fis> <dis32 fis> <dis fis>] <dis2: fis:>

% 10
    | [cis8. cis32 cis] [c8 c] [c c]
    | [b fis] fis4 ~ fis8 r
    | R2.
    | \repeat "percent" 2 { [g8.-\f g'32 g] g2:8 }
      \property Score.currentBarNumber = #15
    | [g8. g32 g] g2:
    | r8 e r e r e
    | [d8. d32 d] d2:
    | r8 a r a r a
    | [b8. b32 b] b2:

% 20
    | r8 a r a r a
    | [ais8. ais32 ais] [ais8 ais] [e' <e g>]
    | <dis b'> r [a16. dis32 cis16. b32] [a16. gis'32 fis16. e32]
    | dis8 [cis'16.-\cresc b32] [a16. gis32 fis16. e32] 
      [dis16. cis32 b16. a32]
    | [gis8.-\f e'32-\p e] e2:
    | [<dis8. fis> <dis32 fis> <dis fis>] <dis2: fis:>
    | [<gis,8. cis> <gis32 cis> <gis cis>] <gis2: cis:>
    | [bis8. bis32 bis] bis2:
    | [b!8.-\fp e32 e] e2:
    | [<dis8. fis> <dis32 fis> <dis fis>] <dis2: fis:>

% 30
    | [cis8. cis32 cis] cis2:
    | [b8 dis] dis4( )e8 r
    | [e16.-\p fis32 e16. dis32] [e16. fis32 e16. dis32] 
      [e16. fis32 gis16. a32]
    | b8 r r4 r
    | [fis16. gis32 fis16. eis32] [fis16. gis32 fis16. eis32] 
      [fis16. gis32 a16. b32]
    | cis8 r gis4 fis ~
    | fis8 r fis2 ~
    | [fis16. fis32 g16. fis32] [e16. e32 fis16. e32] [d8 ais16 b]
    | [ais16. ais32 b16. ais32] [b16. b32 cis16. b32] [cis16. c32 d16. cis32]
    | d2-\p r4

% 40
    | [cis16. ais32 gisis16. ais32] [b16. b32 ais16. b32] 
      [cis16. cis32 ais16. cis32]
    | d2.
    | \repeat "percent" 2 { [fis,16.-\f b32 ais16. gis32] 
                            [fis16. cis'32 ais16. gis32] 
                            [fis16. e'32 cis16. ais32] }
      \property Score.currentBarNumber = #44
    | [fis16. gis32 fis16. gis32] [fis16. gis32 fis16. gis32] 
      [fis8 e] % [R] Perhaps [fis8.. e32] ?
    | [dis8-\p fis] r fis r fis
    | r cis' r cis r cis
    | r fisis, r fisis r fisis
    | r gis r gis r gis
    | r fis r fis r fis

% 50
    | r cis' r cis r cis
    | r ais r ais r eis
    | fis r r [d'(-\p b % [R] cis ?
                      d]
    | )cis r r [b'( ais b]
    | )ais r r4 r
    | [dis,,8-\p fis] r fis r fis
    | r cis' r cis r cis
    | r fisis, r fisis r fisis
    | r gis r gis r gis
    | r ais r ais r ais

% 60
    | r cis r cis r gis
    | r fis r fis r fis
    | fis r fis'4 ~ fis8 r
    | [fis,16. gis32 fis16. eis32] [fis16. gis32 a16. b32] [cis8 cis,]
    | r4 gis''4 ~ gis8 r
    | [gis,16. ais32 gis16. fisis32] [gis16. ais32 b16. cis32] 
      [dis16. cis32 b16. ais32]
    | gis8 r gis'4( )a % [R] Probably ais
    | gis e fis ~
    | [fis8. e16] [e16. dis32 dis16. cis32] [cis16. b32 b16. b32]
    | b4 r r

% 70
    | r2. % [R] Better: R2.
    | r16. [dis32 e16. fis32] [gis16. a32 b16. cis32] 
      [dis16. cisis32 dis16. cisis32]
    | \repeat unfold 3 { [dis16. cisis32 dis16. cisis32] }
    | dis2. ~
    | dis8 dis4 dis dis8 ~
    | [dis16. dis32 cis16. b32] [ais16. gis32 fis16. e32] 
      [dis16. cis32 b16. b32]
    | fis4 r r
    | fis( e )dis
    | g2-> [fis8( )e]
    | dis4 r r

% 80
    | e2.(
    | )dis4 r r
    | e2.(-\f )dis4 r r
    | R2.
    | [c8. c'32 c] c2:
    | [c,8. c'32 c] c2:
    | [f8. f32 f] f2:
    | \repeat unfold 3 { r8 <e g> }
    | r2. % [R] Better: R2.

% 90
    | \repeat "percent" 2 { [d,8. d'32 d] d2: }
      \property Score.currentBarNumber = #92
    | [g8. g32 g] g2:
    | [fis!8. fis32 fis] fis2:
    | g8 r dis4 [e16. g32 fis16. e32]
    | e2 [e8.( )e16]
    | [e8.( )a,16] b4 [c16. a32 b16. c32]
    | fis,!4 fis' [fis8. fis16]
    | fis2.(
    | )c'2 [c8. c16]

% 100
    | e,2.
      % [R] This is to match the wrong duration of the A in the autograph
    | < { \blankNotes a2 \visibleNotes [a8. a16] }
        \context Voice=x { a2. } >
    | d,2.
    | g2 [g8. g16]
    | cis,2 [fis8.( )fis16]
    | [b,16. e32( )d16. cis32(] [)b16. e32( )d16. cis32(] 
      [)b16. e32( )d16. cis32]
    | [b16. e32( )d16. cis32(] [)b16. cis32( )b16. a32(] 
      [)g16. f32( )e16. d32]
    | c2.
    | g'
    | a

% 110
    | b4 r r
    | [e,8.-\p e32 e] e2:
    | dis!4 r r
    | [e8. e32 e] e2:
    | dis4 r r
    | r16. [gis32( )a16. b32(] [)a16. gis32( )a16. b32(] )a8 r
    | r2. % [R] Better: R2.
    | r16. [eis32( )fis16. g32(] [)fis16. eis32( )fis16. g32(] 
      [)fis16. a32( )g16. fis32(]
    | )e8 r r4 r
    | \repeat unfold 2 { [g8. g'32 g] g2: }

% 121
    | [gis!8. e32 e] e2:
    | [<dis8. fis> <dis32 fis> <dis fis>] <dis2: fis:>
    | [<gis,8. cis> <gis32 cis> <gis cis>] <gis2: cis:>
    | [bis8. bis32 bis] bis2:
    | [b!8. e32 e] e2:
    | [<dis8. fis> <dis32 fis> <dis fis>] <dis2: fis:>
    | [cis8. cis32 cis] cis2:
    | [b8 fis] fis4-> ~ fis8 r
    | r2. % [R] Better: R2.

% 130
    | \repeat unfold 2 { [g8. g'32 g] g2: }
    | [f8. f32 f] f2:
    | r8 e r e r e
    | [d8. d32 d] d2:
    | r8 a r a r a
    | [b!8. b32 b] b2:
    | r8 a r a r a
    | [ais8. ais32 ais] [ais8 ais] [e' <e! gis>]
    | b' r [b,16. a32 g16. fis32] [e16. g32 fis16. e32]

% 140
    | dis!8 r [b'16. a32 g16. fis32] [e16. g32 fis16. e32]
    | dis8 r r16. [e'32 dis!16. d32] [cis16. e32 dis16. cis32]
    | [bis16. cis32 bis16. ais32] [gis8 ais16. b32] [cis16. e32 dis16. cis32]
    | dis!8-\p cis4 b ais8 ~
    | ais gis4 fis bis8
    | cis r fisis,2
    | gis4( fis )e
    | dis( )cis [dis8 bis']
    | [cis16. bis32 cis16. dis32] [cis16. bis32 cis16. dis32] 
      [cis16. cis32 dis16. e32]
    | gis,8 r cis2(

% 150
    | )bis8 r cis2(
    | )bis8 r r4 r
    | r2. % [R] Better: R2.
    | r8 e r e r e
    | r a, r a r a
    | r fis r dis r fis
    | r e r e r e
    | r e' r e r e
    | r ais, r fis r fis
    | r fis r fis r <fis cis'>

% 160
    | <fis4 b> r8 [e'( dis )e]
    | dis4 r8 [e( dis )e]
    | dis8 r r4 r
    | r8 [ais( b ais b )e,]
    | [fis( eis fis eis fis )a]
    | r8 [dis,!( dis e fis )gis]
    | r [cis,( dis cis dis )cis]
    | r [cis( d cis d )cis]
    | r fis r cis' r e,
    | \property Score.timing = ##f 
      r e' r fis r fis,4 % [R] Probably fis,8
      \bar "|"
      \property Score.currentBarNumber = #170

% 170
      [e16. fis32 e16. dis32] [e16. fis32 gis16. a32] [b8 b']
      \bar "|"
      \property Score.timing = ##t
      \property Score.currentBarNumber = #171
    | r4 fis4 ~ fis8 r
    | [fis,16. gis32 fis16. eis32] [fis16. gis32 a16. b32] [cis8 cis']
    | r4 gis4 ~ gis8 r
    | gis r cis,4( )dis
    | \stemUp cis( a )b \stemBoth ~
    | [b8. a16] [a16. gis32 gis16. fis32] [fis16. e32 e16. e32]
    | e8 r r4 r
    | r2. % [R] Better: R2.
    | \clef violin
      r16. [gis'32 a16. b32] [cis16. dis32 e16. fis32] 
      [gis16. fisis32 gis16. fisis32]
    | \repeat unfold 3 { [gis16. fisis32 gis16. fisis32] }

% 181
    | gis2. ~
    | gis8 gis4 gis gis8 ~
    | [gis16. gis32 fis16. e32] [dis16. cis32 b16. a32] 
      [gis16. fis32 e16. e32]
    | b8 r r4 r
    | \clef alto
      b4( a )b
    | a2(-\f <)fis4 b>
    | <e gis> r r
    | [a8.-\p a32 a] a2:
    | gis!4 r r

% 190
    | [e'8. e32 e] [e8 e e e]
    | [dis8.-#'(italic "cresc. poco") fis!32 fis] [fis8 fis fis fis]
    | [e8. gis!32 gis] [gis8 gis gis gis]
    | [fis8 \LowerText ais,(-\cresc ais ais b )b]
    | [dis( dis e eis fis )fis]
    | gis4( e )fisis
    | <b,8 gis'> r [b16. e32( )dis16. cis32(] [)b16. e32( )dis16. cis32]
    | b8 r r4 r
    | r2. % [R] Better: R2.
    | [e8.->-\fp e32 e] e2:
    | \repeat "tremolo" 3 { a,8( )cis }
    | \repeat "tremolo" 3 { gis( )b }
    | a2. ~
    | a
    | e'(
    | )cis ~
    | [cis8 gis] r gis r e'
    | r e r e r e
    | [ais,8. ais32 ais] ais2:
    | [a!8. a32 a] a2:

% 210
    | gis8 r b'2 ~
    | b8 r
      <
          { a2 ~ \stemUp a4 [gis8( fis] )gis r \stemBoth }
          \context Voice=x { a,2( % [R] Probably b,2 ~
                             )b2. } >
    | r4 <b,2 a'>
    | e8 [<dis16 fis> <dis fis>] <dis2: fis:>
    | [e8 <dis16 fis> <dis fis>] <dis2: fis:>
    | \repeat unfold 6 { [e8 dis] }
    | e8 r <gis,4 e'> r
    | a2.(-\fp

% 220
    | <)e b'-\fermata >

    \bar "||"
}
