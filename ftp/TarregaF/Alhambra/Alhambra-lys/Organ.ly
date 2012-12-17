\version "2.16.1"

treblesWstep={
  r4 <e a>4 <a c'> |<c' e'> <a c'><e a>
  r4 <e a>4 <a c'> |<c' e'> <a c'><e a>
}
bassWstep={
  <a,, a,>2. <a,, a,><a,, a,><a,, a,>
}

treblesA=  {
				% 1
  \chordmode {
    r4 a2:m/e ( r4 a2:m/e r4 a2:m/e ~  a2:m/e g4:7)
				% 5
    r4 c'2/g' r4  c'2/g' r4  c'2/g'~ c'2./g' }
				% 9
  r4 <a' c'' f''>2 r4 <a' c'' f''>2 r4 < gis' h' e''>2 ~< gis' h' e''>2.
				%13
  \chordmode {r4  g2:dim r4 g2:dim } <f'a'd''>2.~<f'a'd''>
				%17
  \chordmode{r4 a2:m/e r4  a2:m/e r4 e2 ~ e2. }
}


bassA=  {
				% 1
  <a a,>2.   <a a,>   <a a,>   <a a,>2  <g g,>4
				% 5
  <c g>2.  <c g>  <c g>  <c g>
				% 9
  <f c>  <f c> <e h e'><e h e'>
				%13
  <e e'><e e'> <d a d'> <d a d'>
				%17
  <e a c'><e a c'> <e gis h><e gis h>
}

treblesB=  {
				% 21
  \chordmode {
    r4 a2 r4  a2 r4 a2~a2.
				% 25
    r4 d'2/a' r4 d'2/a' r4 a2 ~ a2. }
				% 29
  \chordmode {r4 fis2:m} | r4 <gis' his' gis''>2 | <gis' cis'' fis''>4~<gis' cis'' e''>2
  ~<gis' cis'' e''>2.
				% 33
  r4  <f' h' d''>2 |<e' gis' cis''>4  \chordmode {e2}|
  <cis' e' h'>4 <cis' e' a'>2
}


bassB=  {
				% 21
  <a, e a>2.<a, e a> <a, e a>~<a, e a>
				% 25
  <d a d'>2.<d a d'><a, e a>~<a, e a>
				% 29
  \chordmode{fis,:m gis,}  <cis gis cis'>~<cis gis cis'>
				% 33
  <h, h><e, h, e> <a, e a>
}

treblesWariantA={
				% 36
  r4 <cis' e' a'>2
}
bassWariantA={
				% 37
  <a, e a>2.
}

treblesWariantB={
				%37
  r4 <cis' e' a'>2
  r4 <f' a'>2
  r4 <f' a'>2
  r4 <cis' e' a'>2 ~
				% 41
  <cis' e' a'>2.
  \chordmode{  r4 e2 | e2.}
  r4 <cis' e' a'>2 ~  <cis' e' a'>2.
				% 46
  r4 <f' a'>2
  r4 <f' a'>2
  r4 <cis' e' a'>2
  r4 <cis' e' a'>2
				%50
  \chordmode{  r4 e2 | r4 e2}
  r4 <cis' e' a'>2
  r4 <cis' e' a'>2
  r4 <f' a'>2
				% 55
  <cis' e' a'>2.~<cis' e' a'>2.
  <cis' e' a'>2.
  <cis e a>2.
}
bassWariantB={
				% 37
  <a, e a>2. <f, f> <f, f>
				% 40
  <a, e a>~<a, e a>
				% 42
  <e, h, e><e, h, e>
				% 44
  <a, e a> <a, e a> <f, f> <f, f>
				% 48
  <a, e a> <a, e a> <e, h, e><e, h, e>
				% 52
  <a, e a><a, e a> <f, f>
  <a, e a>~<a, e a>
				% 57
  <a, e a> <a,, e, a,>
}


piano={
  \context PianoStaff
  <<
    \context Staff = "up"
    <<
      \time 3/4 {
	\treblesWstep
	\repeat volta 2 {\treblesA }
	\key a \major
	\repeat volta 2 { \treblesB }
	\alternative { { \treblesWariantA } { \treblesWariantB } }
      }
    >>
    \context Staff = "down" <<
      \clef bass {
	\bassWstep
	\repeat volta 2 {\bassA }
	\key a \major \repeat volta 2 { \bassB }
	\alternative { { \bassWariantA } { \bassWariantB } }
      }
    >>
  >>
}
