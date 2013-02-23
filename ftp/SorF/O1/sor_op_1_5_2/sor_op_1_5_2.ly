\version "2.16.0"
\header {
  mutopiatitle = "Divertissements pour la guitare, n°5.2"
  mutopiacomposer = "SorF"
  mutopiaopus = "O 1.5.2"
  mutopiainstrument = "Guitar"
  date = "1820s"
  source = "Golden Music Press/GFA/Frederic Noad facsimile edition"
  style = "Classical"
  copyright = "Creative Commons Attribution-ShareAlike 3.0"
  maintainer = "Mark Van den Borre"
  maintainerEmail = "mark@markvdb.be"
  maintainerWeb = "http://markvdb.be"
  moreInfo = "This work is licensed under the Creative Commons Attribution-ShareAlike License, with the additional permission that attribution is not required in an audio derivative of this work."
  filename = "sor_op1_5_2.ly"
  dedication = "Composés et dédiés à Mrs Davenport"
  title = "Six divertissements pour la guitare"
  subtitle = "n°5.2 Variation"
  opus = "Opus 1 n°5.2"
  instrument = "Guitarre"
  meter = ""
  composer = "Fernando Sor (1778-1839)"
  enteredby = "Mark Van den Borre"
  tagline =	"\\parbox{\\paper-width}{\\thefooter\\quad\\small\\noindent\\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[\\textwidth][c]{It has been typeset by " + \maintainer + ". Copyright \\copyright " + \maintainer + " 2004.} \\makebox[\\textwidth][c]{\\footnotesize This work is licensed under the Creative Commons Attribution-ShareAlike License, with the additional permission that attribution is not} \\makebox[\\textwidth][c]{\\footnotesize required in an audio derivative of this work. To view a copy of that license visit \\texttt{http://creativecommons.org/licenses/by-sa/1.0/} } \\makebox[\\textwidth][c]{\\footnotesize or send a letter to Creative Commons, 559 Nathan Abbott Way, Stanford, California 94305, USA.}}"
  footer = 	"Mutopia-2004/05/01-456"
}

upperVoice =  \relative c' {
 \repeat volta 2 {
  \set tupletSpannerDuration = #(ly:make-moment 1 8)
  \override TupletBracket #'bracket-visibility = ##f
  \partial 4 \voiceOne e'8 ~ \times 2/3 {e16[ fis( g)]}|                                        %1
  \override TupletNumber #'stencil = ##f
  \times 2/3 {f[ gis( a)] e([ f d)]} b8 ~ \times 2/3 {b16[ d( b)]}|				%2
  c8 r c' b|											%3
  a[ g f e]|											%4
  \times 2/3 { d16[ g, g]} \grace a \times 2/3 {g[ fis g]} e'8 ~ \times 2/3 {e16[ fis( g)]}|	%5
  \times 2/3 {f[ gis( a)] e( f) d} b8 ~ \times 2/3 {b16[ d b]}| 				%6
  c8 r c' b |											%7
  a \times 2/3 {c16([ b a)]} g8 fis|								%8
  g r												%9
 }
 \repeat volta 2 {
  g a|												%10
  b8. c16 d8 e|											%11
  f r \oneVoice \times 2/3 {e16[ c e(] b)[ gis b(]}|					%12
  \times 2/3 {c)[ a c(] gis)[ e gis] \grace b <a f>[ <gis e> <a f>] c( a) <f d>}|		%13
  \voiceOne <e c>8 <d b g,> e ~ \times 2/3 {e16[ fis g]}|						%14 facsimile says <d b e,,>
  \times 2/3 {f16[ gis( a)] e( f) d} b!8( \times 2/3 {b16)[ d( b)]}|		%15
  \shiftOn c8 r \shiftOff gis' a|								%16
  \shiftOn b \shiftOff										%17.1
  \times 2/3 {c8 <a es c>16} 							%17.2
  \shiftOn g8											%17.3
  b,|											%17.4
  <c c,> s										%18
 }
}

middleVoice =  \relative c' {
 \set tupletSpannerDuration = #(ly:make-moment 1 8)
 \override TupletBracket #'bracket-visibility = ##f
 \override TupletNumber #'stencil = ##f
 \voiceOne
 \repeat volta 2 {
  \partial 4 s4
  s2 s s s s s s s4
 }
 \repeat volta 2 {
  s4 s2 s s s s s 
  \times 2/3 {gis'16[ d' f]} 								%17.1
  \times 2/3 {\shiftOn c[ e] s}								%17.2
  \times 2/3 {\shiftOff g,16[ c e]}							%17.3
  \times 2/3 {g,,16[ d' f]}|								%17.4 facsimile doesn't undo fis
  s4
 }
}
lowerVoice =  \relative c' {
 \set tupletSpannerDuration = #(ly:make-moment 1 8)
 \override TupletBracket #'bracket-visibility = ##f
 \voiceTwo
 \repeat volta 2 {
  \partial 4 \times 2/3 {c16[ b' c]} bes8				%1
  \override TupletNumber #'stencil = ##f
  a r \times 2/3 {r16 as([ g)]} f8|								%2
  \times 2/3 {r16 e[ g]} c,8 \times 2/3 {a''16[ c, a'] g c, g'}|				%3
  \times 2/3 {f[ c f] e[ c e] d[ g, b] c[ c, e]}|						%4
  \slurUp \times 2/3 {g s8 s8. c,16[ b'( c)]} bes8|						%5
  a r \times 2/3 {r16 as[ g]} f8|								%6
  \times 2/3 {r16 e[ g]} c,8 \times 2/3 {e'16[ c e] d[ gis, e']}|				%7
  \times 2/3 {c[ a e']} r8 \times 2/3 {d16[ b d] c[ a c]}|					%8
  \times 2/3 {b[ d, g]} g,8									%9
 }
 \repeat volta 2 {
  \times 2/3 {b'16[ g d'] c[ g fis']}|								%10
  \times 2/3 {d[ g, f'!] d[ f <e c>] b[ f' g] c,[ e g]}|					%11
  \times 2/3 {d[ g b,]} g8 s4|									%12
  s2|												%13
  \times 2/3 {r16 fis([ g)] s8. c,16[ b'( c)]} bes8|						%14
  a r \times 2/3 {s16 as([ g)]} f8|								%15
  \times 2/3 {r16 e[ g]} c,8 \times 2/3 {e16[ b' d] a'[ f, c']}|				%16
  gis8												%17.1
  \times 2/3 {a8 fis16]}									%17.2
  g8												%17.3
  g,8|												%17.4
  \times 2/3 {c16[ e g]} c8						%18
 }
}
\score {
 \context Staff <<
  \time 2/4 %Original says "C"
  \override Staff.NoteCollision #'merge-differently-dotted = ##t
  \override Staff.NoteCollision #'merge-differently-headed = ##t
  \context Voice = "one" \upperVoice
  \context Voice = "two" \middleVoice
  \context Voice = "three" \lowerVoice
  >>
  \layout{}
  \midi{}
}
