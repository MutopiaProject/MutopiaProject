global={\key b \major}
\bookpart {
\header { 
	title = "Meine Seele hört im Sehen"
	subtitle = "HWV 207" 
	piece="Aria"
	composer = "G.F.Händel"
	}
\paper{
%spacing issues
	ragged-last-bottom = ##f
	system-count = #15
	indent = .75\cm
}
\score {
%\transpose b g
<<
	\new Staff 
	<< 
		%\set Staff.instrumentName = #"Violino" 
		\addIncipitClef "treble" ""
		\new Voice {\include "./hwv_207/layout.ily"}
		\new Voice {\global \clef treble \include "./hwv_207/n_v1.ily"}
	>>
	\new Staff 
	<<
		%\set Staff.instrumentName = "Soprano"
		\addIncipitClef "soprano" ""
		\new Voice = "Soprano" {\global \clef treble \include "./hwv_207/n_s.ily"}
		\new Lyrics \lyricsto "Soprano" { \include "./hwv_207/l_s.ily" }
	>>
	\new Staff 
	<< 
		%\set Staff.instrumentName = \markup {\column { "Basso" "Continuo" }}
		\addIncipitClef "bass" ""
		\new Voice {\include "./hwv_207/n_fig.ily" }
		\new Voice {\global \clef bass \include "./hwv_207/n_bc.ily"}
	>>
>>
\layout {
	\context { \Score
	\override SpacingSpanner  #'common-shortest-duration = #(ly:make-moment 1 8)
	}
}
\midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 80 4) } }
}
}
