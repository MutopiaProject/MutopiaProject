\version "2.12.3"

\header {
  mutopiatitle = "Prelude"
  mutopiacomposer = "ScriabinA"
  mutopiaopus = "Op. 11"
  mutopiainstrument = "Piano"
  source = "M.P. Belaieff (1895)"
  %IMSLP #03773 
  % fingering by Keith OHara
  style = "Romantic"
  copyright = "Public Domain"
  maintainer = "Keith OHara"
  title = "Prelude, Op. 11 No. 1"
  composer = "Alexander Scriabin (1872-1915)"
 footer = "Mutopia-2010/12/21-1779"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\paper {
  %{ comment out for mutopiaproject }
  #(set-paper-size "letter") 
  bottom-margin = 13
  %annotate-spacing = ##t
  %indent = #0
  %ragged-right = ##t
  %{ %}
  page-count = 1
  #(layout-set-staff-size 18)
  between-system-space = 5
  between-system-padding = 1
  ragged-bottom = ##f
  ragged-last-bottom = ##f
}
\pointAndClickOff

% Definitions to override page-breaking 
myExplicitBreak = {
%  \break
}
myExplicitPageBreak = {
%  \pageBreak
}

%%% Definitions for brevity
% set (de)crescendos to text
crescText = {
  %{\once%}\set crescendoText = \markup\italic\whiteout"cresc."
  %{\once%}\set crescendoSpanner = #'text
  %{\once%}\set decrescendoText = \markup\italic\whiteout"dim." 
  %{\once%}\set decrescendoSpanner = #'text
}
% supress the dashed leader after "cresc" or "dim"
dd = \once\override DynamicTextSpanner #'dash-period = #-1.0
% fingering slides
fingerChangeA = \markup\finger\tied-lyric#"3~2"
fingerChangeB = \markup\finger\tied-lyric#"2~3"
fingerChangeC = \markup\finger\tied-lyric#"3~5"
fingerChangeD = \markup\finger\tied-lyric#"5~3"
fu = {\set fingeringOrientations = #'(up)}
fr = {\set fingeringOrientations = #'(right)}
fl = {\set fingeringOrientations = #'(left)}
fd = {\set fingeringOrientations = #'(down)}
% Staff changes
cu = \change Staff="upper"
cl = \change Staff="lower"
% Ottavation
ova = \ottava #1
ovb = \ottava #-1
ov  = \ottava #0
% simpler sustain commands
ss =  \sustainOn
us =  \sustainOff
% temporarily let markup collide with or come inside slurs
inside = {
  \once \override TextScript #'outside-staff-priority = ##f
  \once \override TextScript #'staff-padding = #'()
}
% Rests in the left hand with duration matcing a 5-tuple
fiverest = {
%  r4 s4 s8   % as in original edition
%  r2 s8      % correct time, but spans the center beat
  r4 r4 s8   % correct time, but placement not perfect
%  r4 r4.     % time as if rests were in a 5-tuplet
}
%
rhbrace = \markup { \postscript #"0.2 setlinewidth 
[1 1] 0 setdash -0.2 -2 moveto -0.7 0 rlineto 0 9 rlineto stroke" }

%%% Note entry
\include "english.ly"

rh = \relative c'' {
  \override Beam #'breakable = ##t
  \override PhrasingSlur #'height-limit = #3
  \clef treble
  \scaleDurations #'(4 . 5) {
    \times 5/5 {d8--[\( a | c-- g d]} d'[-2 e\< a\> g\! e] 
    d--[-1 a-2 | c---5 g d] d'--[ a-3 c-- g c,]\)
    \once\override PhrasingSlur #'height-limit = #4
    \once\override PhrasingSlur #'positions = #'(4 . 1.5)
    g''--[\( d | f-- c g] g'[-2 a\< d\> c\! a]
    g--[-1 d-2 | f---5 c g] g'--[ d-3 f-- c f,]\)
    f'[\(  c| \myExplicitBreak\barNumberCheck #5
    %{   %} e c f,] d'[ e a g f]\)
    e[\( c | d c f,] c'[ d g f e]\)
    \once\override PhrasingSlur #'positions = #'(3 . 2)
    d[\( c | e c f,] f'--[ c-\markup\italic"rubato" e'-- d-- c--]
    a[ f-1 | e-4 b g] d'[ b g' d g,]\)
    a'[\( e| g d g,] a'[-2 b e d b]
    a[-1 e-3 | \myExplicitBreak\barNumberCheck #10
    %{  %} g-5 d g,] e'[ g, c g c,]\)
    f'[\( b, | e b e,] b''[ c e d c]
    \stemUp b[ e, | a e b] b'[ e, a e a,]\) \stemNeutral
    g'[\( b, | fs' a, c] es[-3 fs a g b,]\)
    f'[\( a, |  e' g, bf] ds[-3 e g f a,]\)
    e'[^\( af, | \myExplicitBreak\barNumberCheck #15
    %{   %} d af d,] e'[ g, d' g, d] 
    e'[ fs, | d' fs, d] e'[ fs, d' fs, d]
    e'[ g, | d' g, d] e'[ g, d' g, d]
    <a'' a,>[ d, | <g g,> d g,] <a' a,>[ d, <g g,> d g,]\)
    <d'' d,>[\( a-3 | <c c,> g-2 %{note 1%}d] \ova d'[ e a g e] \ov
    % note 1: The first 1896 edition had a C here.
    % D matches the simliar patterns in measures 1 and 21
    <d d,>[ a-3 | \myExplicitBreak\barNumberCheck #20
    %{       %} <c c,> g-2 d] <d' d,>[ a <c c,> g c,]\)
    <d d,>[\( a | <c c,> g d] d'[ e a g e]
    <d d,>[ a-3 | <c c,> g-2 d] <d' d,>[ a <c c,> g c,]\)
    \clef bass
    d[\(-\markup\italic\whiteout"accelerando" a-3 | c g-2 d] d'[ a c g c,] 
    d'[ a | c g c,] d'[ a c g c,]\)
    r4 | r4 \clef treble <c'' e g c> r2
  }
}

lh = {
  % absolute pitch entry in the left hand
  \dynamicUp\autoBeamOff\crescText\shiftOn
  \override Beam #'breakable = ##t
  \clef bass
  \slurDown
  \scaleDurations #'(4 . 5) {
    \times 5/5 {c,8[(\p g, | f-1 g-4 f']) } \fiverest 
    c,[( g,| f-1 g-4 f']) c,[( g, e-1 g-3 e'])
    c,[(\< c\!-1 | bf-4 c' bf']) \fiverest
    c,[( c | bf c' bf']) f,[( c a-1 c' a'])
    d,\<[( d\! | \barNumberCheck #5
    %{   %} a-4 d' a']) \fiverest
    a,,[( a, | f-5 d' a']) \fiverest
    d,,[(\< d,\! | a, f c']) <<\fiverest {s4 s4\f s8}>>
    g,,[( g, | f b f'] b4*5/6\>-2 f\!-1 g,)
    c,8[(\p g, | f-1 g-4 f']) \fiverest
    c,[(g, | \myExplicitBreak\barNumberCheck #10 
    %{   %} f-1 g-4 f']) c,[( g, e-1 g e'])
    a,[( e | b d' gs']) \fiverest
    a,[(\pp e | d'-1 \clef treble e' d'']) \clef bass
    %{%} a,[( e c'-1 \clef treble e' c'']) \clef bass
    ds,[( ds | c' fs' a]) e,![(\< e b e' g])
    cs,[( cs | bf e' g]) d,![( d a d' f])
    f,,[( f, | \myExplicitBreak\barNumberCheck #15  
    %{   %} d-4 af c']) g,,[( g, d-4 g c'])
    af,,[( af, | d-4 fs c']) a,,[( a, d fs c'])
    g,,[( g, d g c'])  g,,[( g, d g c'])
    g,,[( g, f b d'])  g,,[( g, f b d'])
    \stemUp\slurNeutral
    <c,, c,>4(\ff | <g, f-1 g>4*3/4 <g f'-1 g'>) 
    % Problem: horizontal space before the clef is lost if
    %  it follows a note/rest with unusual duration/timing
    \once\override Staff.Clef #'minimum-X-extent = #'(-2 . 2.5)
    \clef treble 
    %{    %} \stemNeutral d''8[^\rhbrace ( e'' a'' g'' e'']) \clef bass
    \stemUp <c,, c,>4( | \myExplicitBreak\barNumberCheck #20  
    %{    %} <g, f-1 g>4*3/4 <g f'-1 g'>) <c,, c,>4( <g, e g>4*3/4 <g e' g'>)
    \stemNeutral <c,, c,>4_( | <f g>4*3/4 <g,>)
    d'8[^\rhbrace ( e' a' g' e'])
    <c,, c,>4_( | <f g>4*3/4 <g,>) <c,, c,>4_( <e g>4*3/4 <g,>)
    f4--_( | g,4*3/4 c,) e4--_( g,4*3/4 c,)
    e4--_( | g,4*3/4 c,) e4--_( g,4*3/4 c,
    <g,, g,>4) | <c,, c,> <e g c' e'> r2
  }
}

pedal = {
  s2\ss    s2
  s2\us\ss s2\us\ss
  s2\us\ss s2
  s2\us\ss s2\us\ss
  s2\us\ss s2   \barNumberCheck #5
  s2\us\ss s2
  s2\us\ss s2
  s2\us\ss s2
  s2\us\ss s2
  s2\us\ss s2\us\ss \barNumberCheck #10
  s2\us\ss s2
  s2\us\ss s2\us\ss
  s2\us\ss s2\us\ss
  s2\us\ss s2\us\ss
  s2\us\ss s2\us\ss \barNumberCheck #15
  s2\us\ss s2\us\ss
  s2\us\ss s2
  s2       s2\us\ss
  s2\us\ss s2  
  s2\us\ss s2\us\ss \barNumberCheck #20
  s2\us\ss s2  
  s2\us\ss s2\us\ss
  s2\us\ss s2\us\ss
  s2       s2
  s2*2/5\us\ss | s1*4/5   \barNumberCheck #25
}

%%% Score block
% showLastLength = R1*6
\score {
  \new PianoStaff <<
    \override Score.SpacingSpanner #'shortest-duration-space = #1.7
    \override PianoStaff.Fingering #'avoid-slur = #'inside
    \new Staff = "upper" {
      #(set-accidental-style 'piano 'Score)
      % Let Ottava indications come inside slurs
      \override Staff.OttavaBracket #'outside-staff-priority = ##f
      \override Staff.OttavaBracket #'avoid-slur = #'avoid
      \key c \major
      \numericTimeSignature\time 2/2
      <<
	\new Voice = "green" {
	  %{colorize} \override NoteHead #'color = #green %}
	  \tempo\markup{"Vivace" 
	  \medium{\fontsize #-2 \note #"2" #UP "= 63–76"}}
	  \partial 4*4/5 
	  \rh
	  \bar "|."
	}
      >>
    }
    \new Staff = "lower" {
      % space dynamics uniformly away from staff
      \override Staff.DynamicLineSpanner #'staff-padding = #2.5
      \set Staff.pedalSustainStyle = #'bracket
      \key c \major
      \numericTimeSignature\time 2/2
      <<
	\new Voice = "red" {
	  %{colorize} \override NoteHead #'color = #red %}
	  \dynamicUp
	  \lh
	}
	%\context Voice = "red" \pedal
      >>
    }
  >>
  \layout {
  }
}
\score {
  \new PianoStaff <<
    \new Staff="upper" <<\partial 4*4/5 \rh \pedal >>
    \new Staff="lower" <<\lh \pedal >>
  >>
  \midi {
    \context {
      \Voice
      %% Optionally remove the dynamics from the midi output
      \remove "Dynamic_performer"
      %\remove "Piano_pedal_performer"
    }
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 70 2)
    }
  }
}

