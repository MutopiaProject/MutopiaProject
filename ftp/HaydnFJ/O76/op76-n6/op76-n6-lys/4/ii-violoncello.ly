\version "2.6.0"
celloSecondMov =  \relative es {
  \key es \major
  \clef bass

  \noTupletBracket
  \set tupletSpannerDuration = #(ly:make-moment 1 8)

  es4( f es)
  | bes << { es,2\fermata } { s4-\< s8-\!-\> s8-\! } >>
  | f'4( g f)
  | c << { f,2\fermata } { s4-\< s8-\!-\> s8-\! } >>
  | R2.*2
  | bes2.(
  | es,4) r r
  | R2.*2

  % 11
  | f'4( g as8 a)
  | bes4 b2
  | c4 g,2(
  | as4) as'-. r
  | bes,2.(-\<
  | es,4)-\! r r
  | R2.
  | g'4(\p fis\fz g)
  | as a2\fz

  % 20
  | bes4 r r
  | R2.*2
  | r4 r \times 2/3 { e,16(\p f a) c-. a-. f-. }
  | r4 r \times 2/3 { cis16( d f) a-. f-. d-. }
  | r4 r \times 2/3 { d,16( f a) bes-. f-. d-. }
  | es4 r r
  | f'2. ~
  | f4. f8[ f f]
  | bes,2.-\> ~

  % 30
  | bes4.-\! bes8[ bes bes]
  | \repeat unfold 12 bes
  | bes2. ~
  | bes4 r r
  | ges( f es)
  | bes'-\< << { es,2-\!\fermata } { s4-\> s4-\! } >>
  | ces'( bes as)
  | es-\< << { as2-\!\fermata } { s4-\> s4-\! } >>
  | R2.

  % 40
  | as'4( ges es)
  | bes2.\trill ~
  | bes4 r r
  | es,( d es)
  | e f ~ \times 2/3 { f16( as c) as-. f-. es-. }
  | d4 es ~ \times 2/3 { es16( g bes) g-. es-. d-. } \noTupletNum
  | \times 2/3 { c[ es g as bes c]
    d,[ f as bes c d] 
  es,[ g bes es f g] }
  | as2. ~
  | as
  | g

  % 50
  | as4 r r
  | bes,2\f r4
  | es,\p^\markup { "pizz." } r r
  | R2.
  | r4 bes''(\p^\markup { "arco" } as
  | bes) c des\fz ~
  | des d es\fz ~
  | es e e
  | es!2( d4)
  | des2( c4)

  % 60
  | bes2( c4)
  | as4 r r
  | bes,2. ~
  | bes4. bes8[ bes bes]
  | bes2.(-\>
  | <c, c'>4)\fermata r8 bes'8[\pp bes bes]
  | bes2.(
  | ces4) r r
  | bes r bes
  | es,2.

  % 70
  | d4( cis d)
  | es2.
  | d4( cis d)
  | \tupletNum 
  \repeat unfold 3 { \times 2/3 { es16[( d es g bes g)] } 
  \noTupletNum }
  | es2.\fermata   

  \bar "|."
}
