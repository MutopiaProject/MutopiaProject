\version "2.18.0"

 guitarone = \relative c' {
	\cadenzaOn
	c4\prall _\markup \center-column { \null \null "Trill" } \bar "||"
	c4\mordent _\markup \center-column { \null \null "Mordant" }  \bar "||"
	c4\prallmordent _\markup \center-column { \null\null "Trill and Mordant" } \bar "||"
	c8\turn _\markup \center-column { \null \null "Turn" } \bar "||"
	c4\upprall _\markup \center-column { \null \null "Ascending Trill" } \bar "||"
	c4\downprall _\markup \center-column { \null \null "Descending Trill" } \bar "||"
	c4\upmordent _\markup \center-column { \null \null "Ascending Trill" "with Mordant" } s64 \bar "||"
	c4\downmordent _\markup \center-column { \null \null "Descending Trill" "with Mordant" } s8 \bar "||"
	c4\lineprall _\markup \center-column { \null \null "Appoggiatura" "and Trill" } s16 \bar "||"
	s32 \grace{\graceSchleifer a16} c4 _\markup \center-column { \null \null "Schleifer" } \bar "||"
}
