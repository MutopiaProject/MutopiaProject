\version "2.18.0"

\header {
  title = \markup{\halign #-2.3 {1.} {\small\raise #1.5 ere} Gymnopédie}
  dedication = "à Mademoiselle JEANNE de BRET"
  composer = "Erik Satie"

  mutopiatitle = "Gymnopédie No. 1"
  mutopiacomposer = "SatieE"
  mutopiainstrument = "Piano"
  date = "1888"
  source = "Dover Edition"
  % The Dover edition contains reproductions of the original work
  % with translations from the French typed on them.  The translations
  % are all that is new (copyrighted), and are not included in this
  % file.

  style = "Classical"
  copyright = "Public Domain"

  filename = "gymnopedie_1.ly"
  maintainer = "Evin Robertson"
  maintainerEmail = "nitfol@my-deja.com"
  lastupdated = "2000/Nov/1"

 footer = "Mutopia-2012/12/23-37"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } } }
}


global =  {
  \key b \minor
  \time 3/4
}

% The original doesn't use a volta, and thus takes nearly twice as much paper.
% Change from volta to unfolded (for each voice to) make it look like the
% original.

top = \context Staff \relative c'' {
  \dynamicUp
  \stemUp
  \slurUp
  \override Hairpin.to-barline = ##f
  \bar ".|:"
  \repeat volta 2 {
    R2.^\markup{\hspace #10 "Lent et douloureux"} |
    R2. |
    R2. |
    R2. |
    s4 fis( \pp \< a |
    g fis cis |
    % The hairpin override is to align it with a previous hairpin
    b cis\! \once\override Hairpin.Y-offset = #7 d\> |
    \barNumberCheck #8
    a2. |
    fis2.\!) ~ |
    fis2. ~ |
    fis2. ~ |
    fis2. |
    s4 fis'\<( a | g fis cis |
    b cis  d\! |
    a2.\> |
    \barNumberCheck #17
    cis2. |
    fis2. |
    e,2.\!) ~ |
    e2. ~ |
    e2. |
    a4(\< b c |
    e d b |
    d c  b\! |
    \barNumberCheck #25
    d2.\> ~ |
    d2\!) d4(\< |
    e f g |
    a c,  d\! |
    e\> d b |
    d2.\! ~ |
    d2) d4  |
    \barNumberCheck #32

  } \alternative {
    {
      g2.( \< |
      fis2.\! |
      b,4 a b |
      cis d e |
      cis d \> e |
      fis,2. |
      < c' a e c>2.\!) |
      <d a fis d>2. |
      \barNumberCheck #40
    } {
      g2.( \< |
      f2.\! |
      b,4 c f |
      e d c |
      e d c \> |
      f,2. |
      <c' a e c>2. |
      < d a f d>2.\!) \bar "|."
    }
  }
}

middle = \context Voice = "accomp" \relative c' {
  \override NoteColumn.horizontal-shift = #1
  \repeat volta 2 {
    r4 <fis d b>2 |
    r4 <fis cis a>2 |
    r4 <fis d b>2 |
    r4 <fis cis a>2 |
    r4 <fis d b>2 |
    r4 <fis cis a>2 |
    r4 <fis d b>2 |
    r4 <fis cis a>2 |
    r4 <fis  d b>2\f |
    r4 <fis cis a>2 |
    r4 <fis d b>2 |
    r4 <fis cis a>2 |

    r4 <fis  d b>2\pp |
    r4 <fis cis a>2 |
    r4 <fis d b>2 |
    r4 <fis cis a>2 |
    r4 <fis cis a>2 |
    r4 <fis d b>2 |
    \change Staff=bass
    \stemUp
    r4 <b, g>2 |
    r4 <g' d b>2 |
    r4 <d a f>2

    r4 <e c a>2\p |
    r4 <e b g>2 |
    r4 <e b g d>2 |
    r4 <d a e c>2 |
    r4 <d a fis c>2 |
    r4 <f c a>2 |
    r4 <e c a>2 |
    r4 <e b g d>2 |
    r4 <d a e c>2 |
    r4 <d a fis c>2 |
  }
  \alternative {
    {
      \change Staff=treble
      \stemUp
      e4\rest <g e b>2 |
      e4\rest <fis cis a>2 |
      d4\rest <fis d b>2 |
      d4\rest <a' e cis>2 |
      d,4\rest <a' fis cis a>2 |
      a,4\rest <d a>4 <g d b> |
      s2. |
      s2. |
    } {
      \change Staff=treble
      \stemUp
      e4\rest <g e b>2 |
      e4\rest <a f d a>2 |
      d,4\rest <f c a>2 |
      d4\rest <a' e c>2 |
      d,4\rest <a' f c a>2 |
      a,4\rest <d a>4 <g d b> |
      s2. |
      s2. |
    }
  }
}

bottom = \context Staff \relative c {
  \stemDown

  \repeat volta 2 {
    g2. |
    d2. |
    g2. |
    d2. |
    g2. |
    d2. |
    g2. |
    d2. |
    g2. |
    d2. |
    g2. |
    d2. |

    g2. |
    d2. |
    g2. |
    d2. |
    fis2. |
    b,2. |
    e2. |
    e2. |
    d2. |

    a2. |
    d2. |
    d2. |
    d2. |
    d2. |
    d2. |
    d2. |
    d2. |
    d2. |
    d2. |
  }
  \alternative {
    {
      e2. |
      fis2. |
      b,2. |
      e2. |
      e2. |
      << \context Voice = "othervoice" {c'4\rest b e} e,2. >> |
      <g' a,>2. |
      \stemUp
      <d a d,>2. |
    } {
      \stemDown
      e,2. |
      e2. |
      e2. |
      e2. |
      e2. |
      << \context Voice = "othervoice" {c'4\rest b e} e,2. >> |
      \stemUp
      <g' a,>2. |
      <d a d,>2. |
    }
  }
}



\score {
  \context PianoStaff <<
    \context Staff = "treble" <<
      \global
      \clef treble
      \top
      \middle
    >>
    \context Staff = "bass" <<
      \global
      \clef bass
      \bottom
    >>
  >>
  \midi { }
  \layout {
    % The layout has been adjusted to force a match to original engraving.
    ragged-right = ##f
    \context {
      \Score
      \override SpacingSpanner.shortest-duration-space = #3.0
      \override SpacingSpanner.spacing-increment = #1.2
    }
  }
}
