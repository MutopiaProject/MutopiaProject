% V. Andante

\include "defs.ly"

choral = \lyricmode {
   \lyricsstyle
   O lux be -- a -- ta, tri -- ni -- tas
   et prin -- ci -- pa -- lis u -- ni -- tas,
   jam sol re -- ce -- dit ig -- ne -- us
   in -- fun -- de lu -- men cor -- di -- bus.
   Te ma -- ne lau -- dem car -- mi -- ne,
   te de -- pre -- ce -- mur ve -- spe -- re,
   te no -- stra dup -- lex glo -- ri -- a
   per cun -- cta lau -- det sae -- cu -- la.
}

tenorIE = \relative e' {
   \global
   \time 4/4
   \set Score.currentBarNumber = #1
   \autoBeamOn
   \clef "G_8"
   \key a \major

   \tempo \markup { \huge "V. Andante" }
   \repeat volta 2 {
      \dto #-1.5 #-1 e4^\p
      \tso #-6 #0 fis4^"Tutti" e d cis
      h4 cis8( d) cis4^\fermata cis8( h)
      a4 a d cis
      h4 h e^\fermata e
      fis4 e d cis
      h4. cis8 a4 h8( cis)
      d8[( e]) fis( e) d4 cis
      h4. a8 a4^\fermata \mark \default
   }
   \repeat volta 2 {
      a4
      h4 h h h8( cis)
      d4. d8 d4 h8( cis)
      d4 d \crescHairpin d^\< d8( e)
      fis4.\! fis8 fis4 \dto #-1.5 #-1.5 a8(^\f g)
      fis4 e d cis
      h4. cis8 a4^\fermata h8( cis)
      d8[(^\> e]) fis( e) \dimHairpin d4^\> cis
      h4.^\p a8 a4^\fermata \mark \default
   }
   \autoBeamOff r4^\fermata
   R1
   r2 r4 h^\p ^"Solo"
   d4 d \crescTextCresc d8^\< d d d
   e2 e4 e^\f ^"Tutti"
   fis4 fis fis8 fis fis fis
   \dls 1.5 a2.^\ff \dtso #-1.5 #0 d,4^\dim
   \hpo #0 #-1.6 cis2(^\> h)
   \dto #-2.2 #-1.5 cis1^\p^\fermata \bar "|."
}
tenorIE_words = \lyricmode {
   \lyricsstyle
   \choral
   et vi -- de tri -- bu -- la -- ti -- o -- nem,
   et vi -- de tri -- bu -- la -- ti -- o -- nem no -- stram.
}

tenorIIE = \relative cis' {
   \global
   \autoBeamOn
   \clef "G_8"
   \key a \major
   \time 4/4

   \repeat volta 2 {
      \dto #-1.5 #-1 cis4^\p 
      \tso #-6 #0.2 d4^"Tutti" h a a
      a4 gis a^\fermata a8( gis)
      fis4 a gis a
      a8[( gis]) fis( a) gis4^\fermata cis
      d4 h a a
      h4. gis8 fis4 gis8( a)
      h8[( cis]) d( cis) h4 a
      a4( gis8) \noBeam a a4^\fermata
   }
   \repeat volta 2 {
      a
      h4 h h h8( ais)
      h4. h8 h4 h8( ais)
      h4 h \crescHairpin h^\< a!8( cis)
      d4.\! d8 d4 \dto #-1.5 #-1.5 e^\f
      d4 h a a
      h4. gis8 fis4^\fermata gis8( a)
      \dls 2 h8[(^\> cis]) d( cis) \dimHairpin h4^\> a \rdls
      a4(^\p gis8) \noBeam a a4
   }
   r4^\fermata
   \dto #8 #-1.5 r2^\p a~ ^"Solo" \break
   a4 a gis2
   \crescTextCresc \dtso #10 #0 fis2.^\< d'4
   d2( cis4) cis^\f ^"Tutti"
   \autoBeamOff d4 d d8 d d d
   d2.^\ff \dtso #-1.5 #0 a4^\dim
   \hpo #0 #-1.2 \dimHairpin a2.(^\> gis4)
   \dto #-2.2 #-1.2 a1^\p^\fermata \hpo #0 #0
}
tenorIIE_words = \lyricmode {
   \lyricsstyle
   \choral
   A -- pe -- ri o -- cu -- los
   et vi -- de tri -- bu -- la -- ti -- o -- nem no -- stram.
}

bassIE = \relative a {
   \global
   \time 4/4
   \autoBeamOn
   \clef bass
   \key a \major

   \repeat volta 2 {
      \dto #-1.5 #-1 a4^\p
      \tso #-6 #0.2 a4^"Tutti" gis a e
      fis4 e e^\fermata e
      fis4 e e e
      e4 dis e^\fermata e
      d!4 gis a a
      a8[( gis fis]) eis fis4 fis
      fis4 fis fis8( gis) a4
      e4 e a,^\fermata
   }
   \repeat volta 2 {
      a'4
      g4 g g fis
      fis4. fis8 fis4 fis
      h4 a \crescHairpin g^\< a
      a4.\! a8 a4 \dto #-1.5 #-1.5 cis^\f
      a4 gis! a a
      a8[( gis fis]) eis fis4^\fermata fis
      \dls 2 fis4^\> fis \dimHairpin fis8(^\> gis) a4 \rdls
      e4^\p e a,^\fermata
   }
   r4^\fermata
   \autoBeamOff \dto #-2 #-1.5 a'4^\p \tso #-4.2 #0 a8^"Solo" a a4 a8 a
   h2 h~
   h2 r
   r2 r4 a4^\f^"Tutti"
   a4 a a8 a a a
   d2^\ff a^\dim
   \hpo #0 #-1.8 e1^\>
   \dto #-2.2 #-1.5 e1^\p^\fermata
}
bassIE_words = \lyricmode {
   \lyricsstyle
   \choral
   A -- pe -- ri o -- cu -- los tu -- os
   et vi -- de tri -- bu -- la -- ti -- o -- nem no -- stram.
}

bassIIE = \relative a {
   \global
   \autoBeamOn
   \clef bass
   \key a \major
   \time 4/4

   \repeat volta 2 {
      \dto #-1.5 #-1 a4^\p
      \tso #-6 #0.5 d,4^"Tutti" e fis e
      d4 e a,^\fermata a
      d4 cis h cis8( d)
      e4 h e,^\fermata a
      d4 e fis e
      d4. cis8 fis,4 fis'
      h,4 h h cis8( d)
      e4 e a,^\fermata
   }
   \repeat volta 2 {
      a'4
      e4 e e d8( cis)
      h4. h8 h4 fis'
      h4 a \crescHairpin g^\< fis8( e)
      d4.\! d8 d4 \dto #-0.6 #-1.5 a^\f
      d4 e fis e
      d4. cis8 fis4^\fermata fis
      \dls 2 h,4^\> h \dimHairpin h^\> cis8( d) \rdls
      e4^\p e a,^\fermata
   }
   r4^\fermata
   \dto #7.7 #-1.5 r2^\p a'^"Solo"
   e2 e
   \dtso #10 #0 h2.^\cresc h4
   a2. a4^\f^"Tutti"
   \autoBeamOff d4 d d8 d d d
   \dls 1.5 fis2^\ff fis^\dim
   \hpo #0 #-1.8 e1^\>
   \dto #-2.2 #-1.5 a,1^\p^\fermata \rdls
}
bassIIE_words = \lyricmode {
   \lyricsstyle
   \choral
   a -- pe -- ri o -- cu -- los
   et vi -- de tri -- bu -- la -- ti -- o -- nem no -- stram.
}

vcbE = \relative a {
   \global
   \clef bass
   \key a \major
   \time 4/4

   \repeat volta 2 {
       a4_\p
      d,4 e fis e
      d4 e a,^\fermata a
      d4 cis h cis8( d)
      e4 h e,^\fermata a
      d4 e fis e
      d4. cis8 fis,4 fis'
      h,4 h h cis8( d)
      e4 e a,^\fermata
   }
   \repeat volta 2 {
      a'4
      e4 e e d8( cis)
      h4. h8 h4 fis'
      h4 a \crescHairpin g_\< fis8( e)
      d4.\! d8 d4 a_\f
      d4 e fis e
      d4. cis8 fis4^\fermata fis
      \dls 2.2 h,4_\> h \dimHairpin h_\> cis8( d) \rdls
      e4_\p e a,^\fermata
   }
   r4^\fermata
   R1
   R1
   R1
   r2. a4_\f
   d1
   \dls 1.8 fis2 \dimTextDim fis_\>
   e1_\p
   a,1^\fermata
}

scoreE = { \partial 4
   <<
      \new ChoirStaff <<
         \new Staff = "staffE_tenorI" <<
            \set Staff.instrumentName = "Tenore I"
            \new Voice = "voiceE_tenorI" << \tenorIE >>
            \lyricsto "voiceE_tenorI" \new Lyrics \tenorIE_words
         >>
         \new Staff = "staffE_tenorII" <<
            \set Staff.instrumentName = "Tenore II"
            \new Voice = "voiceE_tenorII" << \tenorIIE >>
            \lyricsto "voiceE_tenorII" \new Lyrics \tenorIIE_words
         >>
         \new Staff = "staffE_bassI" <<
            \set Staff.instrumentName = "Basso I"
            \new Voice = "voiceE_bassI" << \bassIE >>
            \lyricsto "voiceE_bassI" \new Lyrics \bassIE_words
         >>
         \new Staff  = "staffE_bassII" <<
            \set Staff.instrumentName = "Basso II"
            \new Voice = "voiceE_bassII" << \bassIIE >>
            \lyricsto "voiceE_bassII" \new Lyrics \bassIIE_words
         >>
      >>
      \new Staff  = "staffE_vcb" <<
         \set Staff.instrumentName = \markup { \center-column { "Violoncello" "e Basso" } }
         \new Voice = "voiceE_vcb" << \vcbE >>
      >>
   >>
}

