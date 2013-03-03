\version "2.16.1"

\header{
  title = "Sun Flower Slow Drag"
  subtitle = "Rag Time Two Step"
  composer = "Scott Joplin and Scott Hayden"

  % This is feature misuse ("Not fast" is not musical piece :), but other
  % Lilypond files (mis)use it in the same way,...
  piece = "Not Fast"

  mutopiatitle = "Sun Flower Slow Drag"
  mutopiacomposer = "JoplinS"
% ... and "Scott Hayden (1882-1915)"
  mutopiainstrument = "Piano"
  mutopiasource = "Reproduction of original edition (1901)"
  mutopiamoreInfo = "This piece was written with Scott Hayden (1882-1915)."

  date = "c. 1901"
  style = "Jazz"
  copyright = "Public Domain"

  maintainer = "Daniel Škarda"
  maintainerEmail = "0rfelyus@ucw.cz"

% This file is maintained using GNU Arch (http://www.gnuarch.org):
%
%  Archive and version: 0rfelyus@hobitin.ucw.cz--2004-music/joplin-sun-flower-slow-drag--main--1.0
%  ArchiveLocation:     http://www.ucw.cz/~0rfelyus/{archives}/0rfelyus@hobitin.ucw.cz--2004-music

% Changes:
%
%  Oct 21 2004
%
%   serious errors:
%	LH 18: <b g c> => <b g c,> !!!!
%
%   accidentals - use ! to force all  accidentals which were present in original typeset
%	RH: 7, 8, 12, 15, 43, 44, 47, 50, 61, 69, 73, 90
%	LH: 12, 19, 37, 47, 53, 57, 74, 91
%
%   decrescendo => crescendo (23)
%
%   minor fixies:
%	beams (LH 22, L+R 39)
%	stem orientation (LH 35, 43, 47, 54, 67, 72)

 footer = "Mutopia-2013/03/03-465"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } } }
}

% ---- Helpers ... ---------------------------------------------------

mergeDiffHeads = { \override Staff.NoteCollision #'merge-differently-headed = ##t }


% line breaks in original. Define to {} if you want to overide original line breaks.
%oBreak = \break
oBreak = {}

% ---- Upper ... -----------------------------------------------------

upper =  \relative c'' {
  \clef treble
  \key bes \major
  \time 2/4

									% INTRO
  {
    d16 f8 bes,16 d4 | g,16 a bes d, ~ d4				%1
    es16 f g es d c8 f16 |
    f,8 <f' f'>-^[ <g g'>-^ <a a'>-^ ]
  }
  \oBreak

  \repeat volta 2 {
    \bar "|:"
    \stemDown
    <bes bes'>16 d f <a, a'> ~ <a a'> <g g'>8 <bes d>16	|		%5
    <f f'> <bes d> <g g'> <f f'> ~ <f f'> d' bes f |
    g' g, ( gis a bes ) g'! g, e' |
    f f, d' <g g,> ~ <g g,> <a a,>8 <es! f>16 |

    <bes bes'> d f <a, a'> ~ <a a'> <g g'>8 <bes d>16 |			%9
    <f f'> <bes d> <g g'> <f f'> ~ <f f'> d' bes f |
    c' b c d \stemUp c bes a g \stemNeutral |
    f c' es! <g g,> ~<g g,> <a a,>8 <es f>16 |

    <bes bes'> d f <a, a'> ~ <a a'> <g g'>8 <bes d>16 |			%13
    <f f'> <bes d> <g g'> <f f'> ~ <f f'> d' bes f |
    g' g, ( gis a bes ) g'! g, e' |
    <f f,> <d bes> <g g,> <a a,> ~ <a a,> <g g,>8 <es bes>16 |
    <f f,> <d bes> <g g,> <f f,> ~ <f f,> d b g |

    \stemUp
    <e d'>8 <d c'> <es d'> <es c'> |					%18
  } \alternative {
    {
      <d bes'>2 ~ |

      <d bes'>8 <f f'>^^ \stemDown <g g'>-^ <a a'>-^
    }
    {
      \stemUp
      <d, bes'>2 ~ |
      <d bes'>8 r8 r4 |
    }
  }

  \oBreak

  \repeat volta 2 {
    \bar "|:"
    \stemNeutral
    r8 <a' es' g>  [ <a es' g> <a es' g> ] |				%23
    <a es' f>16 <a es' a>8 <a es' g>16 ~ <a es' g> f' es c |
    bes8 <bes d g> <bes d g> <bes d g> |
    <bes d f>16 <bes d bes'>8 <bes d g> 16 ~ <bes d g> d f <bes, bes'> |

    \oBreak

    <a es' a>8 <gis es' gis>16 <a es' a> ~ <a es' a> <bes bes'>8 f'16 | %27
    <c es c'>8 <b b'>16 <c es c'> ~ <c es c'> <cis cis'>8 f16 |
    <d d'>16 bes d f <a, cis a'> <g cis g'>8 <f d' f>16 ~ |
    <f d' f>2 |

    \oBreak

    r8 <a es' g> [ <a es' g> <a es' g> ] |				%31
    <a es' f>16 <a es' a>8 <a es' g>16 ~ <a es' g> f' es c |
    bes8  <bes d g> <bes d g> <bes d g>
    <bes d g>16 <bes d f>8 <bes d f>16 ~ <bes d f> bes d f |

    \oBreak

    <g g,>8 <bes bes,> <a a,> <g g,> |					%35
    <f f,>16 <d bes> <g g,> <f f,> ~ <f f,> d b g |
    \stemUp
    <e d'>8 <e c'> <es d'> <es c'> |
  } \alternative {
    {
      <d bes'>2 |
    }
    {
      <d bes'>8 <f f'>^^ \stemNeutral <g g'>-^ [ <a a'>-^ ] | \bar "||"
    }
  }

  \oBreak

  {									%40
    <bes bes'>16 d f <a a,> ~ <a a,> <g g,>8 <d bes> 16 |
    <f f,> <d bes> <g g,> <f f,> ~ <f f,> d bes f |
    g' g, ( gis a bes ) g'! g, e' |
    f f, d' <g g,> ~ <g g,>  <a a,>8 <es! f>16 |
    <bes bes'> d f <a a,> ~ <a a,> <g g,>8 <d bes>16 |

    \oBreak

    <f f,> <d bes> <g g,> <f f,> ~ <f f,> d bes f |			%45
    c' b c d \stemUp  c bes a g \stemNeutral |
    f c' es! <g g,> ~ <g g,> <a a,>8 <es f> 16 |
    <bes bes'> d f <a a,> ~ <a a,> <g g,>8 <d bes>16 |
    <f f,> <d bes> <g g,> <f f,> ~ <f f,> d bes f |

    \oBreak

    g' g, ( gis a bes ) g'! g, e' |					%50
    <f f,> <d bes> <g g,> <a a,> ~ <a a,> <g g,>8 <es bes>16 |
    <f f,> <d bes> <g g,> <f f,> ~ <f f,> d b g |
    \stemUp <e d'>8 <e c'>  <es d'> <es c'> |

    \oBreak

    <d bes'>2 ~ |							%54
    <d bes'>8 r \stemNeutral <bes' d f bes> r | \bar "||"
  }
  {
    \key es \major

    \stemUp \mergeDiffHeads
    << { <f as d>16 <f as d>8 <f as des>16 <f as c>
	 <f as c> <f as ces> <f as bes> ~ |
	 <f as bes>8 [ <as f'>16 bes ]
	 <as f'>16 bes <as f'> bes  | } \\
       { s2 | s8 as8 as8 as8 \noBeam | } >>
    \oBreak


    \stemDown <g es'>2 |						%58
    <g es'>8 r8 r4 \stemNeutral |
  }

  \repeat volta 2 {
    <es a d>8 <es a c>16 <es a d> ~ <es a d> c' a f |
    \stemNeutral <as! d g>8 <as d f>16 <as d g> ~ <as d g> f' d bes |
    <f' f'> <g bes> <es es'> <d d'> ~ <d d'> <c c'>8  <es g>16 |

    \oBreak

    <bes bes'> <es g> <c c'> <bes bes'> ~ <bes bes'> es g bes |		%63
    <es es,> as, c <es es,> ~ <es es,> <f f,>8 <es es,>16 |
    <bes bes,> es, g <bes bes,> ~ <bes bes,> <c c,>8 <bes bes,>16 |
    <f f,> <es es'> <d d'> <c c'> ~ <c c'> <f f,> <g g,> <a a,>
    <bes bes,>4. r8 |

    \oBreak

    \stemUp <d, a es>8 <c a es>16 <d a es> ~ <d a es> c a f |		%68
    \stemNeutral <g' d as!>8 <f d as>16 <g d as> ~ <g d as> f d bes |
    <f' f'> <g bes> <es es'> <d d'> ~ <d d'> <c c'>8  <es g>16 |
    <bes bes'> <es g> <c c'> <bes bes'> ~ <bes bes'> es g <bes bes,> |

    \oBreak

    <c as f c>4 <c as f c>8 <ces as f ces> |				%72
    <bes g es bes>16 <g es> <c! c,!> <bes bes,> ~ <bes bes,> g e c |
    <a g'>8 <a f'> <as g'> <as f'> |
  } \alternative {
    { <g es'>2 }
    { <g es'>4 <bes bes'>8 <b b'> | \bar "||" }
  }

  \oBreak

  \repeat volta 2 {
    <c' c,>16 as bes <c c,> ~ <c c,> <cis cis,>8 as16 |			%77
    <d d,> as bes <d d,> ~ <d d,> <g g,>8 <f f,>16 |
    <es es,> g, bes <d d,> ~ <d d,> <c c,>8 <g es>16 |
    <bes bes,>4 ~ <bes bes,>16 <bes bes,> <c c,> <d d,> |

    \oBreak

    <es es,> as, bes <d d,> ~ <d d,> <c c,>8 d,16 |			%81
    <bes' bes,>4 ~ <bes bes,>16 <bes bes,> <c c,> <d d,> |
    <es es,> g, bes <d d,> ~ <d d,> <c c,>8 es,16 |
    <bes' bes,>4 <bes as bes,>8 <b as b,> |

    <c c,>16 as bes <c c,> ~ <c c,> <cis cis,>8 as16 |			%85
    <d d,> as bes <d d,> ~ <d d,> <g g,>8 <f f,>16 |
    <es es,> g, bes <d d,> ~ <d d,> <c c,>8 <g es>16 |
    <bes bes,> <g es> <c c,> <bes bes,> ~ <bes bes,> es, g <bes bes,> |

    <c as f c>4 <c as f c>8 <ces as f ces> |				%89
    <bes g es bes>16 <g es> <c! c,!> <bes bes,> ~ <bes bes,> g e c |
    <g' a,>8 <f a,> <g as,> <f as,> |
  } \alternative {
    { <es g,>4 <bes as' bes>8 <b as' b> | }
    { <es g,>4 <es g bes es>8 r | \bar "|."}
  }
}

% ---- Lower ... -----------------------------------------------------

lower =  \relative c' {
  \clef bass
  \key bes \major
  \time 2/4

									% INTRO
    d16 f8 bes,16 d4 | g,16 a bes d, ~ d4				%1
    es16 f g es d c8 f16 |
    f,8 <f' f,>-^[ <es es,>-^ <c c,>-^ ]

  \repeat volta 2 {							%5
    \stemDown <bes bes,>8-^ <f' bes d> f,  <f' bes d> |
    \stemNeutral bes, <f' bes d>   d <f bes d> |
    <es es'> <bes bes'> <c c'> <cis cis'> |
    <d d'> <f f,> <es es,> <c c,>

    \stemDown <bes bes,>-^ <f' bes d> f, <f' bes d> |			%9
    \stemNeutral bes, <f' bes d> d des |
    c <a' c f> c, <g' bes c e> |
    <f a c> <f f,>-^ <es! es,!>-^ <c c,>-^ |

    \stemDown <bes bes,>-^ <f' bes d> f, <f' bes d> |			%13
    \stemNeutral bes, <f' bes d> d <f bes d> |
    <es es'> <bes bes'> <c c'> <cis cis'> |
    <d d'> <es es'> <f f'> <es es'> |
    <d d'> <f bes d> g, <g' b d f> |

    <bes! g c,> <bes g c,> <a f> <a f> |				%18
  } \alternative {
    {
      \stemDown
      <bes bes,> <f f,>16 <g g,> ~ \stemUp
	<g  g,> <f f,> <d d,> <c c,> |
      <bes bes,>8 <f' f,>-^ <es es,>-^ <c c,>-^ |
    }
    {
      \stemDown
      <bes' bes,>8 <f f,>16 <g g,> ~ \stemUp
        <g g,> <f f,> <d d,> <c c,> |
      <bes bes,>8 <f f'> \stemDown <g g'> [ <gis gis'> ] |
    }
  }

  \repeat volta 2 {
    \stemDown
    <a a'>8-^ <f' c' es> f, <f' c' es> |				%23
    c <f c' es> f, <f' c' es> |
    bes, <f' bes d> f, <f' bes d> |
    bes, <f' bes d> f, <f' bes d> |

    c <f c' es> f, <f' c' es> |						%27
    a, <f' a es'> f, <f' a es'> |
    bes, <f' bes d> <e bes' cis> <e bes' cis> |
    <f  bes d> <f f,> <g g,> <gis gis,> |

    <a a,>-^ <f c' es> f, <f' c' es> |					%31
    c <f c' es> f, <f' c' es> |
    bes, <f' bes d> f, <f' bes d> |
    bes, <f' bes d> d <f as bes d>

    <es g bes es> <g g,> \stemUp <f f,> <es es,> \stemDown |		% 35
    <d d,> <f bes d> g, <g' b d f> |
    <c, g' bes!> <c g' bes> <f a> <f a> |
  } \alternative {
    {
      <bes bes,> <f f,> <g g,> <gis gis,> |
    }
    {
      <bes bes,> <f f,>-^ \stemUp <es es,>-^ [ <c c,>-^ ] \stemDown | \bar "||"
    }
  }

  {
    <bes bes,>-^ <f' bes d> f, <f' bes d> |				%40
    bes, <f' bes d> d <f bes d> |
    <es es'> <bes bes'> <c c'> <cis cis'> |
    <d d'> <f f,>-^ \stemUp <es es,>-^ <c c,>-^ \stemDown |
    <bes bes,>-^ <f' bes d> f, <f' bes d> |

    bes, <f' bes d> d des |						%45
    c <a' c f> c, <g' bes c e> |
    <f a c> <f f,>-^ \stemUp <es! es,!>-^ <c c,>-^ \stemDown |
    <bes bes,>-^ <f' bes d> f, <f' bes d> |
    bes, <f' bes d> d <f bes d> |

    <es es'> <bes bes'> <c c'> <cis cis'> |				%50
    <d d'> <es es'> <f f'> <es es'> |
    <d d'> <f bes d> f, <g' b d f> |
    <c, g' bes!> <c g' bes> <f a> <f a> |

    <bes bes,> <f f,>16 <g g,> ~ \stemUp <g g,> <f f,> <d d,> <c c,> |	%54
    <bes bes,>8 r <bes bes,> r |
  }
  {
      \key es \major

      \stemUp
      <bes bes,> <b b,> <c c,> <cis cis,> |
      <d d,> <bes! bes,!> <c! c,!> <d d,> |

      \stemDown								%58
      <es es,> <g g,>16 <as as,> <a a,> <bes bes,> <c c,> <d d,> |
      \stemUp <es es,>8 <bes, bes,> <g g,> <ges ges,> |
  }

  \repeat volta 2 {
    <f f,>4 <a a,> |
    <bes bes,> <d d,> |
    \stemNeutral <es es,>8 <bes' es g> bes, <bes' es g> |

    es, <bes' es g> g, <bes' es g> |					%63
    as, <c' es as> as, <ces' es as> |
    es, <bes' es g> <g g,> <ges ges,> |
    <f f,> <f bes d> f <a es'> |
    \stemUp <bes d> <bes, bes,> <g g,> <ges ges,>

    <f f,>4 <a a,> |							%68
    <bes bes,> <d d,> |
    \stemDown <es es,>8 <bes' es g> bes, <bes' es g> |
    es, <bes' es g> <g g,> <bes es g> |

    <as as,> <c f as> \stemUp <f, f,> <g g,>16 <as as,> \stemDown |	%72
    <bes bes,>8 <bes es g> c, <bes' c e> |
    <f c' es!> <f c' es> <bes d> <bes d> |
  } \alternative {
    { \stemUp <es es,> <bes, bes,> <g g,> <ges ges,> \stemDown | }
    { <es' es'> <bes bes'> \stemUp <bes bes,>4 \stemDown | }
  }

  \repeat volta 2 {
    \bar "|:"

    <f' f,>8 <bes d as'> bes, <bes' d as'> |				%77
    f <bes d as'> bes, <bes' d as'> |
    es, <bes' es g> bes, <bes' es g> |
    es, <bes' es g> bes, <bes' es g> |

    f <bes d as'> bes, <bes' d as'>	|				%81
    d, <bes' d as'> bes, <bes' d as'> |
    es, <bes' es g> bes, <bes' es g> |
    es, <bes' es g> \stemUp <bes, bes,>4 |

    \stemDown <f' f,>8 <bes d as'> bes, <bes' d as'> |			%85
    f <bes d as'> bes, <bes' d as'> |
    es, <bes' es g> bes, <bes' es g> |
    es, <bes' es g> <g g,> <bes es g> |

    <as as,> <c f as> <f, f,> <g g,>16 <as as,> |			%89
    <bes bes,>8 <bes es g> c, <bes' c e> |
    <es! c f,> <es c f,> <d bes> <d bes> |
  } \alternative {
    { <es es,> <bes bes,> \stemUp <bes, bes,>4^^ | }
    { \stemDown <es' es,>8 <bes bes,> \stemUp <es, es,> r | }
  }
}

% --- Dynamics ... ---------------------------------------------------

dynamics =  {
  \repeat unfold 4 { s2 | }
  \repeat volta 2 {
    \repeat unfold 14 { s2 | }
  } \alternative {
    { s2 | s2 | }
    { s2 | s8 s8 \< s8 s8 \! }						%22
  }
  \repeat volta 2 {
    s8 \> s8 \! s8 \f s8 |						%23
    \repeat unfold 6 { s2 | }
    s8 s8 \< s8 s8 \! |							%28
    s8 \> s8 \! s8 \f s8 |
    \repeat unfold 6 { s2 | }
  } \alternative {
    { s8 s8 \< s8 s8 \! | }						%38
    { s2 }
  }
  \repeat unfold 16 { s2 | }
  \repeat unfold 3  { s2 | }
  s8 \> s8 s8 s8 \! |							%59
  \repeat volta 2 {
    s8 \p s8 s4 |
    \repeat unfold 14 { s2 | }
  } \alternative {
    { s2 }
    { s4 s8 \< s8 \! | }
  }
  \repeat volta 2 {
    s8 \f s8 s8 s8 |
    \repeat unfold 14 { s2 | }
  } \alternative {
    { s2 | }
    { s2 | }
  }
}

% ---- Score ... -----------------------------------------------------

\score {

  \context PianoStaff <<
    \context Staff = "upper" \upper
    \context Dynamics = "dynamics" \dynamics
    \context Staff = "lower" \lower
  >>

  \layout { }
}

\score {
  \context PianoStaff <<
    \context Staff = "upper" \unfoldRepeats \upper
    \context Dynamics = "dynamics" \unfoldRepeats \dynamics
    \context Staff = "lower" \unfoldRepeats \lower
   >>

  \midi {
   \tempo 4 = 72
    \context {
      \type "Performer_group"
      \name Dynamics
      \consists "Dynamic_performer"
    }
    \context {
      \PianoStaff
      \accepts Dynamics
    }
  }
}

% arch-tag: Daniel Skarda Sun Jul 18 12:51:02 2004 (Sun Flower Slow Drag)
