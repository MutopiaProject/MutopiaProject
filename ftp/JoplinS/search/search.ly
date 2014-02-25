\version "2.18.0"

% used only to compare the output with the source edition
% mBreak = { \break }
mBreak = {}

\header {
  title = "Search-Light Rag"
  composer = "Scott Joplin"

  mutopiatitle = "Search-Light Rag"
  mutopiacomposer = "JoplinS"
  mutopiainstrument = "Piano"
  date = "c. 1907"
  style = "Jazz"
  license = "Public Domain"
  source = "Reproduction of original edition (1907)"

  filename = "search.ly"
  maintainer = "Chris Sawer"
  maintainerEmail = "chris@mutopiaproject.org"

 footer = "Mutopia-2014/02/25-275"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #12 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond" " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain" " by the typesetter " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

% Built-in \hideNotes and \unHideNotes can be used instead
% blanknotes = {
%   \override NoteHead.transparent  = ##t
%   \override Stem.transparent = ##t
% }
% unblanknotes = {
%   \revert NoteHead.transparent
%   \revert Stem.transparent
% }

top =  \relative c' {
  \override TextScript.padding = #2
  \override Staff.NoteCollision.merge-differently-dotted = ##t

  \key bes \major
  \time 2/4
  \clef treble

  \mark \markup { \normalsize "Slow March Tempo" }
  bes'8-\mf g ~ g16 d g8 |		%1
  f d ~ d16 bes d8 |
  c bes ~ bes16-( d f d'-) |
  c8 r <f c a f>^> s \bar "||" \break |

  \repeat volta 2 {
    <<
      {
        d8.-\mf c16 bes-( c d es-) |		%5 (1)
        f g8 d16 f8 d'16-( c-) |
      } \\ {
        <bes, f>2 |				%5 (2)
        bes4 d8 f |
      }
    >>
    <bes g>8.-( <a f>16-) <g es> <es c>8 <d bes>16 ~ |
    <d bes>4-( <es c>-) \mBreak |
    <<
      {
        d8. c16 bes-( c d es-) |		%9 (1)
        f g8 d16 f8 f16-( g-) |
        a8.-( c16-) c,16-( g'8-) f16 ~ |
        \override DynamicLineSpanner.padding = #3
        f8-\> g16-( f es d c f-)-\! |
        d8. \mf c16 bes-( c d es-) |		%13 (1)
        \revert DynamicLineSpanner.padding
        f g8 d16 f8 e16-( f-) |
        fis8.-(-\< a16-) es'!16 d8 c16-\! |
      } \\ {
        bes,2				%9 (2)
        bes4 ~ bes8 bes |
        c4 c16 bes8 a16 ~ |
        a2-( |
        f2-) |				%13 (2)
        bes4 d |
        d fis |
      }
    >>
    <bes g>4.-\f <as d,>8 \mBreak |
    <g es>8.-( <f d>16-) <es c>-( d es bes'-) |			%17
    <<
      {
        <bes d,>8. e,16 <f d>16-( es f <ges fes>-) |
        <g! es!>-\> bes8 es,16 <es a, g>-( <d a f> <c a es>8-)-\! |
      } \\ {
        bes2 ~ |
        bes4 s4 |
      }
    >>
  } \alternative {
    { <bes f d>4.-\mf <es c f,>8 }
    { <bes f d>8 f'16^^ f^^ f8^^ f^^ }				%21
  }

  \break

  \repeat volta 2 {
    \revert TextScript.padding
    f16-(_\markup {\dynamic f \italic " legato"} a, es'-) f ~ f-( es g,8-) |
    \override TextScript.padding = #2
    es'16-( g, gis a-) ~ a-( es' g,8-) |
    f16-( bes d <f d bes f>-) ~ <f d bes f>4 ~ \mBreak |
    <f d bes f>8 d16-( c bes a g ges-) |				%25
    f-( a c <f c a f>-) ~ <f c a f>4 ~ |
    <f c a f>8 c16-( bes a as g ges-) \mBreak |
    f-( bes d <f d bes f>-) ~ <f d bes f>4 ~ |
    <f d bes f>8 f16 f f8 f |					%29
    f16-( a, es' f-) ~ f-( es g,8-) |
    es'16-( g, gis a-) ~ a-( es' g,8-) |
    f16-( bes d <f d bes f>-) ~ <f d bes f>4 ~ |
    <f d bes f>8 d16-(-\< es-) <f d bes f>8 <fis d c fis,>-\! |	%33
    <<
      {
        g8.-( as16-) as g g f |
        f8-( es cis4-) |
      } \\ {
        <d b g>2-\ff |
        <c g>4 <bes g> |
      }
    >>
  } \alternative {
    {
      <<
        {
          d16-(-\f es f g-) <d a f> <c a es>8 <bes d,>16 ~ |
          <bes d,>8 f'16 f f8 f					%37 (1)
        } \\ {
          bes,4 s |
          s2								%37 (2)
        }
      >>
    }
    {
      <<
        {
          d16-( es f g-) <d a f> <c a es>8 <bes d,>16 ~ |
          <bes d,>4.-\> <es c f,>8-\!
        } \\ {
          bes4 s |
          s2
        }
      >>
    }
  }

  \bar "||"

  <<
    {
      d8. c16-( bes c d es-) |
      f g8 d16 f8-( d'16 c-) |		%41 (1)
    } \\ {
      <bes, f>2-\mf |
      bes4 d8 f |				%41 (2)
    }
  >>
  <bes g>8. <a f>16 <g es> <es c>8 <d bes>16 ~ |
  <d bes>4-( <es c>-) \mBreak |
  <<
    {
      d8. c16-( bes c d es-) |
      f g8-\< d16 f8 f16-( g-)-\! |		%45 (1)
      a8.-( c16 c,-) g'8 f16 ~ |
      \override DynamicLineSpanner.padding = #3
      f8 g16-(-\> f es d c f-)-\! |
      d8.-\mf c16-( bes c d es-) |
      \revert DynamicLineSpanner.padding
      f g8 d16 f8 e16 f |			%49 (1)
      fis8.-\< a16 es'!16 d8 c16-\! |
    } \\ {
      bes,2 |
      bes4 ~ bes8 bes |			%45 (2)
      c4 c16 bes8 a16 ~ |
      a2-( |
      f-) |
      bes4 d |				%49 (2)
      d fis |
    }
  >>
  <bes g>4.-\f <as d,>8 |
  <g es>8. <f d>16 <es c>-( d es bes'-) |
  <<
    {
      <bes d,>8. e,16 <f d> e f <ges fes> |	%53 (1)
      <g! es!>-( bes8 es,16-) <es a, g>-( <d a f> <c a es>8-) |
    } \\ {
      bes2 ~ |				%53 (2)
      bes4 s |
    }
  >>
  <bes d,>4-\> ~ <bes d,>8-\! <bes' as d,> \break |

  \key es \major

  \repeat volta 2 {
    r16_\markup {\dynamic mp \italic " legato"} <es g, es> <d g, d> <c g c,> ~
    <c g c,> <bes bes,> <c c,> <cis cis,> |
    <d as d,>8 <cis cis,>16 <d as d,> ~ <d as d,>4 |					%57
    r16 <d as d,> <des as des,> <c as c,> ~ <c as c,> <f, f,>-( <g g,> <as as,>-) |
    <a fis es a,>4-( <bes g es bes>-) |
    r16 <es g, es> <d g, d> <c g c,> ~ <c g c,> <bes bes,>-( <c c,> <cis cis,>-) |
    <d bes g d>8-\< <cis cis,>16 <d bes g d> ~ <d bes g d>4-\! |			%61
    r16-\< <d d,> <es es,> <d a fis d> ~ <d a fis d> <cis cis,> <d a fis d>8-\! |
    <d bes g d>-\f <d a d,> <d bes as d,>4*1/2-\> s8-\! |
    r16-\mp <es g, es> <d g, d> <c g c,> ~ <c g c,> <bes bes,>-( <c c,> <cis cis,>-) |
    <d as d,>8 <cis cis,>16 <d as d,> ~ <d as d,>4 |					%65
    r16 <b g>-\< <d d,> g, b <d d,>8 <es c g es>16-\! ~ |
    <es c g es>4 ~ <es c g es>8 <des g, es> |
    <<
      {
        <c as> bes16-( as-) es as8 g16 ~ \mBreak |
        g-(-\< as a bes-)-\!
      } \\ {
        es,4 es8. es16 ~ |
        es4
      }
    >>
    <c' fis, es>8^^ <a! es c> |								%69

  } \alternative {
    {
      << { bes16-(-\f g f es-) } \\ { <es bes>4 } >> <f d>16 <bes d, bes>8 <es, bes g>16 ~ |
      <es bes g>4 ~ <es bes g>8 <bes' as d,>
    }
    {
      << { bes16-(-\f g f es-) } \\ { <es bes>4 } >> <f d>16 <bes d, bes>8 <es, bes g>16 ~ |
      <es bes g>4 ~ <es bes g>8-\> bes16-( b-)-\!						%73
    }
  }

  \repeat volta 2 {
    c16-(_\markup {\dynamic mp \italic " legato"} <bes' as d,>8 c,16
    <bes' as d,>8 c,16-) <bes' as d,> ~ |
    <bes as d,> c,-( <bes' as d,> c bes as f d-) |
    c-( <bes' g es>8 c,16 <bes' g es>8 c,16-) <bes' g es> ~ |
    <bes g es> c,-( <bes' g es> c bes-) g-( bes es-) |			%77
    <f f,>-\< as, c <es es,> ~ <es es,> <d d,>-\! <c c,>8 |
    <<
      {
        \override NoteColumn.ignore-collision = ##t
        \stemDown <c c,>16-(-\< es, g-) <bes e, bes> ~ \stemUp bes-( as g8-)-\! |
        <g es!>16-( c, es <g es>-) ~ <g es>-( c, d es-) |
      } \\ {
        s8.
        \hideNotes <e bes>16 ~ \unHideNotes <e bes>4 | 			% slight cludge
        a,8.-\f a16 ~ a4
      }
    >>
    <f' d as!>4 ~ <f d as>8-\> bes,16-( b-)-\! |			%81
    c16-(-\mp <bes' as d,>8 c,16 <bes' as d,>8 c,16-) <bes' as d,> ~ |
    <bes as d,> c,-( <bes' as d,> c bes as f d-) |
    c-( <bes' g es>8 c,16 <bes' g es>8 c,16-) <bes' g es> ~ |
    <bes g es> c,-( <bes' g es> c bes g bes es-) |			%85
    <f f,>-\< as,( c <es es,> ~ <es es,> <d d,>-\! <c c,>8) |
    <<
      {
        \override NoteColumn.ignore-collision = ##t
        \stemDown <c c,>16-(-\< es, g-) <bes e, bes> ~ \stemUp bes-( as g8-)-\! |
        <g es!>16-( c, d es-) ~ es es <f d>8 |
      } \\ {
        s8. \hideNotes <e bes>16 ~ \unHideNotes <e bes>4 | 		% slight cludge
        a,8.-\f a16 ~ a4
      }
    >>
  } \alternative {
    { <es' bes g>4 ~ <es bes g>8 bes16-( b-) }				%89
    { <es bes g>4 <es' bes g es>8 s }
  }

  \bar "|."
}

bottom =  \relative c {
  \override TextScript.padding = #2

  \key bes \major
  \time 2/4
  \clef bass

  bes'8 g ~ g16 d g8 |					%1
  f d ~ d16 bes d8 |
  c bes ~ bes16-( d f d'-) |
  c8 r <f, f,>_> s |

  \repeat volta 2 {
    <bes bes,> <d bes f> <g, g,> <f f,> |			%5
    <d d,> <d' bes f> bes, <d' bes as> |
    <es, es,> <es' bes g> <g, g,> <ges ges,> |
    <f f,>-( <bes bes,> \stemDown <a a,> <f f,>-) \stemNeutral |
    <bes bes,> <d bes f> <g, g,> <f f,> |			%9
    <d d,> <f' d bes> <des, des,> <f' des bes> |
    <c, c,> <f' c a> c, <e' c bes> |
    <f c a f> <f, f,>-( <g g,> <a a,>-) |
    <bes bes,> <d bes f> <g, g,> <f f,> |			%13
    <d d,> <d' bes f> bes, <d' bes f> |
    <a a,> <d c fis,> <d, d,> <d' c fis,> |
    <d bes g> <bes bes,>16-( <a a,> <g g,> <ges ges,> <f f,>8-) |
    <es es,> <es' bes g> <g, g,> <ges ges,> |				%17
    <f f,> <d' bes f> <d bes f> <d d,>16-( <des des,>-) |
    <c c,>8 <es c g> <f, f,>4 |
  } \alternative {
    { \stemDown <bes bes,>8 <f f,>16-( <e e,> <f f,> <fis fis,> <g g,> <a a,>-) \stemNeutral }
    { <bes bes,>8 r r4 }							%21
  }

  \repeat volta 2 {
    <f f,>8 <g g,> <a a,> <bes bes,> |
    <c c,> <b b,> <c c,> <cis cis,> |
    <d d,> <d bes f> <bes bes,>16-( <c c,> <d d,> <c c,>-) |
    <bes bes,>8 <d bes f> <d bes f> <b b,> |				%25
    <c c,> <es a, f> <a, a,>16-( <bes bes,> <c c,> <bes bes,>-) |
    <a a,>8 <f' es a,> <f f,> <es es,> |
    <d d,> <d bes f> <bes bes,>16-( <c c,> <d d,> <bes bes,>-) |
    <f f,>8 r r4 |							%29
    <f f,>8 <g g,> <a a,> <bes bes,> |
    <c c,> <b b,> <c c,> <cis cis,> |
    <d d,> <d bes f> <bes bes,>16 <c c,> <d d,> <c c,> |
    <bes bes,>8 <d bes f> <bes bes,> <a a,> |				%33
    <g g,> <f' b, g> <b, b,> <f' b, g> |
    c,16-( g' c es e4-) |
  } \alternative {
    {
      f8-( d f,-) <f f,> |
      <bes bes,> r r4
    }							%37
    {
      f'8-( d f,-) <f f,> |
      <bes bes,> <f f,>16-( <e e,> <f f,> <fis fis,> <g g,> <a a,>-)
    }
  }

  \bar "||"

  <bes bes,>8 <d bes f> <g, g,> <f f,> |
  <d d,> <d' bes f> bes, <d' bes as> |					%41
  <es, es,> <es' bes g> <g, g,> <ges ges,> |
  <f f,>-( <bes bes,> <a a,> <f f,>-) |
  <bes bes,> <d bes f> <g, g,> <f f,> |
  <d d,> <f' d bes> <des, des,> <f' des bes> |				%45
  <c, c,> <f' c a> c, <e' c bes> |
  <f c a f> <f, f,> <g g,> <a a,> |
  <bes bes,> <d bes f> <g, g,> <f f,> |
  <d d,> <d' bes f> bes, <d' bes f> |					%49
  <a a,> <d c fis,> <d, d,> <d' c fis,> |
  <d bes g> <bes bes,>16-( <a a,> <g g,> <ges ges,> <f f,>8-) |
  <es es,> <es' bes g> <g, g,> <ges ges,> |
  <f f,> <d' bes f> <d bes f> <d d,>16 <des des,> |			%53
  <c c,>8 <es c g> <f, f,>4 |
  <bes bes,>8 <as as,> <g g,> <f f,> |

  \key es \major

  \repeat volta 2 {
    <es es,> <es' bes g> <g, g,> <ges ges,> |
    <f f,> <d' bes as> bes,16-( d f bes-) |				%57
    <f f,>8 <d' bes as> <bes, bes,> <d' bes as> |
    r16 c,16-( es fis g es bes8-) |
    <es es,> <es' bes g> <es, es,> <es' bes g> |
    <d, d,> <d' bes g> d,16-( g bes d-) |				%61
    <d, d,>8 <d' c fis,> <d, d,> <d' c fis,> |
    <g, g,> <fis fis,> <f f,> <bes, bes,> |
    <es es,> <es' bes g> <g, g,> <ges ges,> |
    <f f,> <d' bes as> bes,16-( d f bes-) |				%65
    b8-( g a b-) |
    c16-( fis, g es c8-) <bes'! bes,!> |
    <as as,> <es' c as> <c c,>-( <ces ces,>-) |
    <bes bes,> <es bes g> <a, a,>_^ <fis fis,>_^ |			%69
  } \alternative {
    {
      <g g,> <es' bes g> bes, <d' bes as> |
      <es es,> <bes bes,> <g g,> <f f,>
    }
    {
      <g g,> <es' bes g> bes, <d' bes as> |
      <es, es,> <g g,> <bes bes,> <g g,>16-( <ges ges,>-)
    }		%73
  }

  \repeat volta 2 {
    <f f,>8 <d' bes as> <bes, bes,> <d' bes as> |
    <f, f,> <d' bes as> <bes, bes,> <d' bes as> |
    <es, es,> <es' bes g> <bes, bes,> <es' bes g> |
    <es, es,> <es' bes g> <bes, bes,> <es' bes g> |			%77
    \stemDown <as,, as,> <f'' es c as> <a,, a,> <fis'' es c a> |
    <bes,, bes,> <g'' es bes> <c,, c,> <e' c bes> |
    <f, f,> <es'! c a f> <f,, f,> <es'' c a f> |
    <bes, bes,> <d d,>16 <f f,> <bes bes,>8 <g g,>16-( <ges ges,>-) |	%81
    <f f,>8 <d' bes as> <bes, bes,> <d' bes as> |
    <f, f,> <d' bes as> <bes, bes,> <d' bes as> |
    <es, es,> <es' bes g> <bes, bes,> <es' bes g> |
    <es, es,> <es' bes g> <bes, bes,> <es' bes g> |			%85
    <as,, as,> <f'' es c as> <a,, a,> <fis'' es c a> |
    <bes,, bes,> <g'' es bes> <c,, c,> <e' c bes> |
    <f, f,> <es'! c a f> <c, c,> <bes bes,> |
  } \alternative {
    { <es es,> <g g,> <bes bes,> <g g,>16-( <ges ges,>-) }		%89
    { <es es,>8-[ bes es,-] s }
  }

  \bar "|."
}


\score {
  \context PianoStaff <<
    \context Staff = "up"
    \top
    \context Staff = "down"
    \bottom
  >>

  \layout {
    % circa 4 bars per system
    system-count = #22
  }
}

\score {
  \unfoldRepeats
  \context PianoStaff <<
    \context Staff = "up" \top
    \context Staff = "down" \bottom
  >>

  \midi {
    \tempo 4 = 66
    \context {
      \Voice
      \remove Dynamic_performer
    }
  }
}
