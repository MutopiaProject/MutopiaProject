\version "2.14.2"

\header {
  title = "Tyrolienne"
  source = "Statens musikbibliotek - The Music Library of Sweden"
  composer = "D. Joly"
  opus = ""
  mutopiacomposer = "JolyD"
  mutopiainstrument = "Guitar"
  style = "Classical"
  copyright = "Creative Commons Attribution-ShareAlike 3.0"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl at glx.com"
 footer = "Mutopia-2012/01/14-1825"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-0.5 MutopiaProject \hspace #-0.5 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-0.5 LilyPond \hspace #-0.5 \teeny .org } by \maintainer \hspace #-0.6 . \hspace #0.5 Copyright © 2012. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\layout {
  indent = 0\pt
  short-indent = 0\pt
}

global = {
  \key b \minor
  \time 3/8
  \override Score.RehearsalMark #'break-align-symbols = #'(key-signature)
  \override Score.KeySignature #'break-align-anchor-alignment = #RIGHT
  \mark "Allegretto."
}

% I have used breaks so that the 3 repeats in this short piece occur
% on the right margin. It is on one page with either A4 or Letter and
% will look fine in portrait output but should be changed for
% landscape.
mbreak = { \break }
%mbreak = {}

posI = \markup{"I"}
posII = \markup{"II"}
posIII = \markup{"III"}
posIV = \markup{"IV"}
posV = \markup{"V"}
posVI = \markup{"VI"}
posVII = \markup{"VII"}


upperVoice = \relative c' {
  \voiceOne
  \set fingeringOrientations = #'(left)
  \override Fingering #'staff-padding = #'()
  \partial 2 { a8 }
  \repeat volta 2 {
    <d, a' d fis>16.\arpeggio^\markup{"II sempre"}\f [ d'32 a8 fis'8 ] |
    <a-4>16.[ fis32 d8 fis] |
    a16->[ g32_( e) ] a16->[ g32_( e) ] a16[ g32_( e) ] |
    a16.[ fis32 d8 a ] |

    <d, a' d fis>16.\arpeggio [ d'32 a8 fis'] |
    a16.[ fis32 d8 fis] |
    a16[ g e_( g) cis, e] |
  }
  \alternative {
    { <a,, a'>16[ cis'] <d, d'>8[ a] | }
    { <a a'>16[ cis'] d8_[ <d'-4>_]^\posVII | }
  }
  \mbreak
  \repeat volta 2 {
    d16.^\markup{"VII sempre"} [ b32 g8 d'] |
    d16.[ a32 fis8 d'] |
    d16_([ cis!) b a b gis] |
    a16.[ gis32 a8 <d,, d' d'>8-> ] |
    <d d' d'>16.->[ b''32 g8 <d, d' d'>8 ] |
    <d d' d' >16.[ a''32 fis8 <d, d' d'>8 ] |
    <g b d'>16_([ e') <g-3>^\posI <e-0> cis e] |
  }
  \alternative {
    { <d, d' >4 d''8_\markup{ \italic "Fine."} | }
    { <d,, d' >4 <fis'-4 >8 | }
  }
  \mbreak
  \repeat volta 2 {
    a16_([ g) e e\staccato e\staccato e\staccato] |
    % FIXME? a16 below or g? Source beam angle and slur indicate a16 but ...
    % It is as if the engraver forgot to put a ledger line; the note obviously
    % sits at the 'a' position and not 'g' .
    a16_([ g) e a\staccato g\staccato e\staccato] |
    <b'-4>16^\posV _([ a) <fis-3> a\staccato a\staccato a\staccato] |
    b16_([ a) fis a\staccato a\staccato a\staccato] |

    a16_([ <e-0>) <g-2>_( e) <cis-1> e] |
    % FIXME? Using a phrasing slur instead of glissando in the next 2 bars
    <a,-1>16_\([ b <cis!-1> <d-2> e <fis-4> ]\) |
    <fis,-3 d'-2>8_\([ <fis d'>\) <a, a' e>16. <a' e'>32 ] |
  }
  \alternative {
    { <fis d'>4 fis'8 }
    { <d, d'>4 <fis'-1>16_([ e]) }
  }
  \mbreak
  % move the forte left so that it tucks under the key signature
  \once \override DynamicText #'X-offset = #-4
  e16_\f^\posII[ d b8 <fis'-1>16_( e)] |
  e16[ cis a'8 fis16\>_( e)\!] |
  <gis-1>16^\posIV _([ e) <b'-4> gis <e-0> <d-3>^\posI] |
  <bis-1>8[ cis fis16\>_( e)\! ] |

  e16^\posII _([ d) b8 fis'16_( e) ] |
  e16[ <cis-1> a'8 fis16_( e) ] |
  <gis-1>16^\posIV _([ d) b' gis e gis] |
  a4^\fermata a,8_\markup{\italic "D.C."}
  \mark \markup { \smaller \musicglyph #"scripts.segno" }
  \bar "|."
}

lowerVoice = \relative c {
  \voiceTwo
  \partial 2 { s8 }
  \repeat volta 2 {
    s4. |
    d4. |
    cis8[ cis cis] |
    d4. |
    s4. |
    d4. |
    cis8[ cis cis] |
  }
  \alternative { { s4. } { s4. } }
  \repeat volta 2 {
    d4. |
    d4. |
    e,4. |
    a4. |
    s4. |
    s4. |
    s4 a8 |
  }
  \alternative { { s4. } { s4. } }
  \repeat volta 2 {
    a4. |
    a4. |
    d4. |
    d4. |
    a4. |
    a4. |
    s4. |
  }
  \alternative { { s4. } { s4. } }
  \repeat unfold 3 { e4. a4. }
  e4. |
  a4 s8 |
}

\score {
  <<
    \new Staff = "Guitar"
    <<
      \clef "treble_8"
      \global
      \context Voice = "upperVoice" \upperVoice
      \context Voice = "lowerVoice" \lowerVoice
    >>
%{
    \new TabStaff = "guitar tab"
    <<
      \clef moderntab
      \context TabVoice = "upperVoice" \upperVoice
      \context TabVoice = "lowerVoice" \lowerVoice
    >>
%}
  >>
  \layout {}
}

% midi is moved to its own score so its repeats can be unfolded
\score {
  \unfoldRepeats {
    <<
      \new Staff = "MIDI Guitar"
      <<
	\global
	\set Staff.midiInstrument = #"acoustic guitar (nylon)"
	\context Voice = "melody" \upperVoice
	\context Voice = "bass" \lowerVoice
      >>
    >>
  }
  \midi {
    % There are a number of decrescendos that cause midi to fade to
    % nothing so the dynamic performer is removed.
    \context {
      \Voice
      \remove "Dynamic_performer"
    }
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 100 4)
    }
  }
}
