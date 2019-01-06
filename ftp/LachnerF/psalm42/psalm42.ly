\version "2.19.65"
\language "italiano"

\paper{
  page-count = 4
  systems-per-page =  3
  line-width = 17.5\cm
}

%%% Header %%%

\header{
  title = "Psalm 42"
  composer = "Franz Lachner (1803-1890)"
  mutopiacomposer = "LachnerF"
  mutopiainstrument = "SATB choir"
  date = "1837-07-06"
  source = "Manuscript (from IMSLP) BSB Mus.Mss. 5843"
  style = "Romantic"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  poet = \markup{\left-column {"Psalm 42:1-5 (1-6)" }}
  mutopiaPoet = "Psalm 42"
  maintainer = "calixte"
  maintainerWeb = "http://clxt.fr"
  moreInfo = "Transliteration could be done better, i don’t know Hebrew…"
  footer = "Mutopia-2018/05/16-2222"
  copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white "ǀ" \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {"ǀ" "ǀ"}}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " ©" 2018 ""by " \maintainer " — " \footer}\concat {\concat {\abs-fontsize #8 { \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License" " — free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white "ǀ" }}}
  tagline = ##f
}

%%% Score structure %%%

global = {
  \autoBeamOff
  \key re \minor
  \partial 4
}
nuances = {
  \dynamicUp
  \override DynamicTextSpanner.style = #'none
  \tempo "Andante con moto" 4=110
  s4
  s1*4
  s4 s8 s8\p s2 |
  s1*5
  s2 s4.\f s8
  s1
  s2 s4.\p s8 |
  s1*3
  s2 s2\cresc |
  s1*3
  s2 s4.\f s8
  s1
  s2\fermata s4.\p s8 |
  s1*4
  s1*4
  s2.\cresc  s4 |
  s1*2
  s1*6
  s1\fermata\!
  s2 s4\p s |
  s1
  s1*4
  s2 s4\cresc s |
  s1
  s2 s4 s\f |
  s1*3
  s2 \fermata s |
  s1*9
  s2 s2\cresc  |
  s1
  s2.. s8\f |
  s1*7
  s2 s\pp |
  s1*3
  s2. s4\f |
  s1*3
  s4 s4 s2\ff |
  \tempo "rallendo"
  s2 s2\pp |
  \override Hairpin.minimum-length = #5
  s4 s\< s\> s\!

  \bar"|."

}

%%% Notes %%%

soprano = {
  r4
  R1*4
  r4 r8 la'8 la'4 la' |

  la'4. la'8 la'4( sib') |
  sol'4. sol'8 do''4 do'' |
  la'4( sib' sol'2) |
  la'2 do''4 do'' |
  do''2 do''4. re''8
  si'2 mi''4. mi''8

  mi''4. fa''8 mi''2
  mi''2 mi''4. mi''8 |
  re''2 re'' |
  sol'2 do''4 do'' |
  la'4. sib'8 sol'2 |
  la'2 fa''2 |

  %2
  fa''2 fa''2
  do''4. do''8 fa''2
  fa''2 fa''4. fa''8
  do''2( fa''4.) fa''8
  re''4( mib'' do''2) |
  %ratures

  re''2 re''4. re''8 |
  do''4 do'' do'' re'' |
  sib'2 sib'4 sib'8 sib' |
  lab'2 sib' |
  lab' sol' |

  sib'4. sib'8 sib'4 sib' |
  la'2 la'~ la'2 sib'4( la') |
  la'1 |
  re''1 |
  re''2.  re''4 |
  re''4. re''8 re''2 |
  re''2 re'' |

  %5
  mi''2 mi''4( fa'') |
  fa''2 mi'' |
  mi''1 |
  mi''4. mi''8 fa''2 |
  fa''1 |
  mi''1
  r2 la'4 la' |
  la'4. la'8 si'4. si'8 |

  la'4. la'8 la'4 sol' |
  fad'4( sol') mi'2 |
  fad'2. la'4 |
  la'4. la'8 la'4 la' |
  la'2 re''4  re'' |
  dod''4. re''8 mi''4. re''8 |

  re''2 dod''4 re'' |
  re''4. dod''8 dod''4 re'' |
  re''2 dod''4 fad''4 |
  sol''2 fad''2 |
  mi''2 r |

  %6
  R1*3
  r2 la'4 la' |
  fa'4. mi'8 re'4 re'' |

  do''2 la' |
  fa'4. fa'8 sol'4 sol' |
  la'2 do''2 |
  la'4 la' sib' sib' |
  sol'2 do''2  |

  la'4. la'8 sib'2 |
  sol'2.. do''8 |
  la'4 fa''2 fa''4 |
  mi''2. re''4 |
  dod''4 re''2 dod''4 |

  %7
  re''2. dod''4 |
  re''4 fa''2 fa''4 |
  mi''2. re''4 |
  dod''4 re''2 dod''4 |
  re''2 la' |

  fad'4 fad' sol' sol' |
  mi'2 la' |
  fad'4 fad' sol'2 |
  mi'2. la'4 |
  la'4 fad''2 fad''4 |

  mi''2.. re''8 |
  re''4 fad''2 mi''4 |
  re''4 r4 mi''2 |
  fad''2 la'2 |
  fad'1


}
alto = {
  r4
  R1*4
  r4 r8 fa'8 fa'4 mi'4 |

  mi'4. fa'8 fa'4( sol') |
  mi'4. mi'8 sol'4 sol' |
  mi'4 (fa' mi'2) |
  fa'2 fa'4 mi' | %rayures
  fa'2 fa'4. fa'8
  mi'2 sold'4. sold'8 |

  la'4. la'8 sold'2 |
  la'2 la'4. la'8 |
  la'2 sol'4( fa') |
  mi'2 sol'4 sol' |
  fa'4. fa'8 mi'2 |
  fa'2 fa'  |
  fa'2 fa'4( sol') |
  la'4. la'8 fa'2 |
  fa'2 fa'4. sol'8 |
  la'2.. la'8 |
  sol'2( fa'2) |

  fa'2 fa'4. fa'8 |
  sol'4 sol' re' re' |
  re'2 re'4 re'8 re' |
  mib'2 fa' |
  sib sib |

  sol'4. sol'8 sol'4 sol' |
  sol'1 | sol'2 sol' |
  fa'1 | re' |
  mib'2. mi'4 |
  fa'4. fa'8 fad'2 |
  la'2 sol' |

  %5
  sold'2 sold' |
  la'2 la' |
  sold'1 |
  sold'4. sold'8 sold'2 |
  la'1 | la'1 |
  r2 la'4 sol' |
  fad'4. fad'8 mi'4. mi'8 |

  mi'4. mi'8 mi'4 mi' |
  re'2 re'4( dod') |
  re'2. fad'4 |
  mi'4. fad'8 sol'4 fad'4 |
  mi'2 fad'4 fad' |
  sol'4. fad'8 mi'4. fad'8 |

  fad'2 mi'4 fad' |
  fad'4. mi'8 mi'4 fad' |
  la'2 la'4 la' |
  la'2 la' |
  la'2 r |

  %6
  R1*3 r2  mi'4 mi' |
  re'4. re'8 re'4 fa' |

  sol'2 do'2 |
  re'4. re'8 mi'4 mi' |
  fa'2 sol' |
  fa'4 fa' fa' sol' |
  mi'2 sol' |

  sol'4( fa'8) mi' re'4( sol'8[ fa']) |
  mi'2. sol'4
  fa'4 la'2 la'4 |
  la'2. sol'4 |
  la'4 la'2 la'4 |

 %7
 si'2. la'4 |
 la'4 la'2 la'4 |
 sol'2. fa'4 |
 mi' fa'2 mi'4 |
 fad'2 mi'2 |

 re'4 re' mi' mi' |
 dod'2 mi' |
 mi'4( re'8) dod'  si4( fa'8[ re')] |
 dod'2. mi'4
 fad'4 la'2 la'4 |

 lad'2.. si'8 |
 la'!4 la'2 la'8[ sol'] |
 fad'4 r la'2 |
 la'2 dod'2 |
 re'1

}
tenor = {
    r4
  R1*4
  r4 r8 re'8 re'4 dod'4 |

  dod'4. re'8 re'2 |
  do'4. do'8 do'4 do' |
  do'4( la do'2) |
  do'2 la4 sol |
  la2 la4. la8 |
  sold2 do'!4. do'8 |
  do'4. re'8 si2 |
  dod'2 dod'4. dod'8 |
  re'2 re'
  do'2 do'4 do' |
  do'4. sib8 do'2 |
  do'2 sib2 |
  sib2 sib2 |
  la4. la8 sib2 |
  sib2 sib4. sib8 |
  la2.. do'8 |
  sib2( la2)

  sib2 sib4. sib8 |
  sib4 sib la la |
  sib2 sib4 sib8 sib |
  do'2 fa |
  fa2 sol |

  sib4. sib8 mib'4 re' |
  dod'1 |
  dod'2 dod' |
  re'1 |
  la1 |
  sib2.  sib4 |
  do'4. do'8 do'2
  re'2 re' |

  %5
  re'2 re'2 |
  re'2 dod'2 |
  re'1 |
  do'4. do'8 re'2 |
  re'1 |
  dod'1
  r2 mi'4 mi' |
  do'4. do'8 re'4. re'8 |

  dod'4. la8 la4 la |
  la4 (si) la2 |
  la2. re'4 |
  dod'4. re'8 mi'4 re' |
  dod'2 la4 la |
  la4. la8 la4. la8 |

  la2 la4 la |
  la4. la8 la4 la |
  fad'2 mi'4 re' |
  mi'2 re'2 | dod'2 r2

  %6
  R1*3 r2
  la4 la |
  la4. sol8 fa4 la |

  sol2 la |
  sib4. sib8 sib4 sib |
  do'2 do' |
  do'4 do' re' re' |
  do'2 do' |

  do'4. do'8 re'2 |
  do'2. do'4 |
  do'4 re'2 re'4 |
  dod'2. re'4 |
  mi' fa'( mi') mi' |

  %7
  fa'2. mi'4 |
  re'4 re'2 re'4 |
  sib2. sib4 |
  sib4 si4( la) la |
  la2 la2 |

  la4 la si si |
  la2 la |
  la4 la si2 |
  la2. dod'4 |
  re'4 re'2 re'4 |

  dod'2.. si8 |
  re'4 re'2 dod'4 |
  re'4 r dod'2 |
  re'2 la2 |
   la1
}
bass = {
  la8. la16 |
  fa4( mi) re re' |
  do'2 la |
  fa sol |
  la1 |
  r4 r8 re8 re4 la, |

  la,4. re8 re4( sol,) |
  do4. do8 mi4 mi |
  fa( re do2) |
  fa2 fa4 do |
  fa2 fa4. re8 |
  mi2 mi4. mi8 |

  la4. re8 mi2 |
  la,2 la,4. la,8 |
  sib,2 si,2 |
  do2 mi4 mi |
  fa4. re8 do2 |
  fa2 re |

  %
  re2 re4 (mib) |
  fa4. fa8 re2 |
  re2 re4. mib8 |
  fa2.. fa8 |
  sol4( mib fa2) %ratures

  sib,2 re4. re8
  mi!4 mi fad fad |
  sol2 sol4 sol8 sol |
  do2 re |
  re mib |
  mib4. mib8 mib4 mib |
  mi!1 |
  mi?2 mi |
  fa1 | fa1 |
  sol2.  sol4 |
  la4. la8 la2 | do'2 sib2 |

  %
  sib2 sib2
  la2 la |
  sib1 |
  sib4. sib8 sib2 |
  la1 |
  la1
  r2 dod4 dod |
  re4. mi8 sol4. sol8

  la4. dod8 dod4 dod |
  re (sol) la( la,) |
  re2. re4 |
  sol4. fad8 dod4 re |
  la,2 re4. re8 |
  mi4. re8 dod4. re8 |

  la,2 la,4 re |
  la,4. la,8 la,4 re |
  la2 la4 re' |
  dod'2 re' |
  la2
  la4^\markup{\italic Solo} la4 |

  %6
  fa4. mi8 re4 re' |
  do'2 la |
  fa4. fa8 sol4 sol |
  la2 dod4^\markup{\italic Tutti} dod |
  re4. re8 re4 re |
  mi2 fa |
  sib4. sib8 sib4 sib |
  la2 mi |
  fa4 fa sib sol |
  do'2    mi |
  fa4. fa8 sib2 |
  do'2.
  mi4 |
  fa re2 re4 |
  la,2. sib,4 |
  la,4 re4( la) la |

  %7
  sold2. la8[ sol] |
  fa4 fa2 re4 |
  sol2. sol4 |
  sol sold( la) la |
  re2 dod |

  re4 re la, mi |
  la2 dod |
  re4 re sol2 |
  la2. la8[( sol]) |
  fad4 fad2 fad4 |

  fad2.. sol8 |
  fad4 re4( la) la, |
  re r4 la2 |
  re2 la,  |
  re1

}

%%% Lyrics %%%

sephardi =\lyricmode{
  % contemporary hebrew
  \tag #'bass {
    Lam -- na -- tse -- ach, mas -- kil lib -- ney  ko -- rach.
  }
Ke -- a -- yal, ta -- a -- rog al  a -- fi -- kei ma -- yim ken
  naf -- shi ta -- a -- rog e -- le -- ko e -- lo -- him.

Tza -- me -- ah naf -- shi, le -- lo -- him le -- el chai:
  Ma -- tai a -- vo; ve -- e -- ra -- eh pe -- nei e -- lo -- him.

Ha -- ye -- tah li dim -- a -- ti le -- chem, yo -- mam va -- lay -- lah
  Be -- e -- mor ei -- loy kol ha -- yom, a -- yeh, a -- yeh  e -- lo -- he -- cha?
                                A -- yeh, a -- yeh, a -- yeh  e -- lo -- he -- cha?

El -- leh ez -- ke -- rah,  ve -- esh -- pe -- chah a -- lay naf -- shi
  Ki e -- e -- vor ba -- sach, e -- dad -- dem ad -- beit e -- lo -- him:
  Be -- kol rin -- nah ve -- to -- dah; ha -- mon cho -- geg.

\tag #'bass {
  Mah tish -- to -- cha -- chi, naf -- shi vat -- te -- he -- mi a -- lay
}
Mah tish -- to -- cha -- chi, naf -- shi vat -- te -- he -- mi a -- lay:
  Ho -- chi -- li le -- lo -- him! Ki od o -- den -- nu ye -- shu -- ot pa -- nav,
  ye -- shu -- ot po -- nov, ye -- shu -- ot po -- nov, ye -- shu -- ot pa -- pav!
  Ho -- chi -- li le -- lo -- him, ki od o -- den -- nu ye -- shu -- ot pa -- nav,
                             	     ye -- shu -- ot pa -- nav, pa -- nav, pa -- nav!
}
ashkenazi =\lyricmode{
  % similar to manuscript but internationalized
  \tag #'bass {
    Lam -- na -- tse -- ach, mas -- kil lib -- ney  ko -- rach.
  }
Ke -- a -- yal, ta -- a -- rog al   a -- fi -- kei mo -- yim ken
  naf -- shi ta -- a -- rog e -- le -- ko e -- lo -- him.

Tzo -- me -- oh naf -- shi, le -- lo -- him le -- el choi:
  Mo -- sai o -- vo; ve -- e -- ro -- eh pe -- nei e -- lo -- him.

Ho -- ye -- soh li dim -- o -- si le -- chem, yo -- mom vo -- loy -- loh
  Be -- e -- mor ei -- loy kol ha -- yom, a -- yeh, a -- yeh  e -- lo -- he -- cho?
                                A -- yeh, a -- yeh, a -- yeh  e -- lo -- he -- cho?

El -- leh ez -- ke -- rah,  ve -- esh -- pe -- chah a -- lay naf -- shi
  Ki e -- e -- vor ba -- sach, e -- dad -- dem ad -- beit e -- lo -- him:
  Be -- kol rin -- nah ve -- to -- do; ha -- mon cho -- geg.

\tag #'bass {
  Mah tish -- to -- cha -- chi, naf -- shi vat -- te -- he -- mi o -- lay
}
Mah tish -- to -- cha -- chi, naf -- shi vat -- te -- he -- mi o -- lay:
  Ho -- chi -- li le -- lo -- him! Ki od o -- den -- nu ye -- shu -- ot po -- nov,
  ye -- shu -- ot po -- nov, ye -- shu -- ot po -- nov, ye -- shu -- ot po -- nov!
  Ho -- chi -- li le -- lo -- him, ki od o -- den -- nu ye -- shu -- ot po -- nov,
                             	     ye -- shu -- ot po -- nov, po -- nov, po -- nov!
}

paroles = \sephardi % Define lyrics type

%%% Score %%%

\score{
  \new ChoirStaff<<
    \new Staff { \global << { \soprano} {\nuances} >> }
    \addlyrics{ \removeWithTag #'bass \paroles}

    \new Staff { \global << { \alto } { \nuances } >> }
    \addlyrics{ \removeWithTag #'bass \paroles}

    \new Staff { \clef "G_8"  \global << { \tenor} { \nuances } >> }
    \addlyrics{ \removeWithTag #'bass \paroles}

    \new Staff{ \clef bass    \global << { \bass } { \nuances } >> }
    \addlyrics{ \paroles}

  >>
  \layout{}
  \midi{}

}
