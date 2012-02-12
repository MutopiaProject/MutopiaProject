\version "2.14.2"

\header {
  title = "Ich will meine Seele tauchen"
  poet = "Heinrich Heine"
  composer = "Robert Schumann"
  opus = "Op. 48, No. 5"
  mutopiacomposer = "SchumannR"
  mutopiainstrument = "Voice and piano"
  date = "1840"
  source = "Robert Schumanns Werke, Serie XIII:
            Für eine Singstimme, mit Begleitung des Pianoforte.
            Leipzig: Breitkopf & Härtel, 1881-1912. Plate R.S. 131."
  moreInfo = "http://imslp.org/wiki/Dichterliebe,_Op.48_(Schumann,_Robert)"
  style = "Classical"
  copyright = "Public Domain"
  maintainer = "Pavel Roskin"
  maintainerEmail = "proski(at)gnu.org"
  lastupdated = "2012/Jan/16"

 mutopiasource = "Robert Schumanns Werke, Serie XIII: Für eine Singstimme, mit Begleitung des Pianoforte. Leipzig: Breitkopf & Härtel, 1881-1912. Plate R.S. 131."

 footer = "Mutopia-2012/02/05-1827"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-0.5 MutopiaProject \hspace #-0.5 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-0.5 LilyPond \hspace #-0.5 \teeny .org } by \maintainer \hspace #-0.6 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

%{
  The lyrics has been changed to use modern German spelling.
%}

Melody = \relative c'' {
  \key b \minor \time 2/4 \autoBeamOff \dynamicUp \tupletUp
  \set Score.tempoHideNote = ##t
  \tempo "Leise" 4=55
  \partial 16 b16 \p |
  b8 b16 b ais8 ( b16 ) cis |
  d4 b8 b16 b |
  b8. b16 ais8 b16 cis |
  d4 r8 r16 d16 |
  d8 d16 d cis8 ( d16 ) e |
  fis4 d8 d |
  e d16 d cis8 b |
  ais8 r r b |
  b b ais b16 cis |
  d4 b8 b16 b |
  b8. b16 ais8 ( b16 ) cis |
  d4 r8 d8 |
  d8. d16 cis8 ( d16 ) e |
  fis4 d8 d |
  \times 2/3 { e8 e d } cis8. ais16 |
  b4 r4 |
  R2 * 6 |
  \bar "|." \barNumberCheck #23
}

Lyrics = \lyricmode {
  Ich will mei -- ne See -- le tau -- chen
  in den Kelch der Li -- lie hin -- ein;
  die Li -- lie soll klin -- gend hau -- chen
  ein Lied von der Lieb -- sten mein.
  Das Lied soll schau -- ern und be -- ben,
  wie der Kuss von ih -- rem Mund,
  den sie mir einst __ ge -- ge -- ben
  in wun -- der -- bar sü -- ßer "Stund'."
}

RightOne = \relative c'' {
  \key b \minor \time 2/4
  \partial 16 r16 |
  \voiceOne e8[ e cis cis] |
  d[ d b b] |
  e[ e cis cis] |
  d[ d b b] |
  g'[ g e e] |
  fis[ fis d d] |
  e[ d cis b] |
  ais fis4 b8 |
  e8[ e cis cis] |
  d[ d b b] |
  e[ e cis cis] |
  d[ d b b] |
  g'[ g e e] |
  fis[ fis d d] |
  e[ d cis ais] |
  b4. \once \override PhrasingSlur #'positions = #'(2 . 3) fis8\( ~ |
  fis8[ c' b a] |
  g[ g' fis eis] |
  e![ d cis ais!] |
  \override TextSpanner #'(bound-details left text) = "ritardando"
  \dynamicUp b\) b4 \tempo 4=48 b8 \startTextSpan ~ |
  b8 \tempo 4=42 b4 \tempo 4=37 b8 \stopTextSpan ~ |
  <b d,>2 |
  \bar "|." \barNumberCheck #23
}

RightTwo = \relative c'' {
  \voiceTwo
  \partial 16 s16 |
  s2*6 |
  s32*3 g32 s32*12 |
  s2*7 |
  s32*3 g32 s32*12 |
  s2*5 |
  s32*15 cis,32( |
  d2) |
  \bar "|." \barNumberCheck #23
}

RightThree = \relative c'' {
  \voiceThree \slurNeutral
  \partial 16 s16 |
  s2*19 |
  s8 \acciaccatura { a! } g[^( fis]) \acciaccatura { a } g |
  fis8 \acciaccatura { fis } e[ d] \acciaccatura { fis } e |
  s2 |
  \bar "|." \barNumberCheck #23
}

rh = { \change Staff="rh" \voiceTwo }
lh = { \change Staff="lh" \voiceOne }

LeftOne = \relative c {
  \oneVoice \clef bass \key b \minor \time 2/4
  \partial 16 r16 |
  \lh cis32[ b' e] \rh g \lh cis,,[ b' e] \rh g \lh fis,[ ais e'] \rh fis \lh fis,[ ais e'] \rh fis |
  \lh b,,[ b' d] \rh fis \lh b,,[ b' d] \rh fis \lh d,[ b' d] \rh fis \lh d,[ b' d] \rh fis |
  \lh cis,[ b' e] \rh g \lh cis,,[ b' e] \rh g \lh fis,[ ais e'] \rh fis \lh fis,[ ais e'] \rh fis |
  \lh b,,[ b' d] \rh fis \lh b,,[ b' d] \rh fis \lh d,[ b' d] \rh fis \lh d,[ b' d] \rh fis |
  \lh e,[ \rh d' g] bes \lh e,,[ \rh d' g] bes \lh a,[ \rh cis g'] a \lh a,[ \rh cis g'] a |
  \lh d,,[ \rh cis' fis] a \lh d,,[ \rh cis' fis] a \lh g,[ \rh b d] fis \lh g,[ \rh b d] fis |
  \lh cis, b' e ais, d,[ b' d] \rh fis \lh e,[ g cis] \rh e \lh eis,[ gis b] \rh d |
  \lh fis,,[ fis' ais] \rh cis \lh e,[ fis ais] \rh cis \lh e,[ fis ais] \rh cis \lh d,[ fis b] \rh d |
  \lh cis,[ b' e] \rh g \lh cis,,[ b' e] \rh g \lh fis,[ ais e'] \rh fis \lh fis,[ ais e'] \rh fis |
  \lh b,,[ b' d] \rh fis \lh b,,[ b' d] \rh fis \lh d,[ b' d] \rh fis \lh d,[ b' d] \rh fis |
  \lh cis,[ b' e] \rh g \lh cis,,[ b' e] \rh g \lh fis,[ ais e'] \rh fis \lh fis,[ ais e'] \rh fis |
  \lh b,,[ b' d] \rh fis \lh b,,[ b' d] \rh fis \lh d,[ b' d] \rh fis \lh d,[ b' d] \rh fis |
  \lh e,[ \rh d' g] bes \lh e,,[ \rh d' g] bes \lh a,[ \rh cis g'] a \lh a,[ \rh cis g'] a |
  \lh d,,[ \rh cis' fis] a \lh d,,[ \rh cis' fis] a \lh g,[ \rh b d] fis \lh g,[ \rh b d] fis |
  \lh cis, b' e ais, d,[ b' d] \rh fis \lh e,[ g cis] \rh e \lh fis,[ ais! cis] \rh e |
  \lh b,[ fis' b] \rh d \lh d,[ fis b] \rh d \lh cis,[ fis b] \rh d \lh b,[ fis' b] \rh d |
  \lh ais,[ fis' cis'] \rh e \lh a,,[ fis' c'] \rh dis \lh g,,[ e' b'] \rh e \lh fis,,[ dis' a'] \rh dis |
  \lh e,,[ e' g] \rh e' \lh e,[ b' e] \rh g \lh d,[ b' d] \rh fis \lh cis,[ b' cis] \rh eis |
  \lh g,![ b e] \rh b' \lh fis,[ ais d] \rh ais' \lh e,[ g cis] \rh g' \lh fis,[ ais cis] \rh e |
  \lh b,[ fis' b] \rh d \lh e,[ g b] \rh e \lh b,[ fis' b] \rh d \lh e,[ g b] \rh e |
  \lh b,[ fis' b] \rh d \lh e,[ g b] \rh cis \lh b,[ fis' b] \rh d \lh e,[ g b]( s32 |
  b2) |
  \bar "|." \barNumberCheck #23
}

LeftTwo = \relative c {
  \voiceTwo
  \partial 16 s16 |
  cis8[ cis fis fis] |
  b,[ b d d] |
  cis[ cis fis fis] |
  b,[ b d d] |
  e[ e a a] |
  d,[ d g g] |
  cis,[ d e eis] |
  fis,[ e'! e d] |
  cis[ cis fis fis] |
  b,[ b d d] |
  cis[ cis fis fis] |
  b,[ b d d] |
  e[ e a a] |
  d,[ d g g] |
  cis,[ d e fis] |
  b,[\( d cis b] |
  ais[ a g fis]\) |
  e[\( e' d cis!] |
  g'![ fis e fis]\) |
  b,[ e b e] |
  b[ e b e] |
  <fis b,>2 |
  \bar "|." \barNumberCheck #23
}

DynamicsOne = {
  \once \override DynamicText #'transparent = ##t
  \partial 16 s16 \pp |
  s2*19 |
  s8 s4 \> s8 |
  s8 s4 s8 \! |
  s2 |
  \barNumberCheck #23
}

DynamicsTwo = {
  \once \override DynamicText #'transparent = ##t
  \partial 16 s16 \pp |
  s2-\markup { \dynamic pp } |
  s2*21 |
  \barNumberCheck #23
}

DynamicsThree = {
  \partial 16 s16 |
  s2 \sustainOn |
  s2*21 |
  \barNumberCheck #23
}

\score {
  <<
    \new Staff <<
      \context Staff <<
        \context Voice = "Melody" { \Melody }
        \new Lyrics \lyricsto "Melody" \Lyrics
      >>
    >>
    \new GrandStaff \with {
      \override StaffGrouper #'staff-staff-spacing #'minimum-distance = #12
    } <<
      \new Dynamics = "DynamicsOne" \with {
        % Should not be needed in Lilypond 2.15.24 and newer
        \override VerticalAxisGroup #'staff-affinity = #DOWN
      } \DynamicsOne
      \new Staff = "rh" <<
        \context Voice = "RightOne" { \RightOne }
        \context Voice = "RightTwo" { \RightTwo }
        \context Voice = "RightThree" { \RightThree }
      >>
      \new Dynamics = "DynamicsTwo" \DynamicsTwo
      \new Staff = "lh" <<
        \context Voice = "LeftOne" { \LeftOne }
        \context Voice = "LeftTwo" { \LeftTwo }
      >>
      \new Dynamics = "DynamicsThree" \with {
        % Workaround for Lilypond issue 2102, fixed in version 2.15.24
        \override VerticalAxisGroup #'staff-affinity = #UP
      } \DynamicsThree
    >>
  >>
  \layout {
    \context {
      \Staff \RemoveEmptyStaves
    }
  }
}

\score {
  <<
    \new Staff \with {
      midiInstrument = #"flute"
      midiMinimumVolume = #0.5
      midiMaximumVolume = #1.0
    } \Melody
    \new Staff = "rh" \with {
      midiMinimumVolume = #0.2
      midiMaximumVolume = #1.0
    } <<
      \DynamicsOne
      \DynamicsTwo
      \DynamicsThree
      \RightOne
      \RightTwo
      \RightThree
    >>
    \new Staff = "lh" \with {
      midiMinimumVolume = #0.2
      midiMaximumVolume = #1.0
    } <<
      \DynamicsOne
      \DynamicsTwo
      \DynamicsThree
      \LeftOne
      \LeftTwo
    >>
  >>
  \midi {}
}
