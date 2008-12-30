\header {
    title = "Lindormen"
  source = "Svenska fornsånger, 2nd part, 1837"



  composer = \markup {
         \column  {
          \right-align  "ballad from Sweden"
   \right-align "published in \"Svenska fornsånger\", 2nd part, 1837"
}
}

    enteredby = "Erik Sjölund"
	

    mutopiatitle = "Lindormen"

    mutopiacomposer = "Traditional"
    mutopiainstrument = "Voice and Piano"
    style = "Folk"
    copyright = "Creative Commons Attribution-ShareAlike 2.5"
    maintainer = "Erik Sjölund"
    maintainerEmail = "erik.sjolund@gmail.com"




    lastupdated = "2006/November/26"
 footer = "Mutopia-2006/12/01-883"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2006. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 2.5 License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/2.5" http://creativecommons.org/licenses/by-sa/2.5 } } } }
  }


     \version "2.8.6"




global={

	\time 4/4
	\key g \minor
}
    
upper =  {
  \global
s1 | \stemUp  
	g'8  g'  bes'  a'  g'4  g'8  g'  |   
	bes'4  bes'8  c''  d''4  bes'8  c'' |  
	d''4  d'' r r8  d''  |  
%5
	d''4^(  f''8)  ees''  d''4.  c''8     |  


	bes'4  d''8 \melisma   bes' \melismaEnd   a'4.   g'8 |
  \cadenzaOn
 	g'  a'  bes'  c''      \bar "|"  \cadenzaOff  d''  d''  bes'  d''


  	d''  c''  bes'  a'  a'4  g'8 s8 r4   \fermata \bar "||"
}
     
lower =  {
  \global \clef bass

	<g, g>2. \fermata r4 |
	<g, g>2 g4 r |
	<d bes> <c a> <bes, bes> ees |
	d d'8 c' <bes d'>4 <a c'> |
%5
	<g b> <c c'> <d d'> fis |
	g bes d' d8 \fermata r |
	ees'4 d' fis g |
	c d g g, |
	g,, \fermata
}


dynamics = {

}




songlyric = \lyricmode { Sig- na Lil- la tjen- te i kon- ung- ens gård, Och de lek- te! Hon tjen- te der i åt- ta år. De lek- te bå- de nät- ter och i 
al- la si- na dag- ar!  }



upperextravoice = { 
	\stemUp <bes d' g'>2. \fermata r4  |
\stemDown bes4  d'8   c'  bes4  bes8  bes8\rest |
%10
	 f'4   f'  f'  g'  |
	fis'  fis'  r  r8  fis'  |
	g'4  <g' c''>  <fis' a'>4.  <d' a'>8  |
	<d' g'>4  <d' g'>   << { s8 s8 s8 \fermata } \\ { \stemDown <d' fis'>4. } >> s8 |
	s4  f'  <d' a'>  <d' g'> |
%15
	 <ees' a'>   <c' fis'>  <c' fis'>

}


upperII =  {
  \global

s1  |
	\stemUp g'8 a' bes' a' g'4 g'8 f' |
	bes'4 d''8 c'' d''4 bes'8 c'' |
	d''4 <d'' bes'> r c'' |
%5
	d''8 \melisma ees'' \melismaEnd  f'' \melisma d'' \melismaEnd g''4 d'' |
	c'' bes' a' r8 f' |
 \cadenzaOn 	g' a' bes' c'' \bar "|"  \cadenzaOff
	d''8 c'' bes' c'' d'' c'' bes' a' |
	g'4 g' r \fermata  \bar "||"
}
     
lowerII =  {
  \global \clef bass

	<g, g>2. \fermata r4 |
<< {	bes8 c' d' c' bes4 c'  |
	bes g a g } \\ { g2 g4 a4 d es d es } >>
	<bes, bes> bes, bes a |
%5
	bes d'8 bes g4 b |
	c' e f f, |
 \cadenzaOn	ees d8 a,  \bar "|"  \cadenzaOff
	<bes, bes>4 <ees g> << { a4 c'~ |
	c' bes } \\ { d2 g4 g4 } >> g, \fermata
}


upperextravoiceII = { 
	<bes d' g'>2. \fermata r4 | s1 | \stemDown f'4 g'4 fis' g' | f'4 f'4 s4 f'4 | << { s4 \stemDown bes'4 } \\  { f'2 }   >> b'4 g'8 f'8 es'4 <g' c'>4 <f' c'>4 s4 g'4 f'4 f'4 g'4 fis'2 d'4 d'4 
}

dynamicsII = {

}



\book{

\score {

  \new ChoirStaff \with{systemStartDelimiter = #'SystemStartBrace }  <<
    \new Dynamics = "dynamics" \dynamics
    \new Staff = "upper" << \context Voice = "melody" \upper

 \context Voice = "extravoice" \upperextravoice

  \new Lyrics \lyricsto "melody" \songlyric
>>
    \new Staff = "lower" <<
      \clef bass
      \lower 
    >>
  >>



  \layout {
    \context {
      \type "Engraver_group"
      \name Dynamics
      \alias Voice % So that \cresc works, for example.
      \consists "Output_property_engraver"
%      \override VerticalAxisGroup #'minimum-Y-extent = #'(-2 . 2)
      \consists "Piano_pedal_engraver"
      \consists "Script_engraver"
      \consists "Dynamic_engraver"
      \consists "Text_engraver"
      \override TextScript #'font-size = #2
      \override TextScript #'font-shape = #'italic

%           \override DynamicText #'extra-offset = #'(0 . 0)
%           \override Hairpin #'extra-offset = #'(0 . 0)



      \consists "Skip_event_swallow_translator"
      \consists "Axis_group_engraver"
    }
    \context {\Score \remove "Bar_number_engraver"}
    \context {
      \ChoirStaff
      \accepts Dynamics
  \override SpanBar #'transparent = ##t

    }
  }
}




\score {

  \new ChoirStaff \with{systemStartDelimiter = #'SystemStartBrace }  <<
    \new Dynamics = "dynamics" \dynamicsII
    \new Staff = "upper" << \context Voice = "melody" \upperII

 \context Voice = "extravoice" \upperextravoiceII

  \new Lyrics \lyricsto "melody" \songlyric
>>
    \new Staff = "lower" <<
      \clef bass
      \lowerII

    >>
  >>

  \layout {
    \context {
      \type "Engraver_group"
      \name Dynamics
      \alias Voice % So that \cresc works, for example.
      \consists "Output_property_engraver"
%      \override VerticalAxisGroup #'minimum-Y-extent = #'(-2 . 2)
      \consists "Piano_pedal_engraver"
      \consists "Script_engraver"
      \consists "Dynamic_engraver"
      \consists "Text_engraver"
      \override TextScript #'font-size = #2
      \override TextScript #'font-shape = #'italic

%           \override DynamicText #'extra-offset = #'(0 . 0)
%           \override Hairpin #'extra-offset = #'(0 . 0)



      \consists "Skip_event_swallow_translator"
      \consists "Axis_group_engraver"
    }
    \context {\Score \remove "Bar_number_engraver"}
    \context {
      \ChoirStaff
      \accepts Dynamics
  \override SpanBar #'transparent = ##t

    }
  }


 \header { 
          piece = \markup { \hspace #12 \large \bold "Variant" }



 }

}





\markup  {

	\fill-line {

	    \line {

		\column {
"1. " 
\transparent "0"
\transparent "0"
\transparent "0"
\transparent "0"
"2. "
\transparent "0"
\transparent "0"
\transparent "0"
\transparent "0"
"3. "
\transparent "0"
\transparent "0"
\transparent "0"
\transparent "0"
"4. "
\transparent "0"
\transparent "0"
"5. "
\transparent "0"
\transparent "0"
"6. "
\transparent "0"
\transparent "0"
"7. "
\transparent "0"
\transparent "0"
"8. "
\transparent "0"
\transparent "0"
"9. "
\transparent "0"
\transparent "0"

}
		\column {
		    "Signa Lilla tjente i konungens gård,"
		    "Och de lekte!"
		    "Hon tjente der uti åtta år."
		    "Och de lekte både nätter och i alla sina dagar!"
                    \transparent "0"
		    "Signa Lilla sig utom lunden går,"
		    "Och de lekte!"
                    "Der möter henne en lindorm så stor."
		    "Och de lekte både nätter och i alla sina dagar!"
                    \transparent "0"
		    "\"Hörest du, Signa Lilla, hvad jag säger dig,"
                    "Och de lekte!"
		    "\"Vill du nu följa af landet med mig?\""
		    "Och de lekte ..."
                    \transparent "0"
		    "\"Jag ville väl följa af landet med dig,\""
		    "Om du intet i sömnen ville svika mig.\""
                    \transparent "0"

"Lindormen svepte om jungfrun kappan blå,"

"Så lyfte han henne på gångaren grå."

                   \transparent "0"

"Signa Lilla red och lindormen rann,"

"Till dess att de kommo litet bättre fram."

\transparent "0"
"När som de kommo till borgarelid,"
"Der stod hennes fader och hvila sig dervid."
\transparent "0"

"\"Och hörest du, Signa, hvad jag säga må,\""
"\"Hvi vill du följa den lindorm så stor?\""

\transparent "0"

"\"Och käre ni, min fader, ni lät mig ha min gång;\""
"\"Ty detta var mig spådt allt uti min barndom.\""








	}
		\column {

"10. "
\transparent "0"
\transparent "0"

"11. "
\transparent "0"
\transparent "0"
"12. "
\transparent "0"
\transparent "0"

"13. "
\transparent "0"
\transparent "0"
"14. "
\transparent "0"
\transparent "0"
"15. "
\transparent "0"
\transparent "0"
"16. "
\transparent "0"
\transparent "0"
"17. "
\transparent "0"
\transparent "0"
"18. "
\transparent "0"
\transparent "0"
"19. "
\transparent "0"
\transparent "0"
"20. " 
\transparent "0"
\transparent "0"

}
		



		\column {


"När som de kommo i rosendelund,"
"Der mötte hon sina bröder i samma stund."

\transparent "0"

"\"Och hörest du, Signa, hvad jag säga må,\""
"\"Hvi vill du följa den lindorm så stor?\""
\transparent "0"

"\"Och käre mina bröder, ni låt mig ha min gång;\""
"\"Ty detta var mig spådt uti min barndom.\""

\transparent "0"

"Signa Lilla red och lindormen rann,"
"Och så foro de den vägen fram."

\transparent "0"

"De redo sig genom en blomstergrön äng:"
"Der hittade de på en uppbäddad säng."

\transparent "0"

"Lindormen lyfte jungfrun af gångaren grå:"
"\"Här skola vi hvila båda två.\""

\transparent "0"


"\"Intet är jag trötter och intet är jag mod,\""
"\"En liten hvila hon vore dock god.\""

\transparent "0"

"Jungfrun hon satte sig i sängen ned,"
"Hennes tårar de runno, sina händer hon vred."

\transparent "0"

"Signa Lilla lade sig ändtligen ned,"
"Och lindormen lade sig tätt bredvid."

\transparent "0"

"När Signa Lilla vakna och sig kringom såg,"
"Så var det en konungason på hennes arm låg."

\transparent "0"

"Allting var förändradt och allting var godt,"
"Begge så vaknade de i sitt slott."




		}

	    }
	}
}






}          




\score {
  \unfoldRepeats
  \new PianoStaff <<
    \new Staff = "upper"  { <<  \upper  \upperextravoice  >>  s2 s4   <<  \upperII  \upperextravoiceII  >> }
    \new Staff = "lower" { <<  \lower  >> s2 s4  <<  \lowerII  >> }
  >>



  \midi {
    \context {
      \type "Performer_group"
      \name Dynamics
      \consists "Piano_pedal_performer"
    }
    \context {
      \PianoStaff
      \accepts Dynamics
    }
       




\tempo 4=100
  }
}






          


