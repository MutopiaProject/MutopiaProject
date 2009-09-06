global={\key b \major}
\bookpart {
\header { 
	title = "Süßer Blumen Ambraflocken"
	subtitle = "HWV 204" 
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
		\new Voice {\include "./hwv_204/layout.ily"}
		\new Voice {\global \clef treble \include "./hwv_204/n_v1.ily"}
	>>
	\new Staff 
	<<
		%\set Staff.instrumentName = "Soprano"
		\addIncipitClef "soprano" ""
		\new Voice = "Soprano" {\global \clef treble \include "./hwv_204/n_s.ily"}
		\new Lyrics \lyricsto "Soprano" { \include "./hwv_204/l_s.ily" }
	>>
	\new Staff 
	<< 
		%\set Staff.instrumentName = \markup {\column { "Basso" "Continuo" }}
		\addIncipitClef "bass" ""
		\new Voice {\include "./hwv_204/n_fig.ily" }
		\new Voice {\global \clef bass \include "./hwv_204/n_bc.ily"}
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
