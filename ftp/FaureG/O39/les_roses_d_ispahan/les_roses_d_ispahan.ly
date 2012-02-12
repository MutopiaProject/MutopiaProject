\version "2.14.2"
\language "italiano" %So we can use "do re mi"

#(set-global-staff-size 18)
\header{
	title="Les roses d’Ispahan"
	poet="Leconte de Lisle"
	composer="Gabriel Fauré"
	opus="Op. 39, №4"

	mutopiatitle="Les roses d’Ispahan"
	mutopiacomposer="FaureG"
	mutopiapoet="Leconte de Lisle (1818–1894)"
	mutopiaopus="Op. 39, №4"
	mutopiainstrument="Voice and Piano"
	date="1884"
	source="J. Hamelle, 1885 (IMSLP)"
	style="Romantic"
	copyright="Public Domain"
	maintainer="Calixte Faure"
	maintainerEmail="calixte.faure@gmail.com"

 footer = "Mutopia-2011/11/13-1795"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-0.5 MutopiaProject \hspace #-0.5 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-0.5 LilyPond \hspace #-0.5 \teeny .org } by \maintainer \hspace #-0.6 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}


global={
	\time 2/4
	\key re \major
	\tempo 4=60
}

melodie=\relative do'{
	\voiceTwo
	re4->(mi8 re) | dod4->(re8 dod) |
	si4->(dod8 si) | la8.->(si16) la8.->(si16) |
	la8.->(si16) la8.->(si16) | s2*4 |

% mesure 10
	re4->(mi8 re) | dod4->(re8 dod) |
	si4->(dod8 si) | la8.->(si16) la8.->(si16) |
	la8.^\(->(si16) \voiceOne
	dod8.\<->(re16) | mi8.->(fad16) sol8.->(la16)\)\!
	
%mesure 16
	\change Staff="clef_de_fa"
	r8^\markup{\italic{cresc. poco a poco}} si,8[ red si] |
	r fad[ si red] | r la4.^\< |
	fad,8^\mf[re' sol, re']
	la[re si la] | la'4(sol) |

%mesure 22
	\change Staff="clef_de_sol"
	\voiceTwo re'4->(mi8 re) | dod4->(re8 dod) |
	si4->(dod8 si) | la8.->(si16) la8.->(si16) |
	la8.->(si16) la8.->(si16) | s2*2 |

%mesure 29
	re4->(mi8 re) | dod4->(re8 dod) |
	si4->(dod8 si) | la8.->(si16) la8.->(si16) |
	la8.^\(->(si16) dod8.\<->(re16) |
	\voiceOne mi8.->(fad16) sol8.->(la16)\)\!

%mesure 35
	\change Staff="clef_de_fa"
	r8^\markup{\italic{cresc. poco a poco}}
	si,[red si] | r fad[si red] | r la4. |
	fad,8[ re' sol, re'] | la[re si re] |
	la'4 si

%mesure 41	
	\change Staff="clef_de_sol"
	\voiceTwo
	fad'4->(sold8 fad) | mi4->( fad8 mi) | re4->(mi8 re) |
	do!4_\markup{\dynamic p \italic{sempre}}(mi8 re) |
	do!4(mi8 re) | do!4(mi8 do) | re4(mi8 re) |

%mesure 48
	red4(mi8 red) | re!4(mi8 re) | red!4\<(mi8 red)\! |
	red4\>(mi8 red)\! | s2 | s2 |
	si8.^\<(dod16) red8.(mi16)\! | s2 | s2 |
	
%mesure 57
	fa!8.->_\markup{\dynamic f \italic{marcato}}( mi16 sol!8.-> fa16)
	mi!8.->(re16 fa8.-> mi16) | re4->(mi8 re) | dod4->(re8 dod)
	si4->_\markup{\italic{dimin.}}( dod8 si) |

%mesure 62
	la8.->(si16) la8.->(si16) | s2 | s2 |
	re4->(mi8 re) | dod4->(re8 dod) | si4->(dod8 si) |
	la8.(->\< si16 dod8. re16\! | \voiceOne mi8.\> fad16 sol8. la16\!) |
	
%mesure 70
	\change Staff="clef_de_fa"
	r8 si,8[red si] | r fad[si red] | r la4. |
	fad,8[re' sol, re'] | la[re si re] | la'4^\>(sol)\! |

%mesure 76
	\change Staff="clef_de_sol"
	\voiceTwo re'4->\p(mi8 re) | dod4->(re8 dod) | do4->(re8 do) |
	si8.->(dod!16 si8.-> la16) | si8.->(dod16 si8.-> sol16) | s2 
}

accords=\relative do' {
	fad2 fad <re mi sol>
	<re fad la>4 <re mi sol> |
	<re fad la> <re mi sol> |
	<la re fad la>2~-> | q ~ |
	
%mesure 8
	q4(<si re mi sol> |<la re fad la> <si re mi sol>) |
	<fad' la>2 | q | <re fad>4 <mi sol> |
	<re fad la> <dod fad la> |
	<re fad la> \voiceTwo <la fad' la>
	<la la'> <la re>
	
%mesure 16
	\oneVoice <red la' si> <fad si> |
	<dod mi la>8 <red la si>4^> <mi la>8 |
	<<{<dod la'>2} \\{mi4->( fad8 mi)}>>
	<re la>4 <si re mi> | <do re fad>
	<<{<re fad>}\\{dod8->^\>(si)\!}>>
	
%mesure 21
	<dod fad>4\p <la dod fad> |
	fad'2^\p | fad | <re mi sol> | <re fad la>4 <re mi sol> |
	<re fad la> <re mi sol> |
	< la re fad la>(<si re mi sol> |
	<la re fad la> <si re mi sol>) | <fad' la>2 |
	q | <re fad>4 <mi sol> | <re fad la> <dod fad la> |
	<re fad la>4 <la fad' la> | \voiceTwo<la la'> <la re>

%mesure 35
	<red la' si> <fad si> | <dod mi la>8 <red la' si>4^> <fad si>8 |
	<<{\voiceOne <dod la'>2}\\{mi4->\<(fad8 mi)\!}>> |
	<la, re>4\mf <si re mi> | <do! re fad>^> | <<{<re fad>}\\{dod8(si\!)}>> |

%mesure 40
	<<{\voiceTwo s4 <re fad>}\\{\voiceOne <dod fad>4( sold'8 la)}>> |
	\voiceOne <lad, lad'>2 | q | <sib sib'> | <la la'>

%mesure 45
	<sol sol'> | fad' | fad | fad | fad | fad |
	<si, sol'> | <si mi sol>4\p( <do mi fad la>
	<re mi sol si> <do mi fad la>) | <mi sol> <si sol'> |
	
%mesure 55
	<si fa' sold>(_\markup{\italic{cresc.}} <do fa la> |
	<re sol! si> <do fa la>) | <si sold'>2 | <sold sold'> | <la la'> |

%mesure 60
	<fad' la> | <re fad> | <re fad>4 <re mi sol> |
	<la re fad la>\p( <si re mi sol> | <la re fad la> <si re mi sol>) |

%mesure 65
	<fad' la>2 | q | <re fad>4 <mi sol> | <re fad la> <la fad' la> |
	\voiceTwo <la la'> <la re> | \voiceOne
	
%mesure 70
	<red la' si>_\markup{\italic{crecs. poco a poco}} <fad si> |
	<dod mi la>8 <red la'si>4^> <fad si>8 |
	<<{<dod la'>2}\\{\voiceTwo mi4\<->(fad8 mi\!)}>> 
	<la, re>4\mf <si re mi> | <do re fad>
	<<{<re fad>}\\{\voiceTwo dod8->(si)}>>
	
%mesure 75
	<dod fad>4^\markup{\italic{poco rit.}} <la dod fad> |
	fad'2^\markup{\italic{a tempo}} fad fad
	<re fad>4(<fad la>) | <fad la>(<re fad>) |
	<la re fad>2\fermata
}
  
accordsDeux=\relative do {
	\voiceThree 
     	\override Stem #'cross-staff = ##t
     	\override Stem #'length = #24
     	\override Stem #'flag-style = #'no-flag
     	fad2 fad s2*19
	fad2 fad s2*22
	fad2 fad fad fad fad s2*25
	fad2 fad fad s2*3
}
 
basses=\relative do,{
	\voiceFour re8\p( la'4 la'8) re,,8(la'4 la'8)
	\oneVoice \repeat unfold 12 {re,,8( la'4 la'8)}

%mesure 15	
	\voiceFour
	fad,8->(la4 la'8) | fad4_(la | sol8) fad4_>_(la8) |sol4.(sol,8) |
	fad4(sol | la si) | la'8[ dod, sol' la,] | re,8\p(la'4 la'8) |
	re,,8(la'4 la'8)
	\oneVoice \repeat unfold 10 {re,,8(la'4 la'8)}

%mesure 34
	\voiceFour
	fad,8->( la4 la'8) | fad4_(la |sol8) fad4_>_(la8) |
	sol4._(sol,8) | fad4( sol | la si ) |
	la'8[ dod, si' dod,] | fad,8( dod'4 dod'8) |
	fad,,(dod'4 dod'8) | fad,,(re'4 sib'8) |
	\oneVoice fad,(re'4 fad,8) | mi(re'4 mi,8) |

%mesure 46
	\voiceFour re(re'4 re,8) | do!->(re4 do8 | si-> fad'4 si,8) |
	do8->(re4 do8 | si8-> fad4 si8) | \oneVoice si'->(la'4 si,8) |
	mi,(si'4 si'8) |
	\repeat unfold 5 {mi,,(si'4 si'8)}

%mesure 58
	mid,,(si'4 si'8) | fad,!(la4 la'8) | fad,(dod'4 la'8) |	fad,8(re'4 fad8) |
	\repeat unfold 7{re,(la'4 la'8)} |

%mesure 69
	re,,->(la'4 la'8) | \voiceTwo fad4_(la | sol8) fad4->_(la8) |
	sol4._(sol,8) | fad4_(sol | la si) | la'8[dod, sol' la,] |
	re,(la'4 la'8) | re,,(la'4 la'8) | re,,(la'4 la'8) | \oneVoice
	sol,[(re sol re']) | sol,[(re sol si]) | <re, re'>2\fermata
}

chant=\relative do'{
	\autoBeamOff
	R2*6

%mesure 7 — Les roses
	r4 r8 fad8^\markup{\italic{dolce}} | la4 re,8 mi16 sol |
	la8 la16 re, re8 mi16 sol |
	la4 la8 la16^\< si | dod8^\! si16 la fad8. fad16 |
	la4~^\> la16 mi fad sol\! | fad 2 |
	R2*2 |

%mesure 16 — Ont un parfum
	si8^\markup{\italic{cresc. poco a poco}} red16 dod si8. fad16 |
	la8 si red16 dod si fad | la4 la |
	re8^\f fad4 mi8 | re16 fad, fad4.^\> | fad16^\p dod' la4 fad16 mi |
	re2 | R R R |

%mesure 26 — Ta lèvre 
	r4 r8 la'8^\p | la4 re,8 mi16 sol | la8 la16 re,16 re8 mi16 sol |
	la4~ la8^\< la16 si | dod8\! si16 la fad4~ | 
	fad8^\> fad la16 mi fad sol\! | fad2 fad4 r |R2
	
%mesure 35 – Mieux que
	si8^\markup{\italic{cresc. poco a poco}}
	red16 dod si8. fad16 | la8 si red16 dod si fad16 |
	la2^\< | re8^\f re16 fad mi8. re16 | fad,4.^\> fad8\! |
	dod'8.^\p dod16 si8 la16[sold] | fad2 | fad4 r |
	
%mesure 43 – O Leïlah
	r sib4^\p | re16 la la4 la8 |
	sol8 sol do si16[(do]) | si8 la16[(si]) la4~ |
	la8^\markup{\italic{sempre dolce}} la la sol16[(la]) |
       	si8 fad8 fad4~ | fad8 la16 si la8 sol16 la |
	si8.[(do16]) si4~ | si~ si8 r |

%mesure 52 – Il n’est
	si8.^\p si16 la8 sol16 fad | mi8 re!16 mi fad8 sol16 la |
	si2^\< | re8\!^\markup{\italic{cresc.}} do16 si la8. si16 |
	sol8 sol la16 si do si | re2^\f^\> | re4~\! re8 r |
	R2*3

%mesure 62 – Oh ! que ton jeune
	r4 la4^\p | la8 re,8 re mi16[(sol]) | la8 la re,16 re mi sol |
	la4.^\< si8\! | dod16 dod si la fad8. fad16 |
	la4^\> mi8 fad16 sol16 | fad2\! |

%mesure 70 – Et qu’il
	fad4 r8 la | si red16[(dod]) si8. fad16 | la8 si red16 dod si fad |
	la2^\< | re8^\f fad4 mi8 | re16 fad, fad4. |
	fad16^\>^\markup{\italic{poco rit.}} dod' la4 fad16 mi\! |
	re2^\markup{\italic{a tempo}} | re4 ~ re8 r |
	R2*3
	r2\fermata \bar"||"
}

paroles=\lyricmode{
	Les ro -- ses d’Is -- pa -- han dans leur gaî -- ne de mous -- se,
	Les jas -- mins de Mos -- soul, les fleurs de l’o -- ran -- ger,
	Ont un par -- fum moins frais, ont u -- ne_o -- deur moins dou -- ce,
	Ô blan -- che Le -- ï -- lah ! que ton souf -- fle lé -- ger.

	Ta lè -- vre_est de co -- rail et ton ri -- re lé -- ger
	Son -- ne mieux que l’eau vi -- ve_et d’u -- ne voix plus dou -- ce,
	Mieux que le vent joy -- eux qui ber -- ce l’o -- ran -- ger,
	Mieux que l’oi -- seaux qui chan -- te_au bord d’un nid de mous -- se.
	
	O Le -- ï -- lah ! de -- puis que de leur vol lé -- ger
	Tous les bai -- sers ont fui de ta lè -- vre si dou -- ce
	Il n’est plus de par -- fum dans le pâ -- le_o -- ran -- ger,
	Ni de cé -- les -- te_a -- rôme aux ro -- ses dans leur mous -- se.

	Oh ! que ton jeu -- ne_a -- mour ce pa -- pil -- lon lé -- ger
	Re -- vien -- ne vers mon cœur d’u -- ne_ai -- le prompte et dou -- ce.
	Et qu’il par -- fu -- me_en -- cor la fleur de l’o -- ran -- ger,
	Les ro -- ses d’Is -- pa -- han dans leur gaî -- ne de mous -- se.
}

\score{
	\transpose re re{<< 
%If you need to transpose, just change the second "re" (do=c re=d mi=e fa=f sol=g la=a si=b *b=*es *d=*is)
	\new Staff<<
		\new Voice{\global \chant}
		\addlyrics{\paroles}
	>>
	\new PianoStaff <<
		\new Staff ="clef_de_sol"{<<
			\new Voice{\global \melodie}
			\\
			\new Voice{\global \accords}
		>>}
		\new Staff ="clef_de_fa" {<<
			\new Voice{\global \accordsDeux}
			\\
			\new Voice{\clef bass \global \basses}
		>>}
	>>
>>}
%\layout{}
%\midi{}
}

\paper{
		topmargin = 1.0\cm
		bottommargin = 1.5\cm
		leftmargin = 2.5\cm
		linewidth = 16.0\cm
		raggedbottom = ##t
		footsep = 1.0\cm
}
