\version "2.16.0"
violinIFirstMov =  \relative e' {
    \key e \minor
    \clef violin

    \noTupletBracket
\tag #'autograph {
    \noTupletNum
}
\tag #'edited {
    \set tupletSpannerDuration = #(ly:make-moment 1 4)
}

    \repeat volta 2 {
	e2->\f c->
	| e ~ \times 2/3 {  e8[ dis-. \< e-.]  fis[-. g-. a-.] }
	| \times 2/3 {  b[-. c-. dis-.]  e[-. fis-.  g\!-.] } a-.\p r g-. r
	| e,2(->  dis4) r
        | c'2->\f a->
	| c-> ~ \times 2/3 {  c8[ b-. a-.]  g[-. fis-. e-.] }
	| \times 2/3 {  dis[-. e-. fis-.]  g[-. a-. b-.] } a\p r g r
	| fis4 r \times 2/3 { r8  ais,[\f b]  cis[ d dis] }
\tag #'edited {
	\noTupletNum
}
	| e2-> c->

% 10
	| e ~ \times 2/3 {  e8[ dis-. e-.]  fis[-. g-. a-.] }
	| \times 2/3 {  b[-. cis-. dis-.]  e[-. fis-. g-.] }
\tag #'edited {
	\tupletNum
}
          a-.\p r g-. r
	| <c,! c'!>2\f e4..\trill \(  dis32[( \)  e)]
	| <c! c'!>2\f e4..\trill \(  dis32[( \)  e)]
	| c'8 r \times 2/3 { f,,[\p f f]  f[ f f]  f[ f f] }
\tag #'edited {
          \noTupletNum
}
	| c'' r \times 2/3 {  f,,[ f f]  f[ f f]  f[ f f] }
	| b' r \times 2/3 { e,,[\p e e]  e[ e e]  e[ e e] }
	| b'' r \times 2/3 { dis,,[\p dis dis]
                              dis[ dis dis]  dis[ dis dis] }
\tag #'edited {
          \tupletNum
}
        | <e e' >2->\f <e e' >->
	| e'2. \acciaccatura e8 b'8.[(  a16)]

% 20
	| a4(   g8)[ r16 fis] fis4(   e8)[ r16 d]
	| d2(  c8) r \acciaccatura c c'8.[(  b16)]
	| b4(   a8)[ r16 g16] g4(   fis8)[ r16 e]
	| e2(  dis8) r \acciaccatura b fis'8.[(  e16)]
	| e4(   dis8.)[ fis16] c4(   b8.)[ a16]
	| a2(  g8) r  b'8.[(  a16)]
	| a4(   g8)[ r16 fis] fis4(   e8)[ r16 d]
	| d2(  c8) r  c'8.[(  b16)]
	| b4(   a8.)[ g16] g4(   fis8.)[ e16]
	| e2(  d8) r  a'8.[(  g16)]

% 30
	| g4(   fis8)[ r16 e] e4(   d8.)[ c16]
	| b4 r r2
	| \times 2/3 { r8  e'[-.\f d-.]  c[-. b-. a-.] 
                        g[-. fis-. e-.]  d[-. c-. b-.] }
\tag #'edited {
          \noTupletNum
}
        | a4 r r2
	| \times 2/3 { r8  fis''[-. e-.]  d[-. c-. b-.]
	                a[-. g-. fis-.]  e[-. d-. c-.] }
        | b4 r r2
	| \times 2/3 { r8  g''[-. f-.]  e[-. d-. c-.] 
                        b[-. a-. g-.]  f[-. e-. d-.] }
\tag #'edited {
          \tupletNum
}
        | c4 r8. gis'16\p  b8[(  a)] r8. gis16
	|  b8[(  a)] r8. gis16  b8[(  a)] r8. gis16
	| b4(   a8.)[ a16] b4(   a8.)[ a16]

% 40
	| bes4(   a8.)[ g!16] bes4(   a8.)[ g16]
	| <d d'>4\f r8. cis'16 es4(   d8)[ r16 a]
	| c!4(   bes8.)[ fis!16] a4(   g8.)[ cis,16]
	| e!4(  d8) r r4 r8. d,16\p
	| g2(  bes)
	| d->\f bes->
	| d ~ \times 2/3 {  d8[ bes(  a)]  g[-. bes(  c)] }
	| \times 2/3 {  d[-. bes'(  a)]  g[-. bes(  c)]
           d[-. bes(  a)]  g[-. bes(  c)] }
\tag #'edited {
          \noTupletNum
}
\tag #'autograph {
	| \repeat "percent" 2
          { \times 2/3 {  d[-. bes(  c)]  d[-. bes(  c)]
	                  d[-. bes(  c)]  d[-. bes(  c)] } }
}
\tag #'edited {
	| \repeat unfold 2
          { \times 2/3 {  d[-. bes(  c)]  d[-. bes(  c)]
	                  d[-. bes(  c)]  d[-. bes(  c)] } }
}
\tag #'edited {
          \tupletNum
}

% 50
        | d8 r d,, r r2
	| R1
	| a''2(\p  gis)
	| a ~ \times 2/3 {  a8[ b( a]  g[ fis  e)] }
	| d4(--\p d-- d--  d)--
	| e2(  d8) r r4
	| a'2(  gis)
	| a ~ \times 2/3 {  a8[ b( a]  g[ fis  e)] }
	| d4(--\p d-- d--  d)--
	| e2(  d4) r8. g16

% 60
	|  g8[( fis b  a)] d, r d r
	| e2(   d8)[ d'( b  g)]
	|  g[( fis b a]  g[ fis e  d)]
	| d r b'2(->  dis,4)
	| e8 r g2(->  ais,4)
	|  b8[( cis dis  e)]  eis[( fis g!  gis)]
	| a2(  gis)
	| a ~ \times 2/3 {  a8[ b( a]  g[ fis  e)] }
	| d4(--\p d-- d--  d)--
	| e2(  d4) r

% 70
	| a'2(  gis)
	| a ~ \times 2/3 {  a8[ b( a]  g[ fis  e)] }
	| d4(--\p d-- d--  d)--
	| <d d'>2\f fis4.(->  e16[  fis)]
	| <d d'>2 fis4.(->  e16[  fis)]
	| d'2.  fis,,8.[(\trill\f e32  fis)]
	| e2 e''
	| a,,, a'''
	| \times 2/3 { r8  g[\f g]  g[(  e) e]  e[(  cis) cis]  cis[(  bes) bes] }
\tag #'edited {
          \noTupletNum
}
	| \times 2/3 {  bes[(  g) g]  g[(  e) e]  e[(  cis) cis]  cis[(  g') g] }
\tag #'edited {
          \tupletNum
}

% 80
	| d4 r8. fis16 a4(   g8)[ r16 a]
	| c4(   b8)[ r16 cis] e4(   d8.)[ b16]
	| a1\trill
	| a1\trill
	| a1\trill
	| a1\trill
	| a1\trill
	| a1\trill
	| a1\trill
\tag #'autograph {
	| << { a1\trill } { s4 \< s2  s4\! } >>
          % [R] It is hard to determine if this crescendo belongs
          %     to Violin I or Violin II
}
\tag #'edited {
	| a1\trill-\cresc % [E]
}

% 90
\tag #'autograph {
	| a1\trill-\cresc % [R] Ditto for the "cresc."
}
\tag #'edited {
	| a1\trill % [E]
}
	| a1\trill
	| a1\trill
\tag #'autograph {
	| g2->\f e,4.(->  e8) % [R] Probably ")f8"
}
\tag #'edited {
	| g'2->\f e,4.(->  fis8) % [E] To match bar 106 and 109 (Violin II)
}
	| g2.->  a8.[(\p  b16)]
	| c8 r c r c r c r
	| b2( e4..)\trill  dis32[(  e)]
	| a,2( d4..)\trill  cis32[(  d)]
	|  d8[ b'( a g]  dis[ e c  a)]
	| g2(  a)

% 100
	| g_ \markup{\italic "rall. poco"} ~ 
          \times 2/3 {  g8[ b( a]  g[ fis  e)] }
	| d2 d'4..(\trill  cis32[  d)]
	| g,2 ~ \times 2/3 {  g8[ b( a]  g[ fis  e)] }
	| d2 d'4..(\trill  cis32[  d)]

	\bar "||"
    }

    \alternative
    {
        {
	    | g,2 \times 2/3 { r8  fis[-. g-.]  a[-. b-. c-.] }
	    | e,2 fis
	}
	{
	    | g4 r r2
	}
    }
    
    r4 r8. fis'16 a4(   g8.)[ cis,16]
    | e4(->   d8.)[ ais16] c4(->   b8.)[ fis16]
    | g4 r r2

% 110
    | r4 r8. fis'16 a4(   g8.)[ cis,16]
    | es4(   d8.)[ a16] c4(   bes8.)[ a16]
    | a4(  g8) r16 fis' a4(   g8.)[ cis,16]
    | es4  d8.[(  a16)] % [R] A strange slur!
      c4(   bes8.)[ d,16]
    | es2\f es'4..(  es16)
    | es'2 ~ \times 2/3 {  es8[ es d]  c[ bes as] }
\tag #'edited {
    \noTupletNum
}
    | \times 2/3 {  g[ fis g]  bes[ as f]  es[ d es]  g[ f d] }
    | es8 r \times 2/3 {  es,[\fp es es]  es[ es es]  es[ es es] }
    | es' r \times 2/3 {  es,[ es es]  es[ es es]  es[ es es] }
\tag #'autograph {
    | r4 % [R] Perhaps es'8 r
      \times 2/3 {  es8[\p es es]  es[ es es]  es[ es es] }
}
\tag #'edited {
    | es'8 r % [E] This change matches the two previous bars
      \times 2/3 {  es,[\p es es]  es[ es es]  es[ es es] }
}

% 120
    | e'!\f r \times 2/3 {  e,8[\fp e e]  e[ e e]  e[ e e] }
    | f2\f f'4..(->  f16)
\tag #'autograph {
    | f'2 ~ \times 2/3 {  f8[ f des]  b[ c b] } % [R]  f[ f des]  bes[ c bes] ?
}
\tag #'edited {
    | f'2 ~ \times 2/3 {  f8[ f es]  des[ c bes] } % [E] To match bar 115
}
    | \times 2/3 {  as[ g as]  c[ bes g]  f[ e f]  bes[ g e] }
\tag #'autograph {
    | f\f r \times 2/3 { f,4.:8\p f4.: f4.: }
    | f'8 r \times 2/3 { f,4.:8 f4.: f4.: }
    | f'8 r \times 2/3 { f,4.:8 f4.: f4.: }
    | fis'!8 r \times 2/3 { fis,4.:8 fis4.: fis4.: }
}
\tag #'edited {
    | f'8\f r \times 2/3 {  f,8[\p f f]  f[ f f]  f[ f f] }
    | f'8 r \times 2/3 {  f,8[ f f]  f[ f f]  f[ f f] }
    | f'8 r \times 2/3 {  f,8[ f f]  f[ f f]  f[ f f] }
    | fis'!8 r \times 2/3 {  fis,8[ fis fis]  fis[ fis fis]  fis[ fis fis] }
}
    | g2-> g'4..(->  g16)
    | \times 2/3 { r8  g,[ a]  bes[ c d]  e![ fis g]  a[ bes c] }

% 130
    | d4 \< dis  e2\!
    | a,4 r <a, a'>4..( <a a'>16)
\tag #'autograph {
    | \times 2/3 { r8  a[ b]  c[ d e]  fis[ g % [R] Probably gis
                   a]  b[ c d] }
}
\tag #'edited {
    | \times 2/3 { r8  a,[ b]  c[ d e]  fis[ gis % [E] See README
                   a]  b[ c d] } \tupletNum
}
    | e4 eis fis!2
    | b,!4 r8. b16 d4(   c8)[ r16 gis]
    | b4(->   a8)[ r16 a] c!4(->   b8)[ r16 fis!]
    | a4(->   g8)[ r16 g] b4(->   a8)[ r16 e]
    | g4(->   fis8)[ r16 fis] a4(->   g8)[ r16 e]
    | b4 r8. b16\p d4(   c8)[ r16 gis]
    | b4(   a8)[ r16 a] c4(   b8)[ r16 fis]

% 140
    | a4( g8)[_ \markup{\italic "calando"} r16 g] b4(   a8)[ r16 e]
    | g4(   fis8)[ r16 fis] a4(   g8)[ r16 e]
    | b4 r r2
    | r4 b' ~ \times 2/3 {  b8[ cis dis]  e[ g a] }
\tag #'edited {
    \noTupletNum
}
    | \times 2/3 {  b[ g(  a)]  b[ g(  a)]  b[ g(  a)]  b[ g(  a)] }
    | \afterGrace b1\trill\( {a16[( b)]\)}
    | \times 2/3 {  c!8[ a(  b)]  c[ a(  b)]  c[ a(  b)]  c[ a(  b)] }
    | \afterGrace cis1\trill\( {b16[( cis)]\)}
    | \times 2/3 {  d8[ b(  cis)]  d[ b(  cis)]  d[ b(  cis)]  d[ b(  cis)] }
    | \afterGrace dis1\trill {cis16[( dis)]}
\tag #'edited {
      \tupletNum
}

% 150
    | <e, e'>2 <e, e'>
    | <e' e'> <e, e'>
    | <b' b'>4 r \times 2/3 { r8  fis'[\f eis]  e[ dis cis] }
\tag #'edited {
    \noTupletNum
}
    | b r r4 \times 2/3 { r8  a'[ g]  fis[ dis cis] }
\tag #'autograph {
    | \times 2/3 {  b[ b'\f a]  g[ fis e]  d[ c b]  a[ g fis] }
}
\tag #'edited {
    | \times 2/3 {  b[ b'\f a]  g[ fis e]  d![ c! % [E]
                              b]  a[ g fis] }
}
    | e2-> c-> e2 ~ \times 2/3 {  e8[ dis-. e-.]  fis[-. g-. a-.] }
    | \times 2/3 {  b[-. c-. dis-.]  e[-. fis-. g-.] } a-.\p r g r
    | e,1(->
    |  dis4) r r2

% 160
    | c'2-> a->
    | c2 ~ \times 2/3 {  c8[ b-. a-.]  g[-. fis-. e-.] }
    | \times 2/3 {  dis[-. e-. fis-.]  g[-. a-. b-.] } a\p r g r
    | fis4 r \times 2/3 { r8  ais,8[ b]  cis[ d dis] }
    | e2-> c->
    | e2 ~ \times 2/3 { e8  dis[-. e-.]  fis[-. g-. a-.] }
    | \times 2/3 {  b[-. cis-. dis-.]  e[-. fis-. g-.] } a-.\p r g r
\tag #'autograph {
    | \repeat "percent" 2
      { <c,! c'!>2\f e4..(\trill  dis32[  e)] }
}
\tag #'edited {
    | \repeat unfold 2
      { <c! c'!>2\f e4..(\trill  dis32[  e)] }
}
    | c'8 r \times 2/3 {  f,,[\p f f]  f[ f f]  f[ f f] }

% 170
    | c''8 r \times 2/3 {  f,,[\p f f]  f[ f f]  f[ f f] }
    | b'8\f r \times 2/3 {  e,,8[\p e e]  e[ e e]  e[ e e] }
    | b''8 r \times 2/3 {  dis,,8[\fp dis dis]  dis[ dis dis]  dis[ dis dis] }
\tag #'edited {
      \tupletNum
}
    | <e e'>2->\f <e e'>->
\tag #'autograph {
    | e'2. \acciaccatura e8 b'8.[(\p  a16)]
}
\tag #'edited {
    | e2. \acciaccatura e8 b'8.[(  a16)]
}
    | a4(   g8)[ r16 fis] fis4(   e8)[ r16 d]
    | d2(  c4) \acciaccatura c8 c'8.[(  b16)]
    | b4(   a8)[ r16 g] g4(   fis8)[ r16 e]
    | e2(  dis8) r \acciaccatura b fis'8.[(  e16)]
    | e4(   dis8.)[ fis16] c4(   b8.)[ a16]

% 180
    | a2(  gis8) r \acciaccatura b8 b'8.[(  a16)]
    | a4(   gis8)[ r16 b] f4(   e8)[ r16 d]
    | c4 r r  e8.[(  e'16)]
    | e4(   d8.)[ e16] % [R] Maybe   d8.)[ fis16]
      e4(   d8.)[ c16]
    | c4(   b8.)[ d16] g,4  g8.[(\f  g16)]
    | g'2.  g,8.[(  g16)]
    | g'2.  g,8.[(  g16)]
    | g'4->  g,8.[(  g16)] g'4->  g,8.[(  g16)]
    | g'4->  g,8.[(  g16)] g'4->  g,8.[(  g16)]
    | g'4 r r2

% 190
    | R1
    | d,2(  cis)
    | d ~ \times 2/3 {  d8[ e( d]  c[ b  a)] }
    | g4(-- g-- g--  g)--
    | c!4  a8.[(\f  a16)] <a a'>4  a8.[(  a16)]
    | <a a'>4  a8.[(  a16)] <a a'>4  a8.[(\p  a16)]
    | e'2(  dis)
    | e2 ~ \times 2/3 {  e8[ fis!( e]  d[ cis  b)] }
    | a4(-- a-- a--  a)--
    | d8 r  b8.[(  b16)] <b b' >4->  b8.[(  b16)]

% 200
    | <b b' >4->  b8.[(  b16)] <b b' >4->  b8.[(  b16)]

    \key e \major
    \bar "||"

    | fis'2(  eis)
    | fis2 ~ \times 2/3 {  fis8[ gis( fis]  e[ dis  cis)] }
    | b4(-- b-- b--  b)--
    | cis2(  b8) r e4
    |  e8[( dis gis  fis)] b,4 b
    | cis2(   b8)[ b'( gis  e)]

% 210
    |  e[( dis gis fis]  e[ dis cis  b)]
    | b4 gis'2(  bis,4)
    | cis e2(  fisis,4)
    |  gis8[( ais bis cis]  d[ dis e  eis)]
    | fis2(  eis)
    | fis2 ~ \times 2/3 {  fis8[ gis( fis]  e[ dis  cis)] }
    | b4(-- \< b-- b--  b\!)--
    | cis2(  b8) r r4
    | fis'2(  eis)
    | fis ~ \times 2/3 {  fis8[ gis( fis]  e[ dis  cis)] }
    | b4(-- b-- b--  b)--
\tag #'autograph {
    | \repeat "percent" 2 { <b b' >2-> dis4..\trill \(  cis32[( \)  dis)] }
}
\tag #'edited {
    | \repeat unfold 2 { <b b' >2-> dis4..\trill \(  cis32[( \)  dis)] }
}

% 220
    | b'2.  d,,8.[(\trill cis32  d)]
    | cis2 cis''->
    | fis,, fis''->
    | \times 2/3 { r8  e[\f e]  e[(  cis) cis]  cis[(  ais) ais]  ais[(  g) g] }
    | \times 2/3 {  g[(  e) e]  e[(  cis) cis]  cis[(  ais) ais]  ais[(  e') e] }
    | b4 r8. dis16 fis4(   e8)[ r16 fisis]
    | a4(   gis8)[ r16 ais] cis4(   b8)[ r16 gis]
    | fis1\trill\p
    | fis\trill
    | fis\trill

% 230
    | fis\trill
    | fis\trill
    | fis\trill- \markup{\italic "cresc. e rinf."}
    | fis\trill
    | fis\trill
    | fis\trill
    | fis\trill
    | fis\trill
    | e2-> cis,4..(  dis16)
    | e2. fis8.[(\p  gis16)]

% 240
    | a8 r a r a r a r
\tag #'autograph {
    | gis2 cis4..\trill \(  bis32[( \)  cis)]
    | fis,2-\cresc b4..\trill % [R] A cautionary natural here?
      \(  ais32[( \)  b)]
}
\tag #'edited {
    | gis2 cis4..\(  bis32[(  cis)\)]
    | fis,2-\cresc b4..\( ais32[(  b)\)]
}
    |  b8[( gis' fis e]  bis[ cis a  fis)]
    | e2 \acciaccatura gis8 fis2

    \key e \minor
    \bar "||"

\tag #'autograph {
    | \times 2/3 { e4.:8-\cresc g: c: e: }
    | \times 2/3 { g!: c: e: g: }
    | \times 2/3 { f: e: f: e: }
    | \times 2/3 { f: e: f: e: }
}
\tag #'edited {
    | \times 2/3 {  e,,8[-\cresc e e]  g[ g g]  c[ c c]  e[ e e] } \noTupletNum
    | \times 2/3 {  g![ g g]  c[ c c]  e[ e e]  g[ g g] }
    | \times 2/3 { \repeat unfold 4 {  f[ f f]  e[ e e] } } \tupletNum
}
    | e4(   dis8.)[ fis16] c!4(   b8.)[ a16]

% 250
    | a4(   gis8.)[ b16] f4(   e8.)[ d16]
    | c4 r8. gis'16  b8[(  a)] r8. gis16
    |  b8[(  a)] r8. gis16  b8[(  a)] r8. gis16
    | a2 e'4..(->  e16)
    | e,2 g4  fis8.[(  e16)]
    | b4 r8. ais'16 c4(   b8.)[ f16]
    | a4(   g8)[ r16 dis] fis4(   e8)[ r16 ais,]
    | b1
    | e2( g
    | <b, b'>1)

% 260
    | <c c'>\fp
    | <c c'>\p
    | \times 2/3 {  b'8[(\f  a) a-.]  a[(  fis) fis-.] 
                    fis[(  dis) dis-.]  dis[(  b) b-.] }
\tag #'edited {
      \noTupletNum
}
    | e8 r \times 2/3 {  e,[\f e e]  e[ e e]  e[ e e] }
    | g' r \times 2/3 {  e,[ e e]  e[ e e]  e[ e e] }
    | b'' r \times 2/3 {  e,,[ e e]  e[ e e]  e[ e e] }
\tag #'autograph {
    | \repeat "percent" 2
      { e'' r \times 2/3 {  e,,[ e e]  e[ e e]  e[ e e] } }
}
\tag #'edited {
    | \repeat unfold 2
      { e'' r \times 2/3 {  e,,[ e e]  e[ e e]  e[ e e] } }
}
    | \times 2/3 {  e''[(  e,) e]  e'[(  e,) e]  e'[(  e,) e]  e'[(  e,) e] }
    | \times 2/3 {  e'[(  e,) e]  e'[(  e,) e]  e'[(  e,) e]  e'[(  e,) e] }

% 270
    | e'4 r c,,4..(-> d16
    |  e4) r r2\fermata
    
    \bar "||"
}
