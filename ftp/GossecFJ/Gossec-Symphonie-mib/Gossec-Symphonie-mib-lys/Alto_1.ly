\version "2.16.0"      %Gossec - Symphonie mi bémol
                        %Alto - 1er mvt
\relative c'{
\clef alto
\key ees \major
\time 3/2




g2( bes d)
ees1.\<
bes\!\p
bes2 bes bes4 r
bes1.\<( 
aes2\!) r r
r r aes
g r r
bes\f bes bes
bes bes r
\set Score.skipBars = ##t R1. * 3 
%
%
<<\voiceOne {f'2( ees d) | c} \\
  \voiceTwo {d2( c bes) | a}>> r2 r
f'1.
bes,\< ~
bes2 r\! r
bes1.\< ~
bes2 r\! r
bes r r
\set Score.skipBars = ##t R1. * 3 
%
%
r2 r ees
f( ees d)
ees4 r f r f r
f, r bes r d r
ees r ees r f r
g r f r c r
c r bes r d r
ees r ees r f r
g r f r c r
bes2-|\f d-| r
ees4\p r f r f, r
bes_\markup{\italic "cresc."} r bes r bes r
g'2\f d c
c1( bes2) \repeat volta 2 {
f'1.\< ~
f2\!\> ees\p( d)
c\f r r
c\f r r
g'\f( aes fis)
g g, r
aes1\<( bes2\!)
aes1\p( g2)
aes1 a2
bes1.
\set Score.skipBars = ##t R1. * 3 
%
%
<<\voiceOne {bes'2( aes g) | f} \\
  \voiceTwo {g2( f ees) | d}>> r2 r
R1.
r4 ees ees ees ees2
r4 c c c c2
r4 aes aes aes aes2
r4 aes aes aes aes a
bes2 r r
r4^\markup{\italic "pizz."} ees r ees r ees
r ees r f r bes,
R1.
bes1.\<^\markup{\italic "arco"} ~
bes2\! r r
bes1.\< ~
bes2\! r r
ees r r
\set Score.skipBars = ##t R1. * 2 
%
r2 r4 ees-|\f bes-| g-|
c2 bes bes }
\alternative { {bes2 g g | g1.} 
   {ees'1\p d2} }
c1 bes2
aes1.
g2 g g
g1.^\fermataMarkup_\markup{\italic "Segue"} \bar "|." 
}
