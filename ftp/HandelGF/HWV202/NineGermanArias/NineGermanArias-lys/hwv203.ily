global={\key es \major}
\bookpart {
\header { 
	title = "Das zitternde Glänzen der spielenden Wellen"
	subtitle = "HWV 203" 
	piece = "Aria"
	composer = "G.F.Händel"
	}
\paper{
%spacing issues
	ragged-last-bottom = ##f
	system-count = #15
	indent = .75\cm
}
\score {
%\transpose es d
<<
	\new Staff 
	<< 
		%\set Staff.instrumentName = #"Violino" 
		\addIncipitClef "treble" ""
		\new Voice {\include "./hwv_203/layout.ily"}
		\new Voice {\global \clef treble \include "./hwv_203/n_v1.ily"}
	>>
	\new Staff 
	<<
		%\set Staff.instrumentName = "Soprano"
		\addIncipitClef "soprano" ""
		\new Voice = "Soprano" {\global \clef treble \include "./hwv_203/n_s.ily"}
		\new Lyrics \lyricsto "Soprano" { \include "./hwv_203/l_s.ily" }
	>>
	\new Staff 
	<< 
		%\set Staff.instrumentName = \markup {\column { "Basso" "Continuo" }}
		\addIncipitClef "bass" ""
		\new Voice {\include "./hwv_203/n_fig.ily" }
		\new Voice {\global \clef bass \include "./hwv_203/n_bc.ily"}
	>>
>>
\layout {
	\context { \Score
	\override SpacingSpanner  #'common-shortest-duration = #(ly:make-moment 1 4)
	}
}
\midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 100 4) } }
}
}
