#(ly:set-option 'old-relative)
%%% -*- LilyPond -*-

\version "2.10.10"

celloSecondMov =  \relative d {
    \key d \major
    \clef bass

    \noTupletBracket
    \set tupletSpannerDuration = #(ly:make-moment 1 8)

    d2.\p
    | g,
    | e2(  a4)
    | d,2.
    | d'
    | d,
    | a'2(  d4)
    | a( d  g,)
    | a4.  a8[(-. a-.  a)-.]
    | g2.
    | fis2(  f4)
    | e2.
    | a2( ~  a8[  b)]
    | c2.
    | \slurDown \stemUp b4( cis!  d) \slurNeutral \stemNeutral
    | g,(  a2)
    | gis2.
    | a4( ais  b)
    | g!(  a!2)
    | d,4 r d'8 r
    | a r a' r r4
    | a,4 r a'8 r
    | d, r d' r r4
    | R2.*5
    | g,,4(  a2)

%%% 30
    | d,8 r d'4(  e)
    | d( b  a)
    | gis( e'  d)
    | cis(  a8) r  cis'[ cis]
    |  d[ d b b a a]
    |  gis[ gis a a gis gis]
    |  fis[ fis gis gis fis fis]
    |  eis[ eis fis fis e e]
    | d2. ~
    | d

%%% 40
    | e
    |  d,8[( fis d fis d  fis)]
    | d4 r8  b'[( cis  d)]
    |  e[-. e-.] r  e[(  dis) dis-.]
    | r dis(   e)[ e e, e]
    |  a[ a' a a cis cis]
    |  d![( d e e d  d)]
    |  cis[( cis d d cis  cis)]
    |  b[ b, \<]  b[ b bes  bes\!]
    | a2\f r4

%%% 50
    | R2.
    | d2.\p
    | g,
    | e2(  a4)
    | d,2.
    | d'
    | d,
    | a'2(  d4)
    | \stemUp a( d  g,) \stemNeutral
    | a4.  a8[(-. a-.  a)-.]

%%% 60
    | g2.
    | fis2 f4
    | e2.
    | a2 ~  a8[(  b)]
    | c2.
    | \slurDown \stemUp b4( cis!  d) \slurNeutral \stemNeutral
    | g,(  a2)
    | gis2.
    | a4( ais  b)
    | g!(  a!2)

%%% 70
    | d,4 r d'8 r
    | a4 r a'8 r
    | a,4 r a'8 r
    | d, r d' r r4
    | R2.*4
    | r4 r  a,8[(  b)]
    | g r a r a r

%%% 80
    | d2. ~
    | d ~
    | d
    | d,
    | \times 2/3 {  d16[( fis a]  d[ cis  d)] \noTupletNum
                    d,[( fis a]  d[ cis  d)] 
                    d,[( fis a]  d[ cis  d)] }
    | d,2 r4\fermata
}
