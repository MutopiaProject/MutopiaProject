\version "2.2.3"

\header{
  title = "Sugar Cane"
  subtitle = "A Rag Time Two Step"
  composer = "Scott Joplin"

  % Composers recomendation:
  % Note: Do not play thies piece fast. It is never right
  % to play Ragtime fast. Composer.

  % This is feature misuse ("Not fast" is not musical piece :), but other
  % Lilypond files (mis)use it in the same way,...
  piece = "Slow March Tempo"

  mutopiatitle = "Sugar Cane"
  mutopiacomposer = "JoplinS"
  mutopiainstrument = "Piano"

  date = "C. 1908"
  style = "Jazz"
  copyright = "Public Domain"

  maintainer = "Daniel Skarda"
  maintainerEmail = "0rfelyus@ucw.cz"

% This file is maintained using GNU Arch (http://www.gnuarch.org):
%
%  Archive and version: 0rfelyus@hobitin.ucw.cz--2004-music/joplin-sugar-cane--main--1.0
%  ArchiveLocation:     http://www.ucw.cz/~0rfelyus/{archives}/0rfelyus@hobitin.ucw.cz--2004-music

  tagline = "\\parbox{\\hsize}{\\thefooter\\quad\\small\\noindent\\hspace{\\stretch{1}} "
    + "This music is part of the Mutopia project: \\hspace{\\stretch{1}} "
    + "\\texttt{http://www.MutopiaProject.org/}\\\\ "
    + "\\makebox[\\textwidth][c]{It has been typeset and placed in the public domain by "
    + "Daniel \v{S}karda" % \maintainer
    + ".} \\makebox[\\textwidth][c]{"
    + "Unrestricted modification and redistribution is permitted and encouraged---"
    + "copy this music and share it!}}"
  footer = "Mutopia-2004/10/21-467"

  lastupdated = "2004/Oct/21"

% Changes:
%
%  Oct 21 2004
%
%   serious errors:
%	RH 17, 50: <f a> => <f a,> !!!!
%
%   accidentals - use ! to force all  accidentals which were present in original typeset
%	RH: 8, 46, 50, 60
%	LH: 74
%
%   slurs:
%	RH: 28
%
%   beams:
%	LH: 16, 75
}

% --- Utilities ... --------------------------------------------------

% oBreak helps to break lines after same measures as in original score.
% For easier checking it is usefull to define it to \break, otherwise
% leave it empty
oBreak = \break

startInvisible =  { \set Score.skipTypesetting = ##t }
endInvisible =  { \set Score.skipTypesetting = ##f }

noStem = { \once \override Stem #'transparent = ##t }

% ---- Upper ... -----------------------------------------------------

upper = \notes\relative c'' {
									% INTRO
  \clef treble
  \key bes \major
  \time 2/4
  \tempo 4 = 100

  \partial 8 r8								%0

  \repeat volta 2 {
    r16 d ( f, bes d f bes d ) |					%1
    f ( g f es c a g f ) |
    r \stemDown d ( f, bes d f bes d ) \stemBoth |

    f ( g f es c a g f ) |						%4
    es,8 ges16 ( es d8 f ) |
    es ges16 ( es d8 f, ) |
    r16 g ( cis g' ) r g (cis g') |

    \oBreak

    r g ( cis e ) <g cis, g>8 [ r16 <f d bes f> ] ~ |			%8
    <f d bes f> <d bes> <g g,> bes, es <ges ges,>8 <f d bes f>16 ~ |
    <f d bes f> <d bes> <e e,> bes d <f f,>8  <f a,>16 ~ |
    <f a,> es! <f a,> c es <f a,>8 <bes d, bes>16 ~ |

    \oBreak

    <bes d, bes>8 <g, bes, g> <f bes, f> <e bes e,>16 <f d bes f> ~ |	%12
    <f d bes f> <d bes> <g g,> bes, es <ges ges,>8 <f d bes f>16 ~ |
    <f d bes f> <d bes> <e e,> bes d <f f,>8. |
  } \alternative {
    {
      r16 es ( <f a,> c es) <f a,>8 <bes d, bes>16 ~ |
      <bes d, bes>4 ~ <bes d, bes>8 r8 |
      \oBreak
    }
    {
      r16 es, ( <f a,> c ) es <f a,>8 <bes d, bes>16 ~ |			%17
      <bes d, bes>8 \noBeam f,^^ [ bes^^ gis^^ ] |
    }
  }

  \repeat volta 2 {
    a16 ( es' a g ) ~ g c, ( es c' ) |
    es, ( a es' d ~ d a c ) <a a'> |

    \oBreak

    <bes d bes'>8 <g bes d g> <f bes d f> <cis cis'>16 <d d'> ~ |	%21
    <d d'> <f f,> <fis fis,> <g g,> ~ <g g,> <d bes> <f f,>8 |
    <a es'a> <g es' g> <f es' f> <d d'>16 <es es'> ~ |
    <es es'> <f f,> <fis  fis,> <g g,> ~ <g g,> <es a,> <f f,>8 |

    \oBreak

    <bes d bes'>8 <g bes d g> <f bes d f> <cis cis'>16 <d d'> ~ |	%25
    <d d'> <f f,> <fis fis,> <g g,> ~ <g g,> <d bes> <f f,>8 |
    a,16 ( es' a g ) ~ g c, ( es c' ) |

    \oBreak

    es, ( a es' d ) ~ d a c <a a'> |					%28
    <bes d bes'>8 <g bes d g> <f bes d f> <cis cis'>16 <d d'> ~ |
    <d d'> <f f,> <fis fis,> <g g,> ~ <g g,> <d bes> <f f,>8 |
    d16 c8 bes16 ~ bes ( c bes8 ) |

    \oBreak

    d16 c8 bes16 ~ bes ( c bes8) |					%32
    bes16 c8 d16 ~ d16 ( g f8 ) |
  } \alternative {
    { <bes, e,> <c a es> <bes d,> gis^^ }
    { <bes e,> <c a es> <bes d,> r }
  }

  {
    r16 d ( f, bes d f bes d ) |					%36
    f ( g f es c a g f ) |
    r \stemDown d ( f, bes d f bes d ) \stemBoth |
    f ( g f es c a g f ) |

    \oBreak

    es,8 ges16 ( es d8 f ) |						%40
    es ges16 ( es d8 f, ) |
    r16 g ( cis g' ) r g (cis g') |
    r g ( cis e ) <g cis, g>8 [ r16 <f d bes f> ] ~ |
    <f d bes f> <d bes> <g g,> bes, es <ges ges,>8 <f d bes f>16 ~ |

    \oBreak

    <f d bes f> <d bes> <e e,> bes d <f f,>8  <f a,>16 ~ |		%45
    <f a,> es! <f a,> c es <f a,>8 <bes d, bes>16 ~ |
    <bes d, bes>8 <g, bes, g> <f bes, f> <e bes e,>16 <f d bes f> ~ |
    <f d bes f> <d bes> <g g,> bes, es <ges ges,>8 <f d bes f>16 ~ |

    \oBreak

    <f d bes f> <d bes> <e e,> bes d <f f,>8. |				%49
    r16 es! <f a,> c  es <f a,>8 <bes d, bes>16 ~ |
    <bes d, bes>4 <bes d, bes>8 r |
  }

  \repeat volta 2 {
    \key es \major

    << { s8. \noStem as16 ~ as ( g f8 ) |
	 s8. \noStem as16 ~ as ( g f fis ) | } \\
       { <d bes'>8. <d as'>16 ~ d4 |
	 <d bes'>8. <d as'>16 ~ d4 } >>

    \oBreak

    << { g16 c g c g c g c |						%54 a
	 c (f, fis g) ~ \noStem g8 s8 |
	 s8. \noStem as16 ~ as ( g f8 ) |
	 s8. \noStem as16 ~ as ( g f fis ) |
	 g c g c g c g c } \\
       {								%b
	 es,8 [ ( d c d ) ] |
	 es8. es16 ~ <es g>8 <cis bes'> |
	 <d bes'>8. <d as'>16 ~ d4 |
	 <d bes'>8. <d as'>16 ~ d4 |
	 es8 [ ( d c d ) ]
       } >>

    \oBreak

    << { c'8. bes16 ~ \noStem bes8 s |					%59 a
	 s8. \noStem bes!16 ~ bes16 ( as g8 ) |
	 s8. \noStem bes16 ~ bes16 (as g c ) | } \\
       { es,16 f fis g ~ <g bes>8 <f b> |				%b
	 <e c'>8. <e bes'>16 ~ e4 |
	 <e c'>8. <e bes'>16 ~ e4 |
       } >>
    r16 c' <f, f'> as c <g g'>8 as16 |
    <f f'> as c <g g'> ~ <g g'> <as c> <f f'>8 |

    \oBreak

    <fis fis'> ( <es es'> <c c'> <a a'> ) |				%64
    <bes es g bes>8. ( es16 ) g ( <bes bes,>8. ) |
  } \alternative {
    {
      <bes, d f bes>8. ( d16 ) f <bes d, bes>8 <es, bes g>16 ~ |
      <es bes g>4. <cis bes'>8
    }
    {
      <bes d f bes>8. ( d16 ) f <bes d, bes>8 <es, bes g>16 ~ |
      <es bes g>4 ~ <es bes g>8 r
    }
  }
  \oBreak

  \repeat volta 2 {
    \key bes \major

    r 16 <es bes> <g g,> bes, es <g g,>8 <bes bes,>16 ~ |		%70
    <bes bes,> <g es> <c c,>8 <bes es, bes> <c es, c>16 <d bes f d> ~ |
    <d bes f d>8 <f, d bes f> <e e,>16 <f d bes f>8 <f d bes f>16 ~ |
    <f d bes f>4. <d f d'>8 |
    <c es c'> <f es a, f> <e e,>16 <f es a, f>8 <f es a, f>16 ~ |
    <f es a, f>4. <es g es'>8

    \oBreak

    <d f d'> <f d bes f> <e e,>16 <f d bes f>8 <f d bes f>16 ~ |	%76
    <f d bes f>2 |
    r16 <es bes> <g g,> bes, es <g g,>8 <bes bes,>16 ~ |
    <bes bes,> <g es> <c c,>8 <bes ges es bes> <c ges es c>16 <d bes f d> ~ |
    <d bes f d>8 <f, d bes f> <e e,>16 <f d bes f>8 <f d bes f>16 ~ |
    <f d bes f>4 <c f,> |

    \oBreak

    d16 c8 bes16 ~ bes ( c bes8 ) |					%82
    d16 c8 bes16 ~ bes ( c bes8 ) |
    bes16 c8 d16 ~ d ( g f8)
  } \alternative {
    { <bes, e,> <c a es> <bes d,> r | }
    { <bes e,> [ <c a es> ] <bes d,> \bar "|." }
  }
}

% --- Lower ... ------------------------------------------------------

lower = \notes\relative c {
  \clef bass
  \key bes \major
  \time 2/4

  \partial 8 <f f,>8 |							%0
  \repeat volta 2 {
    <bes bes,> <d bes f> <f f,> <d d,> |				%1
    <c c,> <es a, f> <es a, f>  <f, f,> |
    <bes bes,> <d bes f> <f f,> <d d,> |

    <c c,> <es a, f> <es a, f> <f, f,> |				%4
    es ges16 ( es d8 f ) |
    es ges16 ( es d8 f, ) |
    e ( bes' e bes') |
    \clef treble

    e ( bes' ) e r |							%8
    <bes f d> <bes g es> <bes ges es> <bes ges es> |
    <bes f d> <bes g cis,> <bes f d> <bes f d> |
    <a f c> <a f c> <a f c> <a f c> |

    <bes f d> \clef bass <es, es,> <d d,> <cis cis,> |			%12
    <bes f d> <bes g es> <bes ges es> <bes ges es> |
    <bes f d> <bes g cis,> <bes f d> <d bes f> |
  } \alternative {
    {
      <c c,> <es a, f> <f, f,> <f a es'> |
      \stemDown <bes bes,> [ <d, d,> <g g,> <f f,> ] \stemBoth |
    }
    {
      <c c'> <f a es'> <f f,> <f a es'> |				%17
      <bes bes,> r <d d,>-^ <b b,>-^ |
    }
  }

  \repeat volta 2 {
    <c c,> <f, a es'> <f f,> <f a es'> |
    <c c'> <f a es'> <f f,> <f a es'> |

    <bes bes,> <f bes d> <f f,> <f bes d> |				%21
    <bes bes,> <f bes d> <f f,> <f bes d> |
    <c c'> <f a es'> <f f,> <f a es'> |
    <c c'> <f a es'> <f f,> <f a es'> |

    <bes bes,> <f bes d> <f f,> <f bes d> |				%25
    <bes bes,> <f bes d> <f f,> <f bes d> |
    <c c'> <f a es'> <f f,> <f a es'> |

    <c c'> <f a es'> <f f,> <f a es'> |					%28
    <bes bes,> <f bes d> <f f,> <f bes d> |
    <bes bes,> <f bes d> <f f,> <f bes d> |
    <as bes d f> <as bes d f> <as bes d f> <as bes d f> |

    <g bes es> <g bes es> <ges bes es> <ges bes es> |			%32
    <f bes d> <f bes d> <f bes d> <f bes d> |
  } \alternative {
    { <g g,> <f f,> <bes bes,> <b b,>-^ | }
    { <g g,> <f f,> <bes bes,> <f f,> | }
  }

  {
    <bes bes,> <d bes f> <f f,> <d d,> |				%36
    <c c,> <es a, f> <es a, f>  <f, f,> |
    <bes bes,> <d bes f> <f f,> <d d,> |
    <c c,> <es a, f> <es a, f> <f, f,> |

    es ges16 ( es d8 f ) |						%40
    es ges16 ( es d8 f, ) |
    e ( bes' e bes') |
    \clef treble e ( bes' ) e r |
    <bes f d> <bes g es> <bes ges es> <bes ges es> |

    <bes f d> <bes g cis,> <bes f d> <bes f d> |			%45
    <a f c> <a f c> <a f c> <a f c> |
    <bes f d> \clef bass <es, es,> <d d,> <cis cis,> |
    <bes f d> <bes g es> <bes ges es> <bes ges es> |

    <bes f d> <bes g cis,> <bes f d> <d bes f> |			%49
    <c c,> <f, a es'> <f f,> <f a es'> |
    <bes bes,> f bes, r |
  }
  \repeat volta 2 {
    \key es \major

    <f' f,> <bes d as'> <bes, bes,> <bes' d as'> |
    <f f,> <bes d as'> <bes, bes,> <bes' d as'> |

    <es, es,> <bes' es g> <bes, bes,> <bes' es g> |			%54
    <es, es,> <bes' es g> <bes es g> <e, e,> |
    <f f,> <bes d as'> <bes, bes,> <bes' d as'> |
    <f f,> <bes d as'> <bes, bes,> <bes' d as'> |
    <es, es,> <bes' es g> <bes, bes,> <bes' es g> |

    <es, es,> <bes' es g> <es, es,> <des des,> |			%59
    <c c,> <bes' c e> <e, e,> <bes' c e> |
    <g g,> <bes c e> <c, c,> <bes' c e> |
    <f f,> <as c f> <as as,> <as c f> |
    <f f,> <as c f> <as as,> <as c f> |

    <a a,> ( [ <c c,> <es es,> <fis fis,> ] ) |				%64
    <g g,> ( [ <es es,> <bes bes,> <g g,> ] ) |
  } \alternative {
    {
      <f f,> <as bes d> \stemDown <bes, bes,> <as' bes d> \stemBoth |
      <es es,> [ <g g,> <f f,> <e e,> ] |
    }
    {
      <f f,> <as bes d> \stemDown <bes, bes,> <as' bes d> \stemBoth |
      <es es,> [ bes es, <bes' bes,>^^ ] |
    }
  }

  \repeat volta 2 {
    \key bes \major

    <es es,> <g bes es> \stemDown <bes, bes,> <g' bes es> \stemBoth |	%70
    <es es,> <g bes es> <g g,> <ges ges,> |
    <f f,> <f bes d> <bes bes,> <f bes d> |
    <d d'> [ <f f,> <g g,> <gis gis,> ] |
    <a a,> <f a es'> <f f,> <f a es'!> |
    <c c'> [ <f f,> <g g,> <a a,> ] |

    <bes bes,> <f bes d> <f f,> <f bes d> |				%76
    <bes bes,> [ <as as,> <g g,> <f f,> ] |
    <es es,> <g bes es> \stemDown <bes, bes,> <g' bes es> \stemBoth |
    <g g,> <g bes es> <es es,> <ges bes es> |
    bes, <f' bes d> d <f bes d> |
    <f f,> <f bes d> <f a es'>4 |

    <as bes d f>8 <as bes d f> <as bes d f> <as bes d f> |
    <g bes es> <g bes es> <ges bes es> <ges bes es> |
    <f bes d> <f bes d> <f bes d> <f bes d> |
    \stemDown
  } \alternative {
    { <g g,> [ <f f,> <bes bes,> <bes, bes,>-^ ] | }
    { <g g'> [ <f f'> ] <bes bes'> }
  }
}

% --- Dynamics ... ---------------------------------------------------

dynamics = \notes {
  \partial 8 s8
  \repeat volta 2 {
    s2 \mf |								%1
    \repeat unfold 13 { s2 | }
  } \alternative {
    { s2 | s2 | }
    { s2 | s2 | }
  }
  \repeat volta 2 {
    s2 \f |								%19
    \repeat unfold 11 { s2 | }
     s2 \mp |								%31
     s2 |
     s16 \< s8 s16 s16 s16 s8 \! |
  } \alternative {
    { s2 | }
    { s2 | }
  }
  s2 \mf |								%36
  \repeat unfold 15 { s2 | }
  \repeat volta 2 {
     s2 \mp |								%52
     \repeat unfold 13 { s2 | }
  } \alternative {
    { s2 | s2 | }
    { s2 | s2 | }
  }
  \repeat volta 2 {
    s2 \mf |								%70
    \repeat unfold 11 { s2 | }
    s2 \mp |								%82
    s2 |
    s16 \< s8 s16 s16 s16 s8 \! |
  } \alternative {
    { s2 | }
    { s4 s8 ^\markup { \vcenter \right-align \sans "Fine." } }
  }
}

% --- Score - copy from piano-dynamics template ... ------------------

\score {
  \context PianoStaff <<
    \context Staff=upper \upper
    \context Dynamics=dynamics \dynamics
    \context Staff=lower \lower
  >>
  \paper {
    \context {
      \type "Engraver_group_engraver"
      \name Dynamics
      \alias Voice % So that \cresc works, for example.
      \consists "Output_property_engraver"

      minimumVerticalExtent = #'(-1 . 1)

      \consists "Script_engraver"
      \consists "Dynamic_engraver"
      \consists "Text_engraver"

      \override TextScript #'font-size = #2
      \override TextScript #'font-shape = #'italic
      \override DynamicText #'extra-offset = #'(0 . 2.5)
      \override Hairpin #'extra-offset = #'(0 . 2.5)

      \consists "Skip_event_swallow_translator"

      \consistsend "Axis_group_engraver"
    }
    \context {
      \PianoStaffContext
      \accepts Dynamics
      \override VerticalAlignment #'forced-distance = #7
    }
  }
}

\score {
  \context PianoStaff <<
    \context Staff = upper
     \apply #unfold-repeats
      \upper
    \context Dynamics = dynamics
     \apply #unfold-repeats
      \dynamics
    \context Staff = lower
     \apply #unfold-repeats
      \lower
   >>

  \midi {
    \tempo 4 = 100
    \context {
      \type "Performer_group_performer"
      \name Dynamics
      \consists "Span_dynamic_performer"
      \consists "Dynamic_performer"
    }
    \context {
      \PianoStaffContext
      \accepts Dynamics
    }
  }
}

% arch-tag: Daniel Skarda Mon Jul 19 19:03:25 2004 (joplin - sugar cane)
