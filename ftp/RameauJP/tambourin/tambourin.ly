#(set-global-staff-size 17)
\include "catalan.ly"

\version "2.19.15"

\header {
	title = "Tambourin"
	composer = "Jean-Philippe Rameau"
	subtitle = "Pièces de Clavecin"
	mutopiatitle = "Tambourin"
	mutopiacomposer = "RameauJP"
	mutopiainstrument = "Harpsichord, Piano"
	date = "1724"
	source = "Durand, 1895"
	style = "Baroque"
	license = "Public Domain"
	maintainer = "Ludovic Sardain"
	maintainerEmail = "ludovicsardain@hotmail.com"
	lastupdated = "2004/Oct/25"

 footer = "Mutopia-2015/01/17-487"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond" " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain" " by the typesetter " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

\paper {
  top-margin = 6 \mm
  % default vertical spacing values have been multiplied by 1.5, except where noted with **
  system-system-spacing = #'((basic-distance . 18) (minimum-distance . 12) (padding . 1.5))
  % defaults are 12, 8, and 1
  score-system-spacing = #'((basic-distance . 21) (minimum-distance . 12) (padding . 1.5))
  % defaults are 14, 8, and 1
  markup-system-spacing = #'((basic-distance . 7.5) (padding . 6))
  % defaults are 5 and 0.5**
  score-markup-spacing = #'((basic-distance . 18) (padding . 0.75))
  % defaults are 12 and 0.5
  markup-markup-spacing = #'((basic-distance . 1.5) (padding . 0.75))
  % defaults are 1 and 0.5
  top-system-spacing = #'((basic-distance . 1.5) (padding . 1.5))
  % defaults are 1 and 1
  top-markup-spacing = #'((basic-distance . 4) (padding 1.5))
  % defaults are none** and 1
  last-bottom-spacing = #'((basic-distance . 1.5) (padding . 5))
  % defaults are 1 and 1**
}


droite =  \relative do'{
	\time 2/2
	\key mi \minor
	\partial 2
	\once\override TextScript.extra-offset = #'(-3.5 . 2)
	mi8^\markup { \bold \fontsize #2.5 Vif } fad sol fad |
	mi4 si' si la |
	sol-\prall fad mi8 fad sol la |
	si4 mi red-\prall mi |
	fad2-\prall mi,8 fad sol fad |
	mi4 si' si la |
	sol-\prall fad mi8 fad sol la |
	si4 mi red8 mi fad red |
	mi2 \bar "||" mi8 fad sol fad |
	mi4 si do-\prall( si) |
	do-\prall( si) mi8 fad sol fad |
	mi4 si do-\prall( si) |
	do-\prall( si) sol'-\prall( mi) |
	do-\prall( si) sol'-\prall( mi) |
	do-\prall( si) sol'-\prall( mi) |
	do-\prall( si) la si |
	sol-\prall fad mi8 fad sol fad |
	mi4 si' si la |
	sol-\prall fad mi8 fad sol la |
	si4 mi red-\prall mi |
	fad2-\prall mi,8 fad sol fad |
	mi4 si' si la |
	sol-\prall fad mi8 fad sol la |
	si4 mi red8 mi fad red |
	mi4 si do-\prall si |
	lad si si-\prall la |
	sold la la-\prall sol |
	fad sol sol-\prall fad |
	mi mi' mi,8 fad sol fad |
	mi4 si si si |
	si mi' mi,8 fad sol fad |
	mi4 si si si |
	si mi'4 mi,8 fad sol fad |
	mi fad sol la si la sol fad |
	mi fad sol la si la sol la |
	si la sol la si4 la8 sol |
	fad2-\prall mi8 fad sol fad |
	mi4 si' si la |
	sol-\prall fad mi8 fad sol la |
	si4 mi red-\prall mi |
	fad2-\prall mi,8 fad sol fad |
	mi4 si' si la |
	sol-\prall fad mi8 fad sol la |
	si4 mi red8 mi fad red |
	mi4 si sol'-\prall fad~ |
	fad si, fad'-\prall mi~ |
	mi4 si sol'-\prall fad~ |
	fad si, fad'-\prall mi~ |
	mi si mi-\prall si |
	sol'-\prall si, mi-\prall si |
	si' si, mi-\prall si |
	sol'-\prall si, mi-\prall si |
	si'4 la8 sol fad sol mi fad |
	red mi dod red si do la si |
	sol la fad sol mi fad sol fad |
	mi fad sol fad mi fad sol fad |
	mi fad sol fad mi fad sol la |
	si4 mi red-\prall mi |
	fad2-\prall mi,8 fad sol fad |
	mi4 si' si la |
	sol-\prall fad mi8 fad sol la |
	si4 mi red8 mi fad red |
	mi2
	\bar "|."
}

gauche =  \relative do {
	\clef bass
	\key mi \minor
	r2 |
	<< { \voiceOne mi2 red |
	mi r |
	mi fad4 mi |
	red2 r |
	mi red |
	mi r |
	mi fad |
	sol } \\
	{\voiceTwo <mi, si'>2 r |
	<mi si'> r |
	<mi si'> r |
	<mi si'> r |
	<mi si'> r |
	<mi si'> r |
	<mi si'> r |
	<mi si'> } >>
	<< { \voiceOne r2 |
	mi'2 red |
	mi r |
	mi red |
	mi r |
	mi r |
	mi r |
	mi red |
	mi4 red } \\
	{\voiceTwo r2 |
	<mi, si'>2 r |
	<mi si'> r |
	<mi si'> r |
	<mi si'> r |
	<mi si'> r |
	<mi si'> r |
	<mi si'> r |
	<mi si'> } >>
	<< { \voiceOne r2 |
	mi'2 red |
	mi r |
	mi fad4 mi |
	red2 r |
	mi red |
	mi r |
	mi fad |
	sol r} \\
	{\voiceTwo r2 |
	<mi, si'>2 r |
	<mi si'> r |
	<mi si'> r |
	<mi si'> r |
	<mi si'> r |
	<mi si'> r |
	<mi si'> r |
	<mi si'> r} >>
	<mi dod' mi>2 <mi do' red> |
	<mi si' re!> <mi la dod> |
	<mi la do!> <mi si' red> |
	<mi si' mi>4 <mi' sol si> <mi sol si> <mi sol si> |
	<mi sol si> mi, mi'8 fad sol fad |
	mi4 <mi sol si> <mi sol si> <mi sol si> |
	<mi sol si> mi, mi'8 fad sol fad |
	mi4 <mi sol si> <mi sol si> <mi sol si> |
	<mi sol si>2 <mi, si' mi> |
	<mi si' mi> <mi si' mi> |
	<mi si' mi> <mi si' mi> |
	<mi si' red> r2 |
	<< { \voiceOne mi'2 red |
	mi r |
	mi fad4 mi |
	red2 r |
	mi red |
	mi r |
	mi fad |
	sol4 } \\
	{\voiceTwo <mi, si'>2 r |
	<mi si'> r |
	<mi si'> r |
	<mi si'> r |
	<mi si'> r |
	<mi si'> r |
	<mi si'> r |
	<mi si'>4 } >>
	r4 r2 |
	<mi si' red>2 r |
	<mi si' mi>2 r |
	<mi si' red>2 r |
	<mi si' mi>2 r |
	<mi si' mi>2 r |
	<mi si' mi>2 r |
	<mi si' mi>2 r |
	<mi si' mi>1~ |
	<mi si' mi>1~ |
	<mi si' mi>1~ |
	<mi si' mi>1~ |
	<mi si' mi>1 |
	<< { \voiceOne mi'2 fad4 mi |
	red2 r |
	mi red |
	mi r |
	mi fad |
	sol } \\
	{\voiceTwo <mi, si'> r |
	<mi si'> r |
	<mi si'> r |
	<mi si'> r |
	<mi si'> r |
	<mi si'> } >>
}

\score {
  \new PianoStaff  <<
    \new Staff = up <<
      \droite
    >>
    \new Staff = down <<
      \gauche
    >>
  >>
  \layout {}
  \midi {
    \tempo 4 = 80
    }
}
