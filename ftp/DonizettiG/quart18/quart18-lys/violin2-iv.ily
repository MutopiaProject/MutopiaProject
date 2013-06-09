\version "2.16.0"

violinIIFourthMov =  \relative ais {
    \key e \major
    \clef violin

    R2.*2
\tag #'autograph {
    |  ais8.[\f <cis ais'>32 <cis ais'>] <cis ais':>2:8
    | <b gis'>8.[\f <b gis'>32\p <b gis'>] <b: gis':>2
    | <b a'>8.[ <b a'>32 <b a'>] <b: a':>2
    |  e8.[ e32 e] e2:
    |  dis8.[ dis32 dis] dis2:
    | <b gis'>8.[ <b gis'>32 <b gis'>] <b: gis':>2
    | <b a'>8.[ <b a'>32 <b a'>] <b: a':>2
}
\tag #'edited {
    |  ais8.[\f <cis ais'>32 q] q8[ q]  q[ q]
    | <b gis'>8.[\f q32\p q] q8[ q]  q[ q]
    | <b a'>8.[ q32 q] q8[ q]  q[ q]
    |  e8.[ e32 e]  e8[ e]  e[ e]
    |  dis8.[ dis32 dis]  dis8[ dis]  dis[ dis]
    | <b gis'>8.[ q32 q] q8[ q]  q[ q]
    | <b a'>8.[ q32 q] q8[ q]  q[ q]
}

% 10
    |  e8.[ e32 e]  e8[ e]  e[ e]
    |  dis[ e] \slurUp <ais,  e'>4( <b dis>8) r \slurNeutral
    | R2.*2
\tag #'autograph {
    |  bes8.[ <des bes'>32 <des bes'>] <des: bes':>2
    |  a8.[ <c a'>32 <c a'>] <c: a':>2
}
\tag #'edited {
    |  bes8.[ <des bes'>32 q] q8[ q]  q[ q]
    |  a8.[ <c a'>32 q] q8[ q]  q[ q]
}
    | r8 <c bes'> r <c bes'> r <c bes'>
\tag #'autograph {
    | <a f'>8.[ <a f'>32 <a f'>] <a: f':>2
}
\tag #'edited {
    | <a f'>8.[ <a f'>32 q] q8[ q]  q[ q]
}
    | r8 <cis! e> r8 <cis e> r8 <cis e>
\tag #'autograph {
    | <d e>8.[ <d e>32 <d e>] <d: e:>2
}
\tag #'edited {
    | <d e>8.[ <d e>32 q] q8[ q]  q[ q]
}

% 20
    | r8 <c e!> r8 <c e> r8 <c e>
    |  g'8.[ g32 g]  g8[ g]  g[ ais,]
    |  b16.[ e32 dis!16. cis32] b2
\tag #'autograph {
    | b8 r << { b4..->  cis32[ dis] } { s4.\< s16.  s32\! } >>
    |  e8.[\f <b gis'>32\p <b gis'>] <b: gis':>2
    | <b a'>8.[ <b a'>32 <b a'>] <b: a':>2
    |  e8.[ e32 e] e2:
    | <bis dis>8.[ <bis dis>32 <bis dis>] <bis: dis:>2
    |  gis'8.[\fp gis32 gis] gis2:
    | <b, a'>8.[ <b a'>32 <b a'>] <b: a':>2
}
\tag #'edited {
    | b8 r << { b4..->  cis32[ dis] } { s4. \< s16.  s32\! } >>
    |  e8.[\f <b gis'>32\p q] q8[ q]  q[ q]
    | <b a'>8.[ <b a'>32 q] q8[ q]  q[ q]
    |  e8.[ e32 e]  e8[ e]  e[ e]
    | <bis dis>8.[ <bis dis>32 q] q8[ q]  q[ q]
    |  gis'8.[\fp gis32 gis]  gis8[ gis]  gis[ gis]
    | <b, a'>8.[ <b a'>32 q] q8[ q]  q[ q]
}

% 30
    |  e8.[ e32 e]  e8[ e]  cis[ a']
    | <b, gis'>[ <b a'>] \slurUp <b a'>4( ~ <b gis'>8) \slurNeutral r
    | r4 gis'2\p
    | fis2.
    | a8 r a2
    | gis  cis16.[ d32 cis16. cis32]
    | b4  b16.[ cis32 b16. b32]  fis8.[(  fis16)]
    | b4 g  eis8.[ eis16]
    |  fis16.[ \< fis32 g16. fis32]  g16.[ gis32 ais16. gis32] 
       ais16.[ ais32 b16.  ais32\!]
    | b2\p r4

% 40
    |  ais16.[ fis32 eis16. fis32]  gis16.[ gis32 fisis16. gis32] 
       ais16.[ ais32 gisis16. ais32]
    | b2 r4
\tag #'autograph {
    | \repeat "percent" 2 {
           fis16.[\f b32 ais16. gis32]  fis16.[ cis'32 ais16. gis32] 
           fis16.[ e'32 cis16. ais32] }
}
\tag #'edited {
    | \repeat unfold 2 {
           fis16.[\f b32 ais16. gis32]  fis16.[ cis'32 ais16. gis32] 
           fis16.[ e'32 cis16. ais32] }
}
    |  fis16.[\f gis32 fis16. gis32]  fis16.[ gis32 fis16. gis32] 
       fis16.[ e32 dis16. cis32]
    |  b8[\p <b dis>] r <b dis> r <b dis>
    | \repeat unfold 3 { r <b e> }
    | \repeat unfold 3 { r <ais dis> }
    | \repeat unfold 6 { r <b dis> }

% 50
    | \repeat unfold 3 { r <gis eis'> }
    | r8 <cis fis> r <cis fis> r <b gis'>
    | <ais fis'> r r  b'[(\p ais b]
    |  ais) r r  dis[( cis d]
    |  cis) r r4 r
    |  b,8[\p <b dis>] r <b dis> r <b dis>
    | \repeat unfold 3 { r <gis e'> }
\tag #'autograph {
    | \repeat unfold 3 { r <ais e> } % [R] Probably <ais dis>
}
\tag #'edited {
    | \repeat unfold 3 { r <ais dis> } % [E]
}
    | \repeat unfold 3 { r <b dis> }
    | \repeat unfold 3 { r <gis fis'> }

% 60
    | \repeat unfold 3 { r <gis e'> }
    | r8 <b dis!> r <b dis> r <cis e>
    | <b dis> r dis'4  cis16.[ dis32 cis16. bis32]
    | cis8 r fis4. eis8
    | e!2  dis16.[ e32 dis16. cis32]
    | dis8 r gis4.-> fisis8
    | gis r d4 cis ~
    | cis ais b
    |  cis8[ b]  ais[ gis]  fis[ e16. cis32]
    | dis4 r r

% 70
    | r16.  b32[ cis16. dis32]  e16.[ fis32 gis16. ais32] b4 ~
    |  b16.[ fis32 gis16. ais32]  b16.[ cis32 dis16. e32] 
       fis16.[ eis32 fis16. eis32]
    | \repeat unfold 3 {  fis16.[ eis32 fis16. eis32] }
    | fis2. ~
    | fis8 fis4 fis fis8 ~
    |  fis16.[ fis32 e16. dis32]  cis16.[ b32 ais16. gis32] 
       fis16.[ e32 dis16. cisis32]
    | dis4( d  cis)
    | b( ais  b)
    | g2 r4
    | b4 r r

% 80
    | g2.(
    |  b4) r r
    | g2.(\f
    |  b4) r r
    | R2.*2
\tag #'autograph {
    |  e8.[ e32 e] e2:
    | <c a'>8.[ <c a'>32 <c a'>] <c: a':>2
}
\tag #'edited {
    |  e8.[ e32 e]  e8[ e]  e[ e]
    | <c a'>8.[ <c a'>32 q] q8[ q]  q[ q]
}
    | r8 <c bes'> r <c bes'> r <c bes'>
\tag #'autograph {
    | r2. % [R] Better: R2.*2
}
\tag #'edited {
    | R2.*2 % [E]
}

\tag #'autograph {
% 90
    | r2.
    |  fis!8.[ fis32 fis] fis2:
    | <d b'>8.[ <d b'>32 <d b'>] <d: b':>2
    | <d c'>8.[ <d c'>32 <d c'>] <d: c':>2
}
\tag #'edited {
% 91
    |  fis!8.[ fis32 fis]  fis8[ fis]  fis[ fis]
    | <d b'>8.[ <d b'>32 q] q8[ q]  q[ q]
    | <d c'>8.[ <d c'>32 q] q8[ q]  q[ q]
}
    | <d b'>8 r  fis16.[\p a32 g16. fis32]  g8[ b]
    |  b8.[(  b16)] e4  d16.[ b32(  c16.) d32(]
    |   e16.)[ c32(  d16.) e32(]   d16.)[ b32(  c16.) d32(]   e8.)[ e16]
    |  cis8.[(  cis16)]  fis16.[ d32 e16. fis32]  e16.[ cis32 d16. e32]
    |  fis16.[ d32 e16. fis32]  e16.[ cis32 d16. e32]  fis8.[ fis16]
    |  g16.[ e32 fis16. g32]  fis16.[ dis32 e16. fis32]  e16.[ b32 e16. d32]

% 100
    |  cis8.[(  cis16)] d4  e8.[(\trill d32  e)]
    |  fis16.[ d32(  e16.) fis32(]   e16.)[ cis32(  d16.) e32(] 
\tag #'autograph {
        d16.)[ a32(  d16.) cis32(] % [R] Probably c(
    |   b8.)[ b16] cis4 % [R] Probably c4
}
\tag #'edited {
        d16.)[ a32(  d16.) c32(] % [E]
    |   b8.)[ b16] c4 % [E
}
       d8.[(\trill cis32  d)]
    |  e16.[ cis32(  dis16.) e32(]   d16.)[ b32(  cis16.) d32(] 
        cis16.)[ g32(  cis16.) b32(]
    |  ais4) b  cis8.[(  cis16)]
    |  b16.[ e32(  d16.) cis32(]   b16.)[ e32(  d16.) cis32(] 
        b16.)[ e32(  d16.) cis32]
    |  b16.[ e32(  d16.) cis32(]   b16.)[ cis32(  b16.) a32(] 
        g16.)[ f32(  e16.) d32]
    | c2.
    | g
    | a

% 110
    | b4 r r
\tag #'autograph {
    |  g8.[\p g32 g] g2:
}
\tag #'edited {
    |  g8.[\p g32 g]  g8[ g]  g[ g]
}
    | b4 r r
\tag #'autograph {
    |  g8.[ g32 g] g2:
}
\tag #'edited {
    |  g8.[ g32 g]  g8[ g]  g[ g]
}
    |  b16.[ ais32(  b16.) c32(]   b16.)[ ais32(  b16.) c32(]  b8) r
\tag #'autograph {
    | \repeat unfold 5 { r2. } % [R] Better: R2.*5
}
\tag #'edited {
    | R2.*5 % [E]
}

% 120
\tag #'autograph {
    | <cis! ais'>8.[ <cis ais'>32 <cis ais'>] <cis: ais':>2
    | <b gis'!>8.[ <b gis'>32 <b gis'>] <b: gis':>2
    | <b a'>8.[ <b a'>32 <b a'>] <b: a':>2
    |  e8.[ e32 e] e2:
    |  dis8.[ dis32 dis] dis2:
    | <b gis'>8.[ <b gis'>32 <b gis'>] <b: gis':>2
    | <b a'>8.[ <b a'>32 <b a'>] <b: a':>2
    |  e8.[ e32 e] e2:
}
\tag #'edited {
    | <cis! ais'>8.[ <cis ais'>32 q] q8[ q]  q[ q]
    | <b gis'!>8.[ <b gis'>32 q] q8[ q]  q[ q]
    | <b a'>8.[ <b a'>32 q] q8[ q]  q[ q]
    |  e8.[ e32 e]  e8[ e]  e[ e]
    |  dis8.[ dis32 dis]  dis8[ dis]  dis[ dis]
    | <b gis'>8.[ <b gis'>32 q] q8[ q]  q[ q]
    | <b a'>8.[ <b a'>32 q] q8[ q]  q[ q]
    |  e8.[ e32 e]  e8[ e]  e[ e]
}
       \set doubleSlurs = ##t
    |  dis8[ e] <ais,  e'>4( <b dis>8) r
       \set doubleSlurs = ##f
\tag #'autograph {
    | r2. % [R] Better: R2.*2
}
\tag #'edited {
    | R2.*2
}

\tag #'autograph {
% 130
    | r2.
    |  bes8.[ <des bes'>32 <des bes'>] <des: bes':>2
    | <c a'>8.[ <c a'>32 <c a'>] <c: a':>2
}
\tag #'edited {
% 131
    |  bes8.[ <des bes'>32 <des bes'>] 
      <des bes'>8[ <des bes'> <des bes'> <des bes'>]
    | <c a'>8.[ <c a'>32 <c a'>] 
      <c a'>8[ <c a'> <c a'> <c a'>]
}
    | \repeat unfold 3 { r8 <c bes'>8 }
\tag #'autograph {
    | <a f'>8.[ <a f'>32 <a f'>] <a: f':>2
}
\tag #'edited {
    | <a f'>8.[ <a f'>32 <a f'>] <a f'>8[ <a f'> <a f'> <a f'>]
}
    | r8 <cis! e> r <cis e> r <cis e>
\tag #'autograph {
    | <d e>8.[ <d e>32 <d e>] <d: e:>2
}
\tag #'edited {
    | <d e>8.[ <d e>32 <d e>] <d e>8[ <d e> <d e> <d e>]
}
    | \repeat unfold 3 { r8 <c e> }
    | <ais g'>8.[ <ais g'>32 <ais g'>] <ais g'>8[ <ais g'>] <ais g'>[ ais]
    |  b16.[ e32 dis16. cis32] b8 r  c'8.[(  c16)]

% 140
    |  b16.[ e32 dis16. cis!32] b8 r  c8.[(  c16)]
\tag #'autograph {
    |  b16.[ cis!32 b16. 
      a32] % [R] Is this a32 or ais32? The autograph has no accidental
      gis8 r  a!8.[(  a16)]
}
\tag #'edited {
    |  b16.[ cis!32 b16. a32] gis8 r  a8.[(  a16)] % [E]
}
    |  gis!8.[ ais16]  bis8.[ gis16]  a8.[ cis16]
    |  bis8[(\p b ais a gis  gis)]
    |  fisis[( fis eis e dis  fis)]
    | e2 cis4
    |  gis'8[( eis fis dis e  cis)]
    |  dis[( bis cis ais bis  gis)]
    | \repeat unfold 3 {  cis16.[ dis32 cis16. bis32] }
    | bis8 r e2(

% 150
    |  dis8) r e2(
    |  dis8) r r4 r
\tag #'autograph {
    | r2. % [R] Better: R2.
}
\tag #'edited {
    | R2. % [E]
}
    | \repeat unfold 3 { r8 <b gis'>8 }
    | r8 cis r cis r cis
    | r bis r bis r bis
    | r cis r cis r cis
    | \repeat unfold 3 { r8 <b gis'>8 }
    | \repeat unfold 3 { r <cis e> }
    | r <b dis> r <b dis> r <ais e'>

% 160
    | <b dis>4 r8  g'[( fis  g)]
    | fis4 r8  g[( fis  g)]
    | fis r r4 r
\tag #'autograph {
    | \repeat "tremolo" 3 { gis8(  e) } % [R] The autograph is different
    | \repeat "tremolo" 2 { a8(  c,) }  fis[(  cis)]
}
\tag #'edited {
    |  gis'8[( e gis8 e gis8  e)] % [R] The autograph is different
    |  a8[( cis, a'  cis,)]  fis[(  cis)]
}
    |  dis[-. fis-.]  dis[-. gis,-.]  dis'[-. gis,-.]
    |  cis[-. e-.]  gis,[( cis e  cis)]
    | gis'4 eis2
    | r8 <cis a'> r <cis a'> r <cis fisis>
\tag #'autograph {
    | \cadenzaOn % [R] To match the mistake of the viola
      r <b gis'> r <b ais'> r dis s % [R] the last s matches the viola
      \bar "|"
      \cadenzaOff
}
\tag #'edited {
    | r <b gis'> r <b ais'> r dis
}

% 170
      eis r gis4\f fis ~
    | fis b4. ais8
\tag #'autograph {
    | a2 % [R] A cautionary accidental should be placed here
}
\tag #'edited {
    | a!2 % [E]
}
      gis4 ~
    | gis cis4. bis8
    | cis r g4(  fis)(
    | fis dis  e)
    |  fis8[ e dis cis]  b8[ ais16. ais32]
    | gis8 r r4 r
    | r16.  e'32[ fis16. gis32]  a16.[ b32 cis16. dis32] e4 ~
    |  e16.[ b32 cis16. dis32]  e16.[ fis32 gis16. a32] 
       b16.[ ais32 b16. ais32]

% 180
    | \repeat unfold 3 {  b16.[ ais32 b16. ais32] }
    | b2. ~
    | b8 b4 b b8 ~
    |  b16.[ b32 a16. gis32]  fis16.[ e32 dis16. cis32] 
       b16.[ ais32 gis16. fisis32]
    | gis4( fisis  fis)
    | e( dis  e)
    | c2(\f  b4)
    | b r r
\tag #'autograph {
    |  c8.[\p c32 c] c2:
}
\tag #'edited {
    |  c8.[\p c32 c]  c8[ c]  c[ c]
}
    | b4 r r

% 190
    |  bes8.[ bes32 bes]  bes8[ bes bes bes]
\tag #'autograph {
    |  a8.[ c32 c]  c8[ c c c(]
}
\tag #'edited {
    |  a8.[- \markup{\italic "cresc. poco"} c32 c]  c8[ c c c(]
}
    |   b8.)[ d32 d]  d8[ d d d]
\tag #'autograph {
    |  cis[ e( dis! fis e  g)]
}
\tag #'edited {
    |  cis,[ e(-\cresc dis! fis e  g)]
}
    |  fis[( a gis b a  c)]
    |  b[ cis16 dis]  e8[ dis16 e]  e8[ dis16 e]
    | <b gis'>16.[ e32(  dis16.) cis32(] <b gis'>16.[ e32)(  dis16.) cis32(] 
      <b gis'>16.[ e32)(  dis16.) cis32]
    | b8 r r4 r
\tag #'autograph {
    | r2. % [R] Better: R2.*2
    | r2.
}
\tag #'edited {
    | R2.*2 % [E]
}

% 200
\tag #'autograph {
    | \repeat "tremolo" 3 { cis,8(  e) }
}
\tag #'edited {
    |  cis8[( e cis e cis  e)]
}
    |  e8.[ e32 e] e2
    | <cis e>2.(
    | <c e>)
    | <b g'>
    | fisis'
    |  gis8[ b,] r gis r <b gis'>
    | \repeat unfold 3 { r <b gis'> }
\tag #'autograph {
    |  e8.[ e32 e] e2:
    |  dis8.[ dis32 dis] dis2:
}
\tag #'edited {
    |  e8.[ e32 e]  e8[ e]  e[ e]
    |  dis8.[ dis32 dis]  dis8[ dis]  dis[ dis]
}

% 210
    | e8 r
    \override NoteColumn #'ignore-collision = ##t
      <<
          { \stemDown <e' gis,>2 ~ | \stemUp e4  dis8[( cis]  dis) r \stemNeutral }
	  \context Voice = "x"           {
	      \voiceTwo \hideNotes gis,2( | \unHideNotes fis2.)
	  }
      >> \oneVoice
    | e8 r
      <<
          { \stemDown <e' gis,>2 ~ | \stemUp e4  dis8[( cis]  dis) r \stemNeutral }
	  \context Voice = "x"           {
	      \voiceTwo \hideNotes gis,2( | \unHideNotes fis2.)
	  }
      >> \oneVoice
    \revert NoteColumn #'ignore-collision
\tag #'autograph {
    | <gis' e'>8 <b, a'>16[ <b a'>] <b: a':>2
}
\tag #'edited {
    | <gis e'>8[ <b, a'>16 <b a'>] <b: a':>2
}
    | <b gis'>8[ <b a'>16 <b a'>] <b: a':>2
    | \repeat unfold 6 { <b gis'>8[ <b a'>] }
    | <b gis'> r <b gis'>4 r
    | a2.(\fp

% 220
    |  gis)\fermata

    \bar "|."
}
