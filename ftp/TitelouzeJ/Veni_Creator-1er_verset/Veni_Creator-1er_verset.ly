\version "2.4.0"
\include "italiano.ly" 

%% Version 1.0

\header{
    title = "Veni Creator -- 1er verset"
    subtitle = ""
    piece = "1er verset" 
    instrument = "Orgue -- Organ"
    composer = "Jean Titelouze (1563-1633)"
    copyright = "Public domain -- Domaine public."
    source = "Edition Schott 1869 Alexandre Guilmant"
    opus = ""
    lastupdated = "2005-02-12"
    enteredby = "G. Gréco"
    maintainer = "G. Gréco"
    
    footer = "Mutopia-2005/02/12-534"
    tagline = "\\raisebox{10mm}{\\parbox{188mm}{\\quad\\small\\noindent " + \footer + " \\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[188mm][c]{It has been typeset and placed in the public domain by " + \maintainer + ".} \\makebox[188mm][c]{Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}}}"
}

global =  {
  \key do \major
  \time 4/4
}

staffUp = {
  \context Staff = "up"   \stemDown\tieDown
  \set Staff.minimumVerticalExtent = #'(-1 . 1)
}
staffDown = {
  \context Staff = "down"   \stemUp\tieUp
}

soprano =  \context Voice = "one"  \relative do'' {
  \voiceOne
  %\set Staff.midiInstrument = "alto sax"
  \override NoteHead #'style = #'baroque
  \stemUp
  %%1 :
  R1 |
  R1 |
  R1 |
  R1 |
  %%5:
  re4 mi2 re4 |
  do4 re mi re8[ do] |
  re4 mi8[ fa] sol[ mi] re4 |
  mi2 mi2 |
  fa4 re8[ mi] fa[ sol] fa4 |
  %%10: 
  mi2 re2\rest |
  re4 mi2 re4 |
  do4 re mi fa |
  sol4 fa mi8[ fa] sol[ mi] |
  la4 sol8[ la] fad[ sol] mi[ fad] |
  %%15:
  sol2. sol8[ fa] |
  mi2 r2 |
  sol4 la2 sol4 |
  fa4 sol la sol8[ fa] |
  mi4. do16[ re] mi8[ re] do[ si] |
  %%20:
  la4 re8[ mi] fad[ sol] la4 |
  sol2 fa4\rest sol4 ~ |
  sol8 sol4 fa8 mi[ re mi do] |
  fa4 re8[ mi] fa4 mi8 re |
  mi4 fa sol2 |
  %%25:
  sol4\rest sol4. sol8 fa4 |
  mi8[ re mi do] si4 mi4 ~ |
  mi4 fa sol do, |
  re2 fa4\rest sol4 ~ |
  sol8[ sol] fa4 mi8[ re mi do] |
  %%30:
  re4 mi8[ fa] sol2 |
  la4 sol4. fad16[ mi] fad4 |
  sol8[ fa] mi4 re mi ~|
  mi4 re mi2 |
  r4 sol4. sol8 fa4 |
  %%35:
  mi8[ re mi do] sol'4 la ~|
  la4 sol fad sol |
  mi4 fa sol2 |
  la8[ mi fa sol] la4 mi8[ fad] |
  sol8[ re mi fad] sol4 re8[ mi] |
  %%40:
  fa8[ do re mi] fa2 |
  mi4. mi8 fa[ sol] la4 |
  la2. la8[ sol] |
  fa4 sol4 ~ sol8[ fa mi re] |
  do4 do ~ do8[ re mi fad] |
  %%45:
  sol8[ fa] mi4 re2 ~ |
  re8[ do re mi] fa[ mi re do] |
  si4 do re mi8[ fad] |
  sol4. fa!8 mi2 |
  re4 do2 si8[ la] |
  %%50:
  % not very clean ; bar check error 
  \set Score.timing = ##f
  \override Script #'padding = # 1.2
  si\breve^\fermata |

}

alto =  \context Voice = "two"   \relative do' {
  \voiceTwo 
  %\set Staff.midiInstrument = "alto sax"
  \override NoteHead #'style = #'baroque
  \stemDown
  %%1 :
  re4 mi2 re4 |
  do4 re mi re8 do |
  re4 sol8[ fa] mi[ re] mi4 ~ |
  mi4 re do fa8[ mi] |
  %%5:
  re8[ do] si[ do] re4 si |
  mi4 fa mi la |
  si4 do2 si4 |
  si4\rest do2 sib4 |
  la4 sib la si |
  %%10:
  do4. si8 la[ sol] la4 |
  si2. si8 la |
  sol2 do4 re |
  mi4 do r2 |
  R1 |
  %%15:
  re4 mi2 re4 |
  do4. re8 mi4 do ~ |
  do4 la8[ si] do[ re] mi4 |
  la,8[ re] do[ si] la4 si |
  do1 |
  %%20:
  r2 r4 re4 ~ |
  re8[ re] do4 si8[ la si sol] |
  do4 si do8[ si] sol4 |
  la2 la4 sib ~ |
  sib!4 la sol4\rest do ~ |
  %%25:
  do8[ do] sib4 la4. si8 |
  do8[ si16 la] sol4 ~sol8[ la si do] |
  la2 sol4. la8 |
  si4 la ~la8[ la] sol[ la16 si] |
  do4 la sol4\rest la |
  %%30:
  si4 do2 sib4 |
  la4 re si4\rest re ~ |
  re8[ re] do4 si8[ la si sol] |
  do8[ si] la8[si] do2 |
  sol4. la8 si[ do] re4 |
  %%35:
  sol,4. la8 sol4 do |
  re4 si8[ do] re[ mi] re4 |
  do4 la sol do ~ |
  do4. si8 la[ si] do4 |
  si4. la8 sol[ la] sib4 |
  %%40:
  la4. sol8 fa[ sol la si] |
  do2. la8 si |
  do8 re mi4 re dod |
  re8[ do sib la ] sol2 |
  la2 mi4\rest la4 |
  %%45:
  si4 do2 
  % The following comman does not walk ? why ? if anyone can tell me why ?
  % It would be necessary, anyway.
  % \once \override NoteColumn  #'force-hshift = #100  
  sib4 |
  la4 si!8[ do] la[ sol] la4 |
  sol4 fa8[ mi] re4 sol8[ la] |
  si8 do re2 do4 |
  si8[ la sol fa] mi8[re mi fad] |
  %%50:
  sol\breve |
  
}

tenor = \context Voice = "three"  \relative do'' {
  \voiceThree
  %\set Staff.midiInstrument = "alto sax"
  \override NoteHead #'style = #'baroque
  \stemUp
  %%1 :
  r1 r1 r1 r1 
  %%5 :
  r1 
  r1 |
  si2\rest si4\rest sol4 ~ |
  sol4 la 2 sol4 |
  fa4 sol la sol8 la |
  %%10:
  sol4 la8[ sol] fa mi4 fad8 |
  sol2 fad4 sol |
  mi2 si'2\rest |
  sol4 la2 sol4 |
  fa4 mi re do |
  %%15:
  si4 do8[ re16 do] si8[ la] si4 |
  do4 mi8[ re] do8[ re mi fa] |
  mi4 fa2 mi4 |
  R1 |
  sol4 la2 sol4 |
  %%20:
  fad4 sol la fad |
  sol2 si2\rest |
  R1 |
  si2\rest si4\rest sol4 ~ |
  sol8[ sol] fa4 mi8[ re mi do] |
  %%25:
  fa4 sol la fa |
  sol2 si4\rest sol4 ~ |
  sol8[ sol] fa4 mi8[ re mi do] |
  sol'4 fa8[ mi] re2 |
  mi4 re do2 |
  %%30:
  si'4\rest do,4 re4. mi8 |
  fad4 sol la2 |
  sol2 si4\rest sol4 ~ |
  sol8[ sol] fa4 mi8[ re mi do] |
  re2 sol4 re |
  %%35:
  mi4. fa8 mi4. mi8 |
  fad4 sol re sol ~ |
  sol8[ sol] fa4 mi8[ re mi sol] |
  fa8[ do re mi] fa[ sol] la4 |
  mi8[ fad sol re] mi[ fa] sol4 |
  %%40:
  re8[ mi fa do] re[ mi] fa4 |
  do8[ mi fa sol] la[ sol] fa4 |
  mi4 do fa mi |
  re2 re4. mi8 |
  fa8[ sol la si] fa[ mi re do] |
  %%45:
  re4 do re4. mi8 |
  fa4. do8 re[ mi] fa4 ~ |
  fa8[ mi re do] si4 do |
  re4 si do8[ re mi fa] |
  sol8[ fa mi re] do[ si] do4 |
  %%50:
  re\breve^\fermata |
 
}


basso = \context Voice = "four"  \relative do' {
\voiceFour 
%\set Staff.midiInstrument = "alto sax"
\override NoteHead #'style = #'baroque
\stemDown
  %%1 :
  sol1 |
  la |
  sol1 |
  fa1 |
  sol1 |
  \clef violin la1 |
  sol do re do si do do la sol la do re do re mi mi re do re |
  mi1 do si la sol re' sol, la si do si do la sol fa la la sib |
  la1 sol fa sol ~ sol ~ sol sol\breve |
}

choral=\lyricmode{
    Ve- --  -ni Cre- -- \skip 1  -a- -- -tor \skip 1 Spi- -- \skip 1 \skip 1 -ri- -- -tus: 
    Men- -- \skip 1 -tes tu- -- -o- -- -rum \skip 1 vi- -- \skip 1 -si- -- -ta, 
    Im- -- -ple- \skip 1 su- -- \skip 1 -per- -- \skip 1 -na gra- -- \skip 1 -ti- -- -a, 
    Qu\ae \skip 1 tu cre- -- \skip 1 -a- --  -sti \skip 1 \skip 1 pe- -- -cto- -- -ra.
}

\score {
    {
	<<
	    \context PianoStaff <<
		\context Staff = "up" <<
		    \global
		    \clef violin 
		    \set Staff.midiInstrument = "Church organ"
		    \soprano
		    \alto
		>>
		\context Staff = "down" <<
		    \global    
		    \clef bass
		    \set Staff.minimumVerticalExtent = #'(-2 . 2)
		    \set Staff.midiInstrument = "Church organ"
		    \tenor
		    \basso
		>> 
	    >>
	    \lyricsto "four" \new Lyrics \choral
	>>  
	
	
	\bar "|."
    }
    \layout {}
    \midi{ \tempo 4 = 110  }
    
}

