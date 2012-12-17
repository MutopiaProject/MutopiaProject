\version "2.16.1"

violinWstep={s2. s2. s2.s2.}

violinA= \relative e''{
				% 1
  e2 ( d4 | c2 d4 | e2.~ | e2 )  f4  (
				% 5
  g2  f4 | e2 f4 | g2. ) ~|  g2. |
				% 9
  c2 ( h4| a2 h4 | a8 \times 2/3 { a16 h a }  gis2 ) ~  gis2. |
				%13
  b2 ( a4 | g2 a4 | g8 \times 2/3 { g16 a g} f2 ) ~ f2.|
				%17
  e2 ( d4 | c2  d4 | c8 \times 2/3 { c16 d c} h2 ) ~ |  h2.
}

violinB = \relative e''{
				% 21
  e2 ( d4 | cis2 d4 | e2.~ e2.  )
				% 25
  fis2. (  d'2 fis,4~| fis8 \times 2/3 { fis16 gis fis }  e2   e2. )
				% 29
  a2. ( gis2  dis4 | fis4 e2 ~ e2.)
				% 33
  d2. | cis2 h4 | h8 \times 2/3 {h16 cis h} a2
}


wariantA=  { a'4. (  h'8 cis''8  )d''8}
wariantB= {
  \relative c'' {
				% 37
    a2. | a2. | h4 c4 d4 | e2.~
				% 41
    e2.| e2. | d4 cis4 h4 | a2.~
				% 45
    a2. a2. | h4 c4 d4 | e2.
				% 49
    e2.|gis2.| fis4 e d| cis2.~
				% 53
    cis2. |cis2.| a,8 ( e' a cis e   a) |  <cis e>2. | a,2 r4
    r2.
  }
}

ViolinStaff = \context Staff = "violin"  <<
  \override Staff.NoteCollision   #'merge-differently-dotted = ##t
  \set Staff.midiInstrument = "violin"
  \set Staff.instrumentName = "Violin"

  \context Voice=VOne
  <<
    \clef "G"
    \stemUp
    \time 3/4
    {
      \violinWstep
      \repeat volta 2 { \violinA }
      \key a \major \repeat volta 2 { \violinB }
      \alternative { { \wariantA } { \wariantB \bar "||"} }
    }
  >>
>>
