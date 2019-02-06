\version "2.19.65"

\paper {
  ragged-bottom = ##f
  ragged-last-bottom = ##f

  system-system-spacing =
  #'(
      %(basic-distance . 0)
      %(minimum-distance . 0)
      %(padding . 5)
      %(stretchability . 20)
      )
}

\include "articulate.ly"

\header {

  title = "The Magic Flute (Die Zauberflöte)"
  subtitle = "No. 15 Arie"
  composer = "W. A. Mozart (1756-1791)"
  mutopiatitle = "Die Zauberflöte (The Magic Flute) - No. 15 Arie"
  mutopiacomposer = "MozartWA"
  mutopiapoet = "E. Schikaneder and C. L. Giesecke"
  opus = "KV 620"
  source = "C. F. Peters 18??" % IMSLP272122-PMLP20137-Zauberfloete_(Partitur_Peters).pdf
  date = "1791"
  style = "Classical"
  maintainer = "Alexander Brock"
  maintainerEmail = "alexander@lunar-orbit.de"
  mutopiainstrument = "Voice (Bass) and piano"

  license = "Creative Commons Attribution-ShareAlike 4.0"

  footer = "Mutopia-2019/01/21-2234"
  copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white "ǀ" \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {"ǀ" "ǀ"}}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " ©" 2018 ""by " \maintainer " — " \footer}\concat {\concat {\abs-fontsize #8 { \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License" " — free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white "ǀ" }}}
  tagline = ##f
}

mysegno = {
  \once \override Score.RehearsalMark.font-size = #1
  \mark \markup { \musicglyph #"scripts.segno" }
}

melodyintro = \relative c {
  \set Score.tempoHideNote = ##t
  \tempo 8 = 60
  \partial 16
  r16^\markup{\larger{"Larghetto."}} |
  R2 |
  r4^"Sarastro." r8 \bar "||" \mysegno
}

melodylayout = \relative c {
  b'8 |
  b8. \noBeam b16 b([ cis]) a( fis)
  e8.( fis16) dis8 \noBeam b
  e8. fis32([ e]) dis16([ e]) fis( gis)
  gis8( fis)r b
  b8. \noBeam b16 bis([ cis]) a( fis)
  e8.( fis16) dis8 \noBeam fis
  gis16( b8) gis32([ e]) dis16([ fis8]) e32( cis)
  b4 r
  r r16 b \noBeam cis \noBeam dis
  e([ fis)] gis([ a)] b([ cis32 b a gis)] fis( e)
  \appoggiatura gis8 fis4 r16 b, \noBeam cis \noBeam dis
  e([ fis)] gis([ a)] b([ cis32 b a gis)] fis( e)
  \appoggiatura gis8 fis4 r16 fis \noBeam gis \noBeam a
  b8. \noBeam gis16 e8. fis32([ gis])
  b8( a)r16 fis \noBeam fis \noBeam fis
  gis8 \noBeam fis32( gis a fis) e8 \noBeam fis
  fis( gis)r16 e \noBeam b \noBeam a
  gis8. \noBeam gis16 cis8. \noBeam cis16
  fis,4r16 b \noBeam b \noBeam b
  e8 \noBeam a, b \noBeam b
  e4 gis,
  fis( a8) \noBeam  cis
  \appoggiatura cis b4. cis16( dis)
  e4r
  R2
  r4 r8
  \bar "||"


}

melodymidi = \relative c {
  b'8 |
  b8. \noBeam b16 b([ cis]) a( fis)
  e8.( fis16) dis8 \noBeam b
  e8. fis32([ e]) dis16([ e]) fis( gis)
  gis8( fis)r b
  b8. \noBeam b16 bis([ cis]) a( fis)
  e8.( fis16) dis8 \noBeam fis
  gis16( b8) gis32([ e]) dis16([ fis8]) e32( cis)
  b4 r
  r r16 b \noBeam cis \noBeam dis
  e([ fis)] gis([ a)] b([ cis32 b a gis)] fis( e)
  gis8( fis8) r16 b, \noBeam cis \noBeam dis
  e([ fis)] gis([ a)] b([ cis32 b a gis)] fis( e)
  gis8( fis8) r16 fis \noBeam gis \noBeam a
  b8. \noBeam gis16 e8. fis32([ gis])
  b8( a)r16 fis \noBeam fis \noBeam fis
  gis8 \noBeam fis32( gis a fis) e8 \noBeam fis
  fis( gis)r16 e \noBeam b \noBeam a
  gis8. \noBeam gis16 cis8. \noBeam cis16
  fis,4r16 b \noBeam b \noBeam b
  e8 \noBeam a, b \noBeam b
  e4 gis,
  fis( a8) \noBeam  cis
  cis8( b4) cis16( dis)
  e4r
  r2
  r4 r8
  \bar "||"


}

rhintro =  \relative c' {
  \partial 16
  <gis' b>16^"Str. Quart." |
  <<
    {<gis b>8. ( <e gis>16) <cis fis>8.( <fis a>16) | } \\
    { b,8 r a a\rest | }
  >>
  <fis a dis>8-.^"Bl." <e gis e'>-. r
  \bar "||" \mysegno
}

rh =  \relative c' {

  r8 |
  <e gis b>4( <cis fis a>) |
  <<
    {
      <e gis>4( <dis fis>8) \noBeam b'^\markup{"Fl."} |
      e8.( fis32 e) dis16( e <b fis'> <e gis>)|
    }
    \\ {
      b,4. r8|
      r8 b' b16( e, fis gis) |
    }
  >>
  <gis e' gis>8([ <fis dis' fis>16]) \noBeam
  <b, dis>-. <cis e>-. <dis fis>-. <e gis>-. <fis a>-. |
  <e gis b>4( <cis fis a>) |
  <<
    { <e gis>4( <dis fis>8)} \\
    { b4. }
  >> r8|
  r8
  \voiceOne
  \autoBeamOff
  \crossStaff { <cis e>-.[ <b dis>-. <ais cis>-.]}|
  \autoBeamOn
  b16 \noBeam \stemDown b''8^"Fl."( gis32 e) dis16( fis8 e32 cis)|
  b4 b16\rest \stemUp b-.^"Viol." cis-. dis-.|
  e-. fis-. gis-. a-. b-. <gis cis>-. <gis dis'>-. <gis e'>-.|
  << { e'8( dis)} \\ { fis,16.( gis32 a8)} >> b,16\rest b-. <b cis>-. <b dis>-. |
  <b e>-. <b fis'>-. <b gis'>-. <b a'>-. <b b'>-. <gis' cis>-. <gis dis'>-. <gis e'>-.|
  << { e'8( dis)} \\ { fis,16.( gis32 a8)} >> b,16\rest fis16( <e gis> <dis a'>)|
  b'8\rest <e, b'> b'\rest <e, gis b>|
  b'\rest <cis, e a> b'\rest <b, dis a'>|
  <b e gis>([ <cis fis a> <b e gis> <b dis fis>])|
  << { <dis fis>( <e gis>) } \\{ b4} >> b'16\rest \stemNeutral <e, e'>^"Fl."_"Viol."( <gis gis'> <a a'>)|
  <b b'>8.( <gis gis'>16) <e e'>8.( <fis fis'>32 <gis gis'>)|
  <b b'>8( <a a'>) b16\rest <fis fis'> <fis fis'> <fis fis'>
  <gis gis'>8 <fis cis' fis>32( <gis gis'> <a a'> <fis fis'>) <e gis b e>8( <dis fis a dis>)|
  <e e'> <gis, e'> b'\rest <gis, cis e>|
  b'8\rest <a, cis fis> b'\rest <cis, fis a>|
  b'\rest <gis e' gis>16-.^"Fl."_"Hörn." <gis e' gis>-. <a fis' a>-. <a fis' a>-. <fis dis' fis>-. <fis dis' fis>-.|
  <e gis e'>8 b'16\rest e dis( a' fis dis|
  e8) b16\rest <gis b e gis> <fis cis' fis>( <cis' cis'> <b dis b'> <dis, dis'>)|
  <fis a dis fis>4( <e gis e'>8)

  \bar "||" \mysegno
}

lhintro = \relative c {
  \partial 16
  r16
  <e e'>8r <a, a'>r|
  <b b'>-. <e, e'>-.r \bar "||"  \mysegno
}

lh = \relative c {
  r8 |
  <e e'>4(^"Quart." <a, a'>)|
  <b b'>4.r8
  r8 <gis' b e>_"Quart." <fis a dis>16( <e gis> <dis fis> e)
  <b b'>4r|
  <e, e'>( <a, a'>)|
  <b b'>4. r8|
  r8 <<  \crossStaff{\autoBeamOff gis'' fis e dis16 \autoBeamOn} \\ {<e, e'>8[ fis <fis, fis'>] | <b b'> } >>
  \clef treble <e'' cis'>-.[ <fis b>-. <fis ais>-.] |
  \clef bass b,16-._"Fag. u. Hörn." b-. b-. b-. <a b>-. <a b>-. <a b>-. <a b>-.|
  <gis b>-. <gis b>-. <gis b>-. <gis b>-. <gis b>-. <e b'>-. <fis b>-. <gis b>-. |
  <a b>-. <gis b>-. <fis b>-. <e b'>-. <dis b'>-. <cis a'>-. <b gis'>-. <a fis'>-. |
  << { e'-. dis-. e-. fis-. gis-. b-. b-. b-.} \\ {gis,4 r16 e'-. fis-. gis-.} >>
  <a b>-. <gis b>-. <fis b>-. <e b'>-. <dis b'>-. <cis a'>-. <b gis'>-. <a fis'>-.|
  <gis e'>8^"Str. Quart." r <cis, cis'>r|
  <fis, fis'>r <b b'>r |
  <e e'>[ <a, a'> <b b'> <b b'>]|
  <e e'>4 r
  <<
    {
      r8 <e' gis> r <e gis>|
      r <e fis> r <dis a'>
    } \\ {
      <gis,, gis'>8r <cis cis'>r|
      <fis, fis'>r <b b'>r
    }
  >>
  <e e'>[ <a, a'> <b b'> <b b'>]
  <e e'>8 r <cis cis'>^"Quart." r|
  <a a'>r <a a'>r |
  << {r b'' r a} \\ { <b,, b'>r <b b'>r } >>
  <e e'>8 r \clef treble <b'' fis' a>4( |
  <cis e gis>8) \clef bass <gis,, gis'>[ <a a'> <b b'>]|
  <b b'>4( <e, e'>8)

  \bar "||"
}

songtext =  \lyricmode {
  %\override LyricText.self-alignment-X = #LEFT
  In die -- sen heil -- gen Hal -- len
  kennt man die Ra -- che nicht,
  und ist ein Mensch ge -- fal -- len, führt
  Lie -- be ihn zur Pflicht.
  Dann wan -- delt er an Freun -- des Hand
  ver -- gnügt und froh ins beß -- re Land,
  dann wan -- delt er an Freun -- des Hand
  ver -- gnügt  und froh ins beß -- re Land,
  dann wan -- delt er and Freun -- des Hand
  ver -- gnügt und froh ins beß -- re Land,
  ins beß -- re, beß -- re Land.
}

songtexttwo =  \lyricmode {
  %\override LyricText.self-alignment-X = #LEFT
  In die -- sen heil -- gen Mau -- ern,
  wo Mensch den Men -- schen liebt,
  kann kein Ver -- rä -- ter lau -- ern,
  weil man dem Feind ver -- giebt.
  Wen sol -- che Leh -- ren nicht er -- freun,
  ver -- die -- net nicht ein Mensch zu sein,
  wen sol -- che Leh -- ren nicht er -- freun,
  ver -- die -- net nicht ein Mensch zu sein,
  wen sol -- che Leh -- ren nicht er -- freun,
  ver -- die -- net nicht ein Mensch zu sein,
  ein Mensch, ein Mensch zu sein.
}


% The score definition
\score {

  \layout {
    \context {
      \RemoveEmptyStaffContext
    }
    \context {
      \PianoStaff
      \consists #Span_stem_engraver
    }
    indent = 8 \mm
  }
  <<

    \time 2/4

    \override Score.VerticalAxisGroup #'remove-first = ##t
    \new Staff <<

      \new Voice = "mel" { \clef bass \key e \major \melodyintro \melodylayout}
      \new Lyrics = "one" \lyricsto mel \songtext
      \new Lyrics = "two" \lyricsto mel \songtexttwo
    >>
    \new PianoStaff <<
      \new Staff = "right"
      <<
        { \key e \major \rhintro \rh}
      >>
      \new Dynamics {
        s16\p
        s2
        s2 \f
        r2 \p
      }
      \new Staff = "left"
      <<
        \new Voice { \clef bass \key e \major \lhintro \lh}
      >>

    >>

  >>


}


\score {

  <<

    \time 2/4

    \override Score.VerticalAxisGroup #'remove-first = ##t
    \new Staff <<
      \set Staff.midiInstrument = #"reed organ"
      \new Voice = "mel" { \clef bass \key e \major \melodyintro \melodymidi \melodymidi}
      \new Voice = "meloct" { \clef bass \key e \major \transpose c c' {\melodyintro \melodymidi \melodymidi}}
      \new Lyrics = "one" \lyricsto mel \songtext
      \new Lyrics = "two" \lyricsto mel \songtexttwo
    >>
    \new PianoStaff <<
      \new Staff \with {
        \consists #Merge_rests_engraver
      }
      <<
        \set Staff.midiInstrument = #"acoustic grand"
        \new Voice { \key e \major \rhintro \rh \rh}
      >>
      \new Dynamics {
        s16\p
        s2
        s2 \f
        r2 \p
      }
      \new Staff \with {
        \consists #Merge_rests_engraver
      }
      <<
        \set Staff.midiInstrument = #"acoustic grand"
        \new Voice { \clef bass \key e \major \lhintro \lh \lh }
      >>

    >>

  >>

  \midi {
    \tempo 8 = 60
    \context {
      \Score
      midiMinimumVolume = #0.8
      midiMaximumVolume = #0.8
    }
  }
}
