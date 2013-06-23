\version "2.16.0"

leftHandFirstMov =  \relative c, {
    \key es \major
    \clef bass

    \noTupletBracket

    <<es4. es'4>> g8( es  bes)
    | g r r r4 r8
    | <es' g bes> r r <es g bes> r r
    | <d as' bes> r r r4 r8
    | <f, f'>4. as'8( f  d)
    | bes r r r4 r8
    | <d as' bes> r r <bes d bes'> r r
    | <es g bes> r r r4 r8
    | g, r r es r r

% 10
    | as r r f r r
    | bes r r bes, r r
    | c r r r4 r8
    | <g' g'> r r <es es'> r r
    | <as as'>4. <a a'>
    | <bes bes'> <bes, bes'>
    | <es es'>4 ~  es'16[ f64( es d es] g8 es  b)
    | c8 r as bes!4.
    | <es, es'>4 ~  es'16[ f64( es d es] g8 es  b)
    | c8 r as bes!4.

% 20
    | <es, es'>4 ~  es'16[ f64( es d es] g8 es  b)
    | c4 r8 r4 b'8(
    |  c4) r8 r4 b8(
    |  c4) r8 r4 r8
    | \set doubleSlurs = ##t
      <ges ges,>4.( <f f,>8) r r
      \set doubleSlurs = ##f
    | bes, r r f' r r
    | d r r a r r
    | bes r r f r r
    | bes r r es r r
    | d r r a r r

% 30
    | bes r r f'4 es8
    | d4. g,4.
    | c4. fis,4(  g8)
    | es4 es'8 f f f
    | bes, bes'( f d f d
    |  bes) r r f' r r
    | d r r a r r
    | bes r r f r r
    | d'4.( es
    | d  a)

% 40
    | bes f'4(  es8)
    | d4. <g, g'>
    | <c, c'> <fis fis'>4( <g g'>8)
    | <es' g c> r r <es g c> r r
    | <es g c> r r <e g bes des> r r
    | f <bes d> <bes d> f <bes d> <bes d>
    | f, r r f r r
    | <bes bes'>4 ~  bes'16[ c64( bes a bes]  d8[  bes)] <fis, fis'>
    | <g g'> r es' f!4.
    | <bes, bes'>4 ~  bes'16[ c64( bes a bes]  d8[  bes)] <fis, fis'>

% 50
    | <g g'> r es' f!4.
    | bes,4 ~  bes16[ c64( bes a bes]  des8[ bes  f)]
    | e4 ~  e16[ c'64( bes a bes]  des8[ bes  f)]
    | e4 ~  e16[ as64( g fis g]  bes8[ g  des)]
    | c4. ~ c8 r r^\fermata
    | as'!8 r r es'! r r
    | c r r g r r
    | as r r es r r
    | as r r des r r
    | c r r g r r

% 60
    | as4. g
    | as a
    | bes b
    | c4( bes!8 a4  as8)
    |  g8[( b d]  g,[ b  d)]
    |  g,[( c es]  g,[ c  es)]
    |  g,[( b d]  g,[ b  d)]
    |  g,[( c es]  g,[ c  es)]
    | g,8 r r r4 r8
    | g'4 ~  g16[ a64( g fis g]  d'8[ b  g)]

% 70
    | f! r r r4 r8
    | f4 ~  f16[ g64( f e f]  as8[ f  d)]
    | bes!8 r r r4 r8
    | \stemUp \slurDown bes4 ~  bes16[ c64( bes a bes]  f'8[ d  bes)]
      \slurNeutral \stemNeutral
    | <es, es'>4 ~  es'16[ f64( es d es]  g8[ es  bes)]
    | g r r r4 r8
    | r4 \clef violin r8 <es'' g bes> r r
    | <d as' bes> r r r4 r8 \clef bass
    | <f,, f'>4 ~  f'16[ g64( f e f]  as8[ f  d)]
    | bes r r r4 r8

% 80
    | r4 \clef violin r8 <bes' d as'> r r
    | <es g> r r r4 r8 \clef bass
    | es, r r g, r r
    | as r r f r r
    | bes r r bes, r r
    | << { es'2. ~ | es8 } \\ { es4.(  des) | c8 } >> r8 r as r r
    | des4.(  d)
    | es es,
    | <as as'>4 ~  as'16[ bes64( as g as]  c8[ as  e)]
    | f r des es!4.

% 90
    | <as, as'>4 ~  as'16[ bes64( as g as]  c8[ as  e)]
    | f8 r des es!4.
    | <as, as'>4 ~  as'16[ bes64( as g as]  c8[ as  e)]
    | f4 r8 r4 e'8(
    |  f4) r8 r4 e8(
    |  f4) r8 r4 r8
    | \set doubleSlurs = ##t
      <ces ces,>4.( <bes bes,>8) r r
      \set doubleSlurs = ##f
    | es,,8 r r bes' r r
    | g r r d r r

% 100
    | es r r bes r r
    | g' r r as r r
    | g r r d r r
    | es r r bes r r
    | <g' g'>4. <c, c'>
    | <f f'> <b, b'>4( <c c'>8)
    | <as as'>4. <bes! bes'>4( <as as'>8)
    | <g' g'>4. <c, c'>
    | <f f'> <b b'>4( <c c'>8)
    | <as as'> r r <as as'> r r

% 110
    | <as as'> r r <as as'> r r
    |  bes[ <es g> <es g>]  bes[ <es g> <es g>]
    | <bes bes'> r r <bes, bes'>4.
    | <es es'>4 ~  es'16[ f64( es d es]  g8[ es  b)]
    | c r as bes!4.
    | <es, es'>4 ~  es'16[ f64( es d es]  g8[ es  b)]
    | c r as bes!4.
    |  es,8[ es es]  es16[( d es d es d]
    |   es8)[ es es]  es16[( d es d es d]
    |   es8)[ es es]  es16[( d es d es d]

% 120
    |   es8)[ es es]  es16[( d es d es d]
    |   es8)[ es es]  es16[( d es d es d]
    |  es[ d es d es d]  es8) r r \clef violin
    | <as' c f> r r <bes f' as> r r
    | <g bes es> r r \clef bass <g,, g'> r r
    | <as as'> r r <bes bes'> r r
    | <es es'> r r <bes bes'> r r
    | <es es'> r r <bes bes'> r r

    \set Staff.subdivideBeams = ##t
    | es \times 2/3 { r16  bes'[( b } \times 2/3 { c cis d] }  es8)
      \times 2/3 { r16  bes,[( b } \times 2/3 { c cis d] }
    \set Staff.subdivideBeams = ##f

    |  es8) r r r4 r8
}
