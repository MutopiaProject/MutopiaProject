\version "2.16.1"
\include "definitions.ily"

LessonIPreludeupper = \relative c'' {
  \clef treble
  \key c \major
  \time 2/4
  r16 c-1[ d-2 e-3] f-1[ g-2 a-3 b-4] |
  c-5[ b-4 a-3 g-2] f-1[ e-3 d-2 c-1] |
  r16 d,-1[ f-2 g-3] b-5[ g-3 f-2 d-1] |
  r16 c-1[ e-2 g-3] c4-5 |
  \bar "|."
}
LessonIPreludelower = \relative c {
	\clef bass
	\key c \major
	\time 2/4
	\set fingeringOrientations = #'(left)
	<<{ 
		\set fingeringOrientations = #'(left)
		<e-2 g-1>2~}
		\\{
		\set fingeringOrientations = #'(left)
		<c-4>~ 
		}>> 
	<<{ <e g> } \\ { c }>> 
	<<{
		\set fingeringOrientations = #'(left)
		<b-4 d-2 g-1> } \\ {
		\set fingeringOrientations = #'(left)
		<g-5> } >> 
	<<{
		\set fingeringOrientations = #'(left)
		<e'-2 g-1> } \\ { 
		\set fingeringOrientations = #'(left)
		<c-3> }>> 
	\bar "|."
}

