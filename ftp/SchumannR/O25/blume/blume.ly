\version "2.14.2"

\header {
  title = "Du bist wie eine Blume"
  poet = "Heinrich Heine"
  composer = "Robert Schumann"
  opus = "Op. 25, No. 24"
  mutopiacomposer = "SchumannR"
  mutopiainstrument = "Voice and piano"
  date = "1840"
  source = "Robert Schumanns Werke, Serie XIII:
            Für eine Singstimme, mit Begleitung des Pianoforte.
            Leipzig: Breitkopf & Härtel, 1881-1912. Plate R.S. 120."
  moreInfo = "http://imslp.org/wiki/Myrthen,_Op.25_(Schumann,_Robert)"
  style = "Classical"
  copyright = "Public Domain"
  maintainer = "Pavel Roskin"
  maintainerEmail = "proski(at)gnu.org"
  lastupdated = "2012/Jan/24"

 mutopiasource = "Robert Schumanns Werke, Serie XIII: Für eine Singstimme, mit Begleitung des Pianoforte. Leipzig: Breitkopf & Härtel, 1881-1912. Plate R.S. 120."
 mutopiastyle = "Classical"
 mutopiacopyright = "Public Domain"

 footer = "Mutopia-2012/02/05-1813"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-0.5 MutopiaProject \hspace #-0.5 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-0.5 LilyPond \hspace #-0.5 \teeny .org } by \maintainer \hspace #-0.6 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

%{
The lyrics have some differences from the Heine's words.  I assume it was
an unintentional corruption.  Newer sources use the lyrics exactly as
written by Heine.  I also used Heine's version, but using the modern
orthography.
%}

% Grace notes with a slash over flag and stem, but without a slur
slashedGraceNote = \once \override Stem #'stroke-style = #"grace"

Melody = \relative c'' {
  \autoBeamOff \dynamicUp \tupletUp
  \set Score.tempoHideNote = ##t
  \tempo "Langsam" 4=30
  \key as \major \time 2/4
  r4 r8 c8 \p |
  bes4 ~ bes16 bes16 \times 2/3 { c[( bes]) c } |
  es8 des8 r8 f8 |
  g,8. g16 as8[( \grace { bes16[ as16] } g16]) as16 |
  bes4 r4 |
  r16 c16 c16 c16 des8. g,16 |
  es'8 a,4. |
  es'8 d16 es16 es8. f16 |
  es4 r8 c8 \p |
  bes4 ~ bes16 bes16 \times 2/3 { c16 bes16 c16 } |
  es8 des4 f8 |
  g,8. g16 as8 [ ( \grace { bes16[ as16] } g16 ] ) as16 |
  bes4 \tempo 4=27 r4^\markup { \italic "ritard." } |
  \tempo 4=30 c8^\markup { \italic "a tempo" } \< c16 c16 f8 c16 c16 \! |
  des8 des8 r4 |
  r16 c16 des16 \tempo 4=27 bes16^\markup { \italic "ritard." } es8. g,16 |
  as4^\markup { \italic "a tempo" } r4 |
  R2*3 |
  \bar "|." \barNumberCheck #21
}

Lyrics = \lyricmode {
  Du bist __ wie ei -- ne Blu -- me,
  so hold und schön __ und rein;
  ich "schau'" dich an, und Weh -- mut
  schleicht mir ins Herz hin -- ein.
  Mir ist, __ als ob ich die Hän -- de
  aufs Haupt dir le -- gen "sollt',"
  be -- tend, dass Gott dich er -- hal -- te,
  so rein und schön und hold.
}

RightClefTrick = \relative c {
  \clef treble
  \set Staff.middleCPosition = #6
  % Abuse a rest to draw a bass clef
  \once \override Staff.KeySignature #'extra-spacing-width = #'(0 . 6.5)
  \once \override Rest #'extra-offset = #'(-3 . 0)
  \once \override Rest #'stencil = #ly:text-interface::print
  \once \override Rest #'text = \markup { \musicglyph #"clefs.F_change" }
  f4\rest
  % Hide bass clef, we drew it already
  \once \override Staff.Clef #'X-extent = #'(+inf.0 . -inf.0)
  \once \override Staff.Clef #'stencil = ##f
  \clef bass
}

RightOne = \relative c' {
  \oneVoice \key as \major \time 2/4
  <c as es>16-. ( q-. q-. q-. q-. q-. q-. q-. ) |
  <bes as f> q q q q <bes f> <c a es> q |
  <es c f,>16 q <des bes f> q q q q q |
  <bes g es>16 q q q <as es> q <as es c> q |
  <bes g es bes> <bes g es> q q q q <b g es> q |
  <c as es> q q q <des g, es> q q q |
  \clef treble <es a, ges> q q q q q q q |
  <es bes g!> q q q <es c as!> q <f d as> q |
  <es g,> <es des! g,> <es des as> <es des a> <es des bes> <es b> <es c> ( e ) |
  r16 <bes' f> q q q q r16 <c es,!> |
  r16 <des des,> q q q q <des f, des> q |
  <g, es> q q q <as es> q <as es c> q |
  <bes es, bes> q q q <bes g es des>^\markup { \italic "ritard." } q <b g es des> q |
  <c as es c>4^\markup { \italic "a tempo" } <c a es c>4 |
  \voiceOne <des f, des>8 <des des,>16 q <as' as,>8.-> ( [ <e e,>16 ] ) |
  f16 c ( des bes^\markup { \italic "ritard." } ) as!8. [ g16 ] |
  \tempo 4=30 s16^\markup { \italic "a tempo" } s16*5 c,8 |
  \override TextSpanner #'(bound-details left text) = "ritard."
  des8 [ f16. ( e32 ] ) \clef treble e8 [ \acciaccatura { <des g,>16 [ es ] } \tempo 4=27 des'16.-\startTextSpan c32 ] |
  \tempo 4=24 c8. [ bes16 ] s4 |
  \tempo 4=22 \acciaccatura { g16 [ as bes ] } <as c,>2 \stopTextSpan |
  \bar "|." \barNumberCheck #21
}

RightTwo = \relative as' {
  \voiceTwo \time 2/4
  s2*14 |
  bes4 s4 |
  \acciaccatura { \stemUp f8 \stemDown } f8. [ fes16 ] es!8 <es des> ~ |
  \oneVoice <as es c>16 \clef bass <c, as es>-. [ ( q-. q-. ] q-. [ q-. ] ) \voiceTwo <fis, es> q |
  <g es>16 q <bes g> q q <c g> s8 |
  \voiceTwo c8 [ <es! f>16 des16 ] ~ \oneVoice \afterGrace <g es des>4 ^( { \slashedGraceNote as!8 ) } |
  s2 |
  \bar "|." \barNumberCheck #21
}

LeftOne = \relative as, {
  \oneVoice \clef bass \key as \major \time 2/4
  <as as,>2 |
  <des des,>4. \( <c c,>8 |
  <bes bes,>2 \) |
  r8 <des des,>8 [ \( <c c,>8 <as as,>8 ] |
  <es es,>2 \) |
  r8 <as as,>8 _\( -. r8 <bes bes,>8 -. |
  r8 <ces ces,>4. \) |
  <bes bes,>2 |
  <es es,>16 q <es f,> <es fis,> <es g,> q <es as,> ( e ) |
  des,16 <bes'' f> [ q q ] q [ q ] f, <a' f> |
  \voiceOne bes, <bes' f> q q q q q q |
  \oneVoice <bes des,> <bes es, des> q q <as es c> q <as es as,> q |
  \acciaccatura { \slurUp es,8 } g'16 <g es> q q q q q q |
  <as es as,>4 <a c, f,>4 |
  <bes f bes,>4 \acciaccatura { c,16 [ as'! ] _~ } <ges' as, c,>4-> ~ |
  \voiceOne as,16 a ( bes des ) \oneVoice <c es,>8 ~ <es, es,>8 |
  <as, as,>4. _\( <a a,>8 |
  <bes bes,>8 [ <des des,>8 <c c,> <bes bes,> ] |
  \voiceOne <g' e>16 [ <as f> ] <c a> bes \oneVoice <des bes es,>4 ~ |
  <es, as,>2 \) |
  \bar "|." \barNumberCheck #21
}

LeftTwo = \relative bes, {
  \voiceTwo \time 2/4
  s2*10 |
  bes2 |
  s2*4 |
  des4 s4 |
  s2*2 |
  \acciaccatura { \stemUp as8 \stemDown } as8 des8 s4 |
  s2 |
  \bar "|." \barNumberCheck #21
}

DynamicsOne = {
  s2 \p |
  s4 s4 \< |
  s16 s16 \! s16 \> s4 s16 \! |
  s2 |
  s4 s16 \< s16 s16 s16 \! |
  s4 s16 \< s16 s16 s16 |
  s32 s32 \! s16 s16 \> s4 s16 \! |
  s2 |
  s16 \< s16 s16 s16 \! s4 |
  s16 \< s16*6 s16 \! |
  s2*2 |
  s4 s16 \< s16 s16 s16 \! |
  s4 \< s4 \! |
  s2*2 |
  s16 \p s16 \< s16*4 s16 \! s16 |
  s2 |
  s4 s4 \> |
  s2 \! |
  \barNumberCheck #21
}

DynamicsTwo = {
  \once \override DynamicText #'transparent = ##t
  s2 \p |
  s2*8 |
  s16 \sustainOn s16*4 s16 \sustainOff s16 \sustainOn s32 s32 \sustainOff |
  s2*2 |
  s16 \sustainOn s16*4 s32 s32 \sustainOff s16*2 |
  s4 s16 \sustainOn s16 s16 s16 \sustainOff |
  s16 \sustainOn s16 s16 s16 \sustainOff s16 \sustainOn s16 s16 s16 \sustainOff |
  s2*2 |
  s8 \< s8 \! s8 \> s8 \! |
  s16 \< s16 s16 \> s16 s4 \! |
  s2 |
  \barNumberCheck #21
}

\score {
  <<
    \new Staff <<
      \context Staff <<
        \context Voice = "Melody" { \Melody }
        \new Lyrics \lyricsto "Melody" \Lyrics
      >>
    >>
    \new PianoStaff <<
      \new Staff <<
        \context Voice = "RightClefTrick" { \RightClefTrick }
        \context Voice = "RightOne" { \RightOne }
        \context Voice = "RightTwo" { \RightTwo }
      >>
      \new Dynamics = "DynamicsOne" \DynamicsOne
      \new Staff <<
        \context Voice = "LeftOne" { \LeftOne }
        \context Voice = "LeftTwo" { \LeftTwo }
      >>
      \new Dynamics = "DynamicsTwo" \with {
        % Workaround for Lilypond issue 2102, fixed in version 2.15.24
        \override VerticalAxisGroup #'staff-affinity = #UP
      } \DynamicsTwo
    >>
  >>
  \layout {}
}

\score {
  <<
    \new Staff \with {
      midiInstrument = #"flute"
      midiMinimumVolume = #0.5
      midiMaximumVolume = #1.0
    } \Melody
    \new Staff \with {
      midiMinimumVolume = #0.2
      midiMaximumVolume = #0.5
    } <<
      \DynamicsOne
      \DynamicsTwo
      \RightOne
      \RightTwo
      \LeftOne
      \LeftTwo
    >>
  >>
  \midi {}
}
