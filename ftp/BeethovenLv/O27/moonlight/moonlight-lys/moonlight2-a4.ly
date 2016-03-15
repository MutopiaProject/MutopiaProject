\version "2.10.16"

\header {
 piece = \markup { \bold "Allegretto" }

 mutopiatitle = "Sonata No. 14 “Moonlight” (2nd Movement: Allegretto)"
 mutopiacomposer = "BeethovenLv"
 mutopiainstrument = "Piano"
 date = "1802"
 source = "Berners, 1908 (edited by A. Winterberger)"
 
 tagline = ""
 copyright = ""
}

allUp = { \stemUp \slurUp \tieUp }
allDown = { \stemDown \slurDown \tieDown }
allNeutral = { \stemNeutral \slurNeutral \tieNeutral }

moveMarkup = #(define-music-function (parser location shift) (pair?)
#{
	\once \override TextScript #'extra-offset = $shift
#})

moveFingering = #(define-music-function (parser location shift) (pair?)
#{
	\once \override Fingering #'extra-offset = $shift
#})

moveDynamics = #(define-music-function (parser location shift) (pair?)
#{
	\once \override DynamicText #'extra-offset = $shift
#})

fingerfont =
{
	\once \override TextScript #'font-size = #-5
	\once \override TextScript #'font-encoding = #'fetaNumber
}

top =  \relative c' {
\override TextScript   #'padding = #2

 \key des \major
 \time 3/4
 \clef treble
 \partial 4
 
 \stemNeutral
 \moveMarkup #'(0 . -0.5) <des' as>4^\markup { \override #'(baseline-skip . 1.4) \finger \column { "5" "2" } }-\p-( |
 \moveFingering #'(0 . -1) <c as>2^4 \moveMarkup #'(-0.25 . -4) <bes g>4^\markup { \override #'(baseline-skip . 1.4) \finger \column { "3" "1" } } |		%1
 <es-\tweak #'extra-offset #'(0 . 0.5)-5 as,-\tweak #'extra-offset #'(0.25 . 1)-2>-.-) r <des f,>^5-. |
 \moveMarkup #'(0 . -1.5)<c as>^\markup { \override #'(baseline-skip . 1.4) \finger \column { "4" "2" } }-. r <bes g>-3-. |
 as-2-. r <ges'! des>^\markup { \override #'(baseline-skip . 1.4) \finger \column { "5" "2" } }-( |
 <f des>2-4 \moveMarkup #'(0 . -4.2) <es c>4^\markup { \override #'(baseline-skip . 1.4) \finger \column { "3" "1" } } |		%5
 <as des,>^\markup { \override #'(baseline-skip . 1.4) \finger \column { "5" "2" } }-.-) r <ges bes,>-. |
 \moveMarkup #'(0 . -1) <f des>^\markup { \override #'(baseline-skip . 1.4) \finger \column { "4" "2" } }-. r <es c>-. |
 des-2-. r <des des,> ~ |
 <des des,>-( <c c,>-) <bes bes,>-4 ~ |	%9
 << {
  \context Voice = "main" {
   \allUp
   bes-( es-5-) des-5 ~ |
   des-( c-4-) bes-3 ~ |
   \allNeutral
  }
 } \\ {
  es,-2-. r f-1-. |
  as-2-. r g-.
 } >>
 bes-( as-) <ges'! ges,> ~ |
 <ges ges,>-( <f f,>-) <es es,>-4 ~ |	%13
 << {
  \context Voice = "main" {
   \allUp
   es-( as-5-) ges-5 ~ |
   ges-( f-4-) es-3 ~ |
   \allNeutral
  }
 } \\ {
  as,-2-. r bes-. |
  des-. r c-. |
 } >>
 es-( des-)
 
 \repeat volta 2 {
  <des f,>-4 |
  <des f,>2 <des f,>4 |		%17
  << {
   des-5-( c-4-) ces-5 |
   ces2 ces4 |
   ces-( bes-4-) bes-3-( |
   \moveFingering #'(-0.3 . -2.5) c!2-4 \fingerfont \moveFingering #'(-0.1 . 0) des4-"5 - 4" |			%21 (1)
   es2-5-) ges,4-2 ~ |
   ges-4 f-3 bes8-5 ges-4 |
  } \\ {
   es2 es4 |
   es2 es4 |
   des2 des4 |
   \once \override TextScript #'extra-offset = #'(0 . -0.6) ges2-2_\markup {\italic "cresc."} f4-1 |	%21 (2)
   ges2-2-\sf-\> \moveFingering #'(0.4 . 1) es4-1 ~ |
   es-\p-\! des-2 bes |
  } >>
  <f'-3 des-\tweak #'extra-offset #'(0 . -0.6)-2>4-( <es-3 c-\tweak #'extra-offset #'(0 . -0.6)-1> ) <des' des,>-( |
  <c c,>2 <bes bes,>4-4 |		%25
  << {
  \context Voice = "main" {
    \allUp
    <es es,>-.-) r des ~ |
    des-( c-) bes ~ |
    \allNeutral
   }
  } \\ {
   s2 f4-. |
   as-. r g-. |
  } >>
  bes-( as-) <ges'! ges,!>-( |
  <f f,>2 \moveFingering #'(-0.3 . -1.5) <es es,>4-4 |		%29
  <as as,>-.-) r <ges ges,> ~ |
  <ges ges,>-( <f f,>-) <es es,>-4-. |
  \override TextScript   #'padding = #3
  <as as,>-. r_\markup {\italic "cresc."} <ges ges,> ~ |
  \revert TextScript #'padding
  <ges ges,>-( <f f,>-) <bes bes,>-\sf ~ |	%33
  <bes bes,>-( \moveFingering #'(0 . 0.5) <as as,>-4-) r |
  << { c,,2-3-( es8-5 des-3-) } \\ { ges,!2.-\p } >> |
  <des' f,>4-4 r
 }
 
 \repeat volta 2 {
  \moveDynamics #'(0 . -0.2) <f f,>^\markup {\bold "Trio"}-\sf ~ |
  <f f,>2 \moveDynamics #'(0 . -0.2) <ges ges,>4-4-\sf ~ |		%37
  <ges ges,>2 \moveDynamics #'(0 . -0.2) <es' es,>4-5-\sf ~ |
  <es es,>-( <c c,>-4-) <as as,>-. |
  <des des,>-4-( <f f,>-) \moveDynamics #'(0 . -0.2) <f, f,>-\sf ~ |
  <f f,>2 \moveDynamics #'(0 . -0.2) <ges ges,>4-\sf ~ |		%41
  <ges ges,>2 <ges' ges,>4-5-\sf ~ |
  \moveFingering #'(0 . 0.6) <ges ges,>-4-( <bes bes,>-) <c, c,>-. |
  <es es,>-( <des des,>-4-)
 }
 
 \repeat volta 2 {
  <f f,>-5-\pp ~ |
  <f f,>2 <bes, bes,>4-3 ~ |		%45
  <bes bes,>2 <es es,>4-5 ~ |
  <es es,>2 <as, as,>4-3 ~ |
  <as as,>2 <des des,>4-5 ~ |
  <des des,>2-\fp <ges, ges,>4-3 ~ |	%49
  <ges ges,>2 <f f,>4-5 ~ |
  <f f,> \slurDown <as as,>-4-( <ces ces,>-5-) ~ |
  <ces ces,>-( <bes bes,>-4-) \slurNeutral <des des,>-5 ~ |
  <des des,>2 \clef bass <ges, ges,>4-3 ~ |	%53
  <ges ges,>2 <f f,>4-5 ~ |
  <f f,>2 <e e,>4-4 ~ |
  <e e,>2-5 <f f,>4-5 ~ |
  <f f,>2_\markup {\italic "cresc."} <ges ges,>4-4 ~ |	%57
  <ges ges,>2 <f f,>4-5 ~ |
  <f f,>-\p-( \moveFingering #'(0 . 0.3) <ges ges,>-4-) <c, c,>-5-. |
  <des des,>-5-. r s
 }
}

bottom =  \relative c {
 \override TextScript   #'padding = #2
 \key des \major
 \time 3/4
 \clef bass
 \partial 4
 
 \stemNeutral
 f'4-( |
 es2 des4 |			%1
 c-.-) r \moveMarkup #'(0 . 1) <bes des,>_\markup { \override #'(baseline-skip . 1.4) \finger \column { "2" "5" } }-. |
 \moveMarkup #'(0 . 1) <es es,>_\markup { \override #'(baseline-skip . 1.4) \finger \column { "1" "5" } }-. r <des es,>-. |
 \moveMarkup #'(0 . 1) <c as>_\markup { \override #'(baseline-skip . 1.4) \finger \column { "2" "3" } }-. r
            \clef treble
            bes'-( |
 as2 ges4 |			%5
 f-.-) r \moveMarkup #'(0 . 1) <es ges,>_\markup { \override #'(baseline-skip . 1.4) \finger \column { "2" "5" } }-. | \break
 \moveMarkup #'(0 . 0.5)  <as as,>_\markup { \override #'(baseline-skip . 1.4) \finger \column { "1" "5" } }-. r <ges as,>-. |
 \moveMarkup #'(0 . 1) <f des>_\markup { \override #'(baseline-skip . 1.4) \finger \column { "2" "3" } }-. r
             \clef bass
             \moveMarkup #'(0 . 1) <as, f>_\markup { \override #'(baseline-skip . 1.4) \finger \column { "1" "3" } }-( |
 <as es>2_4 \moveMarkup #'(0 . 0.7) <g des>4_\markup { \override #'(baseline-skip . 1.4) \finger \column { "2" "5" } } |		%9
 \moveMarkup #'(0 . 0.7) <c c,>_\markup { \override #'(baseline-skip . 1.4) \finger \column { "1" "5" } }-.-) r <bes des,>-. |
 <es es,>-. r <des es,>-. | \noPageBreak
 \moveMarkup #'(0 . 1) <c as>-. r \moveMarkup #'(0 . 1) <des bes>_\markup { \override #'(baseline-skip . 1.4) \finger \column { "1" "2" } }-( |
 <des as>2_3 \moveMarkup #'(0 . 1) <c ges>4_\markup { \override #'(baseline-skip . 1.4) \finger \column { "2" "4" } } |		%13
 \moveMarkup #'(0 . 1) <f f,>_\markup { \override #'(baseline-skip . 1.4) \finger \column { "1" "5" } }-.-) r \moveMarkup #'(0 . 1) <es ges,>_\markup { \override #'(baseline-skip . 1.4) \finger \column { "2" "5" } }-. |
 \moveMarkup #'(0 . 1) <as as,>_\markup { \override #'(baseline-skip . 1.4) \finger \column { "1" "5" } }-. r <ges as,>-. |
 \moveMarkup #'(0 . 1) <f des>_\markup { \override #'(baseline-skip . 1.4) \finger \column { "2" "3" } }-. r \break
 
 \repeat volta 2 {
  des_2-( |
  bes2_3 as4_4 |			%17
  g_5 as_4-) as_3 |
  as2_2-( ges!4_3 |
  f_4 ges_3-) ges_2-( |
  <as es>2_3 <as des,>4_4 |		%21
  <as c,>2._5-) |
  << {
   as2-( ges8 es-) | \break
   as2
  } \\ {
   des,2_3 ges,4 |
   as2_4
  } >>
      \moveMarkup #'(0 . 1) <as' f>4_\markup { \override #'(baseline-skip . 1.4) \finger \column { "1" "2" } }-( |
  \moveMarkup #'(0 . 1) <as es>2_3 \moveMarkup #'(0 . 1) <g des>4_\markup { \override #'(baseline-skip . 1.4) \finger \column { "2" "4" } } |		%25
  \moveMarkup #'(0 . 1) <c c,>_\markup { \override #'(baseline-skip . 1.4) \finger \column { "1" "5" } }-.-) r \moveMarkup #'(0 . 1) <bes des,>_\markup { \override #'(baseline-skip . 1.4) \finger \column { "2" "5" } }-. |
  <es es,>-. r <des es,>-. |
  \moveMarkup #'(0 . 1) <c as>_\markup { \override #'(baseline-skip . 1.4) \finger \column { "2" "3" } }-. r \moveMarkup #'(0 . 1) <des bes>_\markup { \override #'(baseline-skip . 1.4) \finger \column { "1" "2" } }-( |
  \moveMarkup #'(0 . 1) <des as>2_\markup { \override #'(baseline-skip . 1.4) \finger \column { "1" "3" } } \moveMarkup #'(0 . 1) <c ges>4_\markup { \override #'(baseline-skip . 1.4) \finger \column { "2" "4" } } |		%29
  \moveMarkup #'(0 . 1) <des f,>_\markup { \override #'(baseline-skip . 1.4) \finger \column { "1" "5" } }-.-) r <des bes>-( | \pageBreak
  <des as>2 <c ges>4 |
  <des f,>-.-) r \moveMarkup #'(0 . 1) <des bes>_\markup { \override #'(baseline-skip . 1.4) \finger \column { "1" "3" } } |
  <des as>2_4 <e des g,>4_5-( |	%33
  <f des as>_4-) r r |
  \slurDown
  <as,, as,>2.-( |
  \moveFingering #'(0 . -0.6) <as des,>4_3-) r
  \slurNeutral \break \noPageBreak
 }
 
 \repeat volta 2 {
  r |
  << {
   as2.-1 ~ |		%37 (1)
   as ~ |
   as ~ |
   as |
   as ~ |		%41 (1)
   as ~ |
   as2 as4 ~ |
   as2
  } \\ {
   \moveDynamics #'(0 . -1.3) des,2._5-\fp |		%37 (2)
   es_4 |
   ges_2 |
   f_3 |
   \moveDynamics #'(0 . -1.3) des_5-\fp |		%41 (2)
   \moveFingering #'(0 . -0.2) \fingerfont es_"3 - 2" |
   as,2 as'4
   des,2-3
  } >>
 } \break \noPageBreak
 
 \repeat volta 2 {
  r4 |
  \moveDynamics #'(0 . -3.3) \moveMarkup #'(0 . 1) <as'' d,>2._\markup { \override #'(baseline-skip . 1.4) \finger \column { "2" "5" } }-\pp |	%45
  \moveMarkup #'(0 . 1) <g des>_\markup { \override #'(baseline-skip . 1.4) \finger \column { "1" "4" } } |
  \moveMarkup #'(0 . 1) <ges! c,>_\markup { \override #'(baseline-skip . 1.4) \finger \column { "2" "5" } } |
  \moveMarkup #'(0 . 1) <f ces>_\markup { \override #'(baseline-skip . 1.4) \finger \column { "1" "2" } } |
  << {
   \fingerfont des^"2 - 1" ~ |		%49 (1)
   des ~ |
   des ~ |
   des | \break
   des ~ |		%53 (1)
   des ~ | 
   des ~ |
   des |
   des ~ |		%57 (1)
   des |
   s2. |
   s2.
  } \\ {
   \fingerfont bes2._"5 - 2" |		%49 (2)
   \fingerfont as_"3 - 2" |
   des,4_5-( f_4 as_2-) |
   \fingerfont ges2._"3 - 4" |
   \moveDynamics #'(0 . -1.3) bes_2-\fp |	%53 (2)
   as_3 |
   g_4 |
   as_3 |
   bes_2 |		%57 (2)
   as_3 ~ |
   \allNeutral
   \override TextScript   #'padding = #3
   \moveMarkup #'(4 . 0) <as as,>2^2 as4^1-.-\markup {\italic "Allegretto D. C."} |
   \revert TextScript #'padding
   des,^3-. r s
  } >>
 }
}
\book
{
\paper
{
%	annotate-spacing = ##t
	ragged-bottom = ##f
	ragged-last-bottom = ##f
	top-margin = 5\mm
	bottom-margin = 5\mm
	
first-page-number = 6
print-first-page-number = ##t
	
	next-space = 0\mm
	head-separation = 0\mm
}
\score {
 
	
	\new PianoStaff \with { \override VerticalAlignment #'forced-distance = #14 } <<
  \context Staff = "up" <<
  \set Staff.midiInstrument = #"acoustic grand"
   \context Voice = "main" { \override Fingering #'avoid-slur = #'none \top }
  >>
  \context Staff = "down" <<
   \set Staff.midiInstrument = #"acoustic grand"
   \override Fingering #'avoid-slur = #'none \bottom
  >>
 >>

 \layout {indent=0\mm
	
	 
	 ragged-bottom = ##f
	ragged-last-bottom = ##f
	top-margin = 5\mm
	bottom-margin = 5\mm
	
	 next-space = 0\mm
	head-separation = 0\mm
	 }
 
 \midi {
  %\tempo 4 = 228
  \context{
   \Voice
   \remove Dynamic_performer
  }
 }
}
}