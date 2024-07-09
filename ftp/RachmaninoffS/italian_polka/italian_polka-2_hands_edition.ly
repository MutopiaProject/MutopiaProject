\version "2.18.2"

\paper {
  indent = 15\mm
  markup-system-spacing #'basic-distance = #23
  max-systems-per-page = 5
  page-count = 2
  system-count = 10
  ragged-right = ##f
}

\header {
  title = \markup {
    \column { 
      \fill-line { 
        \line { \small \italic { à Mousieur S. ZILOTI. } }
        \line { \small \italic { "Посвящается С. И. Зилоти." } }
      }
      \fill-line {
        \line { POLKA ITALIENNE }
        \line { ИТАЛЬЯНСКАЯ ПОЛЬКА }
      }
      \fill-line {
        \line { \fontsize #-2 { par S. Rachmaninoff. } }
        \line { \fontsize #-2 { записанная С. Рахманиновымъ. } }
      }
      \fill-line {
        \line { \small { Edition à 2 mains, par A. Ziloti. } }
        \line { \small { \concat { "Переложен"\char ##x0456 "е для 2-х рук А. Зилоти." } } }
      }
    }
  }
  mutopiatitle = "Italian polka"
  mutopiacomposer = "RachmaninoffS"
  mutopiainstrument = "Piano"
  source = "St.-Péterbourg chez J. Jurgenson, 1906—1913"
  style = "Folk"
  license = "Creative Commons Attribution 4.0"
  maintainer = "Alexey Zakharenkov"
  maintainerEmail = "a-zakh (at) yandex (dot) ru"
}

rightHand = \relative c'' {
  % line 1
  \partial 16*3 { a16\<([d f]\! } | \bar ".|:"
  a8->\mf)[ <d, f a>16-4( bes'] a8-.[) f-.] |
  g-.[ <e g a>-.] <e g a>4-> |
  a8->[ a16( bes] a8)-.[e-.] |
  f-.[<d f a>-.] <d f a>4-> | \break
  % line 2
  \appoggiatura {d16 f} d'8-.[d-.] \appoggiatura {d,16 fis} d'8-.[d-.] |
  \appoggiatura {d,16 g} d'16->([c bes a] g8)[ bes--]( |
  a-.)[a-. a-. a-.] |
  a16-4\p( [g f e-1] d-2)\<[a( d f]\! |
  a8->\mf)[<d, f a>16( bes'] a8-.) f-. | \break
  % line 3
  g8-.[ <e g a>-.] <e g a>4-> |
  a8->[ a16( bes] a8-.)[ e-.] |
  f8-.[<d f a>-.] <d f a>4-> |
  \appoggiatura {d16 f} d'8-.[d-.] \appoggiatura {d,16 fis} d'8-.[d-.] |
  \appoggiatura {d,16 g} d'16([c bes a] g8)[ bes--]( | \break
  % line 4
  a16)[ gis( a gis] a[bes b cis] |
  <f, a d>4) r8 \times 2/3 {fis16-2\>([a-1 d-2\!])} | \bar "||"
  \key d \major fis16-4([e-3 d-1 cis-3] b[ a g-3 fis] |
  eis_1[fis eis fis] eis [fis g a]) | \break
  % line 5
  b16-5([a g fis-2] g-4[fis e d-1] |
  cis16-2[d-1 e fis] g[a b cis]) |
  e16-5([d cis b] a-1[g-3 fis e] |
  dis16-2[e-1 dis e] dis[e fis g]) |
  a16-4([g fis e-1] fis-3[e d-1 cis-2] | \break
  %%%%% page 2
  % line 6
  d16-1[e fis g] a[b cis d-1]) |
  fis-3\pp([e d cis] b[a g fis] |
  eis[fis eis fis] eis[fis g a]) |
  b16([a g fis] g[fis e d] |
  cis16-2[d cis b] cis)[cis'-5_\mf( b a] | \break
  % line 7
  gis16-2[a gis fis-1_\markup{\italic{cresc.}}] gis-2)[d'-5( cis b-3] |
  a-1[b-4 a gis] a-1)[e'-5\f( d cis] |
  b[a-1 gis-4 fis] e\>[d-1 cis-3 b\!] |
  a8[cis16 e] a8)[a16-.->-3\f a-.->] |
  gis8-.->[a-.->] gis8-.->[a-.->] | \break
  % line 8
  g!16-2->([e-1 g-2 a-1] a'8) a,16-.-3[a-.] |
  <e gis>8-.-1-2[a-.-4] <e g!>8-.-1-3[a-.] |
  fis16->-2([d-1 fis-2 a-1] a'8) a,16-.-1[a-.] |
  d16-3\f([cis fis e] d[cis b-1 a-3] |
  cis8-.-5)[<e, g>->-1-2] <e g>16->[b'-4(a g] | \break
  % line 9
  cis8-.)[<e, g>->] <e g>16->[b'-4(a g] |
  b8-.-5)[<d, fis>->-1-2] <d fis>8->[a'16-.->-3\f a-.->] | 
  gis8-.->[a-.->] gis8-.[a-.] |
  g!16\f->(-2[e-1 g-2 a-1] a'8) a,16-.[a-.] |
  <e gis>8-.[a-.] <e g!>8-.[a-.] | \break
  % line 10
  fis16->([d fis a] a'8) a,16-.-1[a-.] |
  d16\f-3([cis fis e] d[cis b-1 a-2]) |
  cis16-4([ b ais b] a[g-1 b-4 e,-1]) |
  fis16-2([g-1 gis-2 a-1] ais-3[b-1 c cis-3] |
  d8-5)[<d, fis d'>16-. <d fis d'>16-.] <d fis d'>4-> | \bar ":|."
}

leftHand = \relative c {
  % line 1
  \partial 16*3 {r16 r8 } |
  d8-.[ <f a d>-.] a,-.[ <f' a d>-.] |
  cis-.[ <g' a e'>-.] <g a e'>4-> |
  cis,8-.[ <g' a e'>-.] a,-.[<g' a cis>-.] |
  d-.[ <f a d>-.] <f a d>4-> | 
  % line 2
  d8-.^\markup{\italic{cresc.}}  [<f a d>-.] c!-. [<fis a d>-.] |
  bes,8-.[<g' d'>-.] r8 <g d' e>-. |
  a,8-.[ <e' cis'>-.^\markup{\italic{dim.}}  <f d'>-. <g e'>-.] |
  d8-.[ <a' f'>-.] r4 |
  d,8-.[ <f a d>-.] a,-.[ <f' a d>-.] |
  % line 3
  cis8-.[ <g' a e'>-.] <g a e'>4-> |
  cis,8-.[ <g' a e'>-.] a,-.[<g' a cis>-.] |
  d8-.[<f a d>-.] <f a d>4-> |
  d8-.^\markup{\italic{cresc.}} [<f a d>-.] c!8-.[<fis a d>-.] |
  bes,8-.[ <g' d'>-.] r8 <g d' e>-. |
  % line 4
  a,8-.[ <e' cis'>-.] <f d'>-.[<g! e'>-.] |
  <d f a d>8-.[d-.] d,8-. r8 |
  \key d \major d'8-.^\pp[<fis a>-.] a,-.[<fis' a>-.] |
  d8-.[<fis a>-.] a,-.[<fis' a>-.] |
  % line 5
  d8-.[<fis a>-.] a,-.[<fis' a>-.] |
  e8-.[<g a>-.] a,-.[<g' a>-.] |
  cis,8-.[<g' a>-.] a,-.[<g' a>-.] |
  cis,8-.[<g' a>-.] a,-.[<g' a>-.] |
  e8[<g a>] a,[<g' a>] |
  %%%%% page 2
  % line 6
  d8-.[<fis a>-.] a,-.[<fis' a>-.] |
  d8-.[<fis a>-.] a,-.[<fis' a>-.] |
  d8-.[<fis a>-.] a,-.[<fis' a>-.] |
  d8-.[<fis a>-.] a,-.[<fis' a>-.] |
  e8-.[<a cis e>-.] <a cis e>4->
  % line 7
  b8-.[<d e>-.] e,-.[<d' e>-.] |
  a8-.[<cis e>-.] cis,-.[<a' e'>-.] |
  d,8-.[<fis b d>-.] e-.[<gis d' e>-.] |
  <a cis e>-. r8 r4 |
  R2 |
  % line 8
  cis,8-.[<g' a>-.] a,8-.[<g' a>-.] |
  cis,8-.[<g'! a>-.] a,8-.[<g' a>-.] |
  d8-.[<fis a>-.] a,8-.[<fis' a>-.] |
  d8-.[<fis a>-.] a,8-.[<fis' a>-.] |
  e8-.[<g a cis>-.] <g a cis>4-> |
  % line 9
  a,8-.[<g' a cis>-.] <g a cis>4-> |
  d8-.[<fis a d>-.] <fis a d>-> r8 |
  R2 |
  cis8-.[<g' a>-.] a,8-.[<g' a>-.] |
  cis,8-.[<g'! a>-.] a,8-.[<g' a>-.] |
  % line 10
  d8-.[<fis a>-.] a,8-.[<fis' a>-.] |
  d8-.[<fis a>-.] \stemDown fis,8-.[ <d' a'>-.] |
  g,-.[<e' g>-.] e,-.[<e' g b>-.] \stemNeutral |
  a,8-.[<d fis a>-.] a8-.[<e' g a>-.] |
  <d fis a>8-.[<d fis a d>-.] <d fis a d>4-> |
}

\book
{
  \score
  { 	
    \new PianoStaff \with { instrumentName = #"PIANO." }
    <<
      \new Staff
      {
        \key f \major
        \time 2/4
        \clef treble
        \rightHand
      }
      \new Staff
      {
        \key f \major
        \time 2/4
        \clef bass 
        \leftHand
      }
    >>
  
    \layout
    {
      \context {
        \Score \remove "Bar_number_engraver"
      }
    }
    
    \midi
    {
    }
  }
} 
