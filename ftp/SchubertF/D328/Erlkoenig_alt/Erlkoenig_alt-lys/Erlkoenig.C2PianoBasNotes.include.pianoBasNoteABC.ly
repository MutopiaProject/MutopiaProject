%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           C2. PIANO BAS: Notes
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
%--------------------------------------------------------------------- A: 1-49: 1 VOIX
pianoBasNoteA = \relative do {

 \noletSansCrochet
%1
 \LLtupletDown
 \clef "bass_8"
 R1
 \LLstemUp 
 \times 2/3 { sol8([ la sib] } \nombreNoletH \times 2/3 { do[ re mib]) } re4-| sib-|
 sol-| r r2
%4
 \times 2/3 { sol8([ la sib] } \nombreNoletH \times 2/3 { do[ re mib]) } re4-| sib-|
 sol-| r r2
 <do,do'>2. <dod dod'>4
 <re re'>1
 sol4 r r2
%9
 \noletSansNombre
 \times 2/3 { sol8([ la sib] } \times 2/3 { do[ re mib]) } re4-| sib-|
 sol r r2
 \times 2/3 { sol8([ la sib] } \times 2/3 { do[ re mib]) } re4-| sib-|
 sol r r2
 \set doubleSlurs = ##t <do,do'>1(
%14
 <dod dod'>) \set doubleSlurs = ##f
 \times 2/3 { re8([ fad sol] } \times 2/3 { la[ si dod]) } re2 ~
 re1
 \times 2/3 { re,8([ fad sol] } \times 2/3 { la[ si dod]) } re2 ~
 re1
%19
 \times 2/3 { re,8([ fad sol] } \times 2/3 { la[ si dod]) } re2 ~
 re1
 <sol,, sol'>1(
 do2.) mib4
 fa r fa, r
%24
 \stemNeutral \times 2/3 { sib'8 ([do re] } \LLtupletUp \times 2/3 { mib[ fa solb]) } fa4-| sib,-|
 sib,1
% \LLtupletDown 
 \times 2/3 { sib'8 ([do re] } \LLtupletUp \times 2/3 { mib[ fa solb]) } fa4-| sib,-|
 sib,1
%28
% \LLtupletDown 
 \times 2/3 { sib'8 ([do re] } \LLtupletUp \times 2/3 { mib[ fa solb]) } fa4-| sib,-|
 \clef "bass_8"
 fad1(
 sol4-|) r mib-| r
 do-| r re-| r
 sol, r r2
%33
% \LLstemUp 
 \times 2/3 { sol'8([ la sib] } \times 2/3 { do[ re mib]) } re4-| sib-|
 sol r r2
 \times 2/3 { sol8([ la sib] } \times 2/3 { do[ re mib]) } re4-| sib-|
 sol r r2
 R1
%38
 R1
 r2 sol->
 \times 2/3 { do,8([ mib fa] } \times 2/3 { sol[ la si]) } do2
 \times 2/3 { do,8([ mib fa] } \times 2/3 { sol[ la si]) } do2 ~
%42
 do1
 \times 2/3 { do,8([ mib fa] } \times 2/3 { sol[ la si]) } do2 ~
 do1
 \times 2/3 { do,8([ mib fa] } \times 2/3 { sol[ la si]) } do2
%46
 \times 2/3 { fa,8([ la sib!] } \times 2/3 { do[ re mi]) } \LLstemDown fa2 ~
 fa1
 \LLstemUp \times 2/3 { fa,8([ la sib] } \times 2/3 { do[ re mi]) } \LLstemDown fa2 ~
 fa1
}

%--------------------------------------------------------------------- B: 50-71: 2 VOIX

pianoBasNoteB = { <<
% \context Voice = pianoBasHaut {
%  \voiceOne \relative do {
%
% \noletSansCrochet \noletSansNombre
% \set autoBeaming = ##f
%%50 %%%%%%%%%%%%%%%%%%%%%
% \noletTraversantL
%% \times 2/3 { <fa la>8 fa fa } \times 2/3 { fa8 fa fa } \times 2/3 { fa8 fa fa } \times 2/3 { fa8 fa fa }
% s1
%%51
% s1
%%52
% \noletTraversant
% s1
%%53
% s1
%%54
% s1
%%55
% \noletTraversantL
% s1
%%56
%% \times 2/3 { sol8 sol sol } \times 2/3 { sol8 sol sol }  \noletNormal \times 2/3 { sol8 sol \noletTraversantL sol } \times 2/3 { sol8 sol sol }
% s1
%%57
%% \times 2/3 { <fa sib>8 <fa sib> <fa sib> } \times 2/3 { <fa sib>8 <fa sib> <fa sib> } \times 2/3 { <fa la>8 <fa sib> <fa sib> } \times 2/3 { <fa la>8 <fa sib> <fa sib> }
% s1
%%58
%% \times 2/3 { s8 <fa sib> <fa sib> } \times 2/3 { s8 <fa sib> <fa sib> } \times 2/3 { s8 <fa sib> <fa sib> } \times 2/3 { s8 <fa sib> <fa sib> }
% s1
%%59
%% \times 2/3 { s8 <fa la> <fa la> } \times 2/3 { s8 <fa la> <fa la> } \times 2/3 { s8 <fa la> <fa la> } \times 2/3 { s8 <fa la> <fa la> }
% s1
%%60
% \noletTraversant
% s1
%% \times 2/3 { s8 <fa sib> <fa sib> } \times 2/3 { s8 <fa sib> <fa sib> } \times 2/3 { s8 <fa sib> <fa sib> } \times 2/3 { s8 <fa sib> <fa sib> }
%%61
% s1
%% \times 2/3 { s8 <fa la> <fa la> } \times 2/3 { s8 <fa la> <fa la> } \times 2/3 { s8 <fa la> <fa la> } \times 2/3 { s8 <fa la> <fa la> }
%%62
% s1
%% \times 2/3 { s8 <fa sib> <fa sib> } \times 2/3 { s8 <fa sib> <fa sib> } \times 2/3 { s8 <fa sib> <fa sib> } \times 2/3 { s8 <fa sib> <fa sib> }
%%63
% s1
%% \times 2/3 { s8 la la } \times 2/3 { s8 la la } \times 2/3 { s8 la la } \times 2/3 { s8 la la }
%%64
% s1
%% \times 2/3 { s8 <sol sib> <sol sib> } \times 2/3 { s8 <sol sib> <sol sib> } \times 2/3 { s8 <sol sib> <sol sib> } \times 2/3 { s8 <sol sib> <sol sib> }
%%65
% s1
%% \times 2/3 { s8 <fa la> <fa la> } \times 2/3 { s8 <fa la> <fa la> } \times 2/3 { s8 <fa la> <fa la> } \times 2/3 { s8 <fa la> <fa la> }
%%66
% s1
%% \times 2/3 { s8 <fa la> <fa la> } \times 2/3 { s8 <fa la> <fa la> } \times 2/3 { s8 <fa la> <fa la> } \times 2/3 { s8 <fa la> <fa la> }
%%67
% s1
%% \times 2/3 { s8 <fa sib> <fa sib> } \times 2/3 { s8 <fa sib> <fa sib> } \times 2/3 { s8 <fa sib> <fa sib> } \times 2/3 { s8 <fa sib> <fa sib> }
%%68
% s1
%% \times 2/3 { s8 <fa la> <fa la> } \times 2/3 { s8 <fa la> <fa la> } \times 2/3 { s8 <fa la> <fa la> } \times 2/3 { s8 <fa la> <fa la> }
%%69
% s1
%% \times 2/3 { s8 <fa sib> <fa sib> } \times 2/3 { s8 <fa sib> <fa sib> } \times 2/3 { s8 <fa sib> <fa sib> } \times 2/3 { s8 <fa sib> <fa sib> }
%%70
% s1
%% \times 2/3 { s8 <sol si> <sol si> } \times 2/3 { s8 <sol si> <sol si> } \times 2/3 { s8 sol sol } \times 2/3 { s8 sol sol }
%%71
% s1
%% \times 2/3 { s8 <fa sib!> <fa sib> } \times 2/3 { s8 <fa sib> <fa sib> }
%% \times 2/3 { s8 <mib fa la> <mib fa la> } \times 2/3 { s8 <mib fa la> <mib fa la> }
% \noletNormal
%  }
% }

 \context Voice = pianoBasBas {
%  \voiceTwo 
\relative do,, {
 \noletSansCrochet
 
%50-55
 \LLstemDown \LLslurDown \noletSansNombre
 \stemNeutral
 \slurNeutral
 \clef "bass_8"
 \times 2/3 { fa8([ la sib] } \times 2/3 { do8[ re mi]) } fa2 ~
 fa1
 r1
 r1
 sib1
 r4 sib\staccato fa4\staccato re\staccato
%56-60
 mib4\staccato r do4\staccato r
 fa4\staccato r fa4\staccato r
 \repeat unfold 5
 {
  \repeat "percent" 4 {<sib, sib'>8 r}
 }
%r1 <sib, sib'>8 r <sib sib'> r <sib sib'> r <sib sib'> r
%r2 <sib sib'>8 r <sib sib'> r <sib sib'> r <sib sib'> r
%r3 <sib sib'>8 r <sib sib'> r <sib sib'> r <sib sib'> r
%61-65
%r4 <sib sib'>8 r <sib sib'> r <sib sib'> r <sib sib'> r
%r5 <sib sib'>8 r <sib sib'> r <sib sib'> r <sib sib'> r
 \repeat "percent" 4 {<do do'>8 r}
% <do do'>8 r <do do'> r <do do'> r <do do'> r
 \repeat "percent" 4 {<do do'>8 r}
% <do do'>8 r <do do'> r <do do'> r <do do'> r
\repeat unfold 2
{
 \repeat "percent" 4 {<fa, fa'>8 r}
% <fa, fa'>8 r <fa fa'> r <fa fa'> r <fa fa'> r
%66-71
% <fa fa'>8 r <fa fa'> r <fa fa'> r <fa fa'> r
}
 \repeat "percent" 4 {<sib sib'>8 r}
% <sib sib'>8 r <sib sib'> r <sib sib'> r <sib sib'> r
 \repeat "percent" 4 {<fa, fa'>8 r}
% <fa fa'>8 r <fa fa'> r <fa fa'> r <fa fa'> r
 \repeat "percent" 4 {<sib sib'>8 r}
% <sib sib'>8 r <sib sib'> r <sib sib'> r <sib sib'> r
 <sol sol'>8 r <sol sol'> r <do do'> r <do do'> r
 fa8 r fa r fa r fa r
 
  }
 }
 >>
}


%--------------------------------------------------------------------- C: 72-148: 1 VOIX
pianoBasNoteC = \relative do {

 \noletSansCrochet \noletSansNombre
%72
 \LLstemDown <sib, sib'>4 r r \clef "bass" \set doubleSlurs = ##t <si' si'>(
%73
 <do do'>2) <la la'>
 \stemNeutral <fad fad'> r4 <si si'>(
 <do do'>2) \set doubleSlurs = ##f <la la'>
 <fad fad'> r4 fad'\(
 sol fad sol sold\)
 la2\( lad
%79
 si!1\) ~
 si4 mi,!-| fad-| fad-|    
 \bar "||"
 \clef "bass_8"  
 \key do \major
 si,1
 mi,1 ~
 mi4 mi-| do-| do-|
%84
 re-. r re-. r
 sol2 re4 si
 sol2 la4 si
 <do do'>8 r <do do'> r <do do'> r <do do'> r
 <do do'>8 r <do do'> r <do do'> r <do do'> r
%89
 <mi mi'>8 r <mi mi'> r la r la r
 <mi mi'>8 r <mi mi'> r la r la r
 <re, re'>8 r <re re'> r sol r sol r
 <re re'>8 r <re re'> r sol r sol r
%93
 <sol, sol'>4 r8 <sol sol'>8 <sol sol'>4 r8 <sol sol'>8
 <sol sol'>4 r8 <sol sol'>8 do4 r8 <sol sol'>8
 <sol sol'>4 r8 <sol sol'>8 <sol sol'>4 r8 <sol sol'>8
 <sol sol'>4 r8 <sol sol'>8 <do do'>4 \clef "bass" r4
%97
 r2 r4 \set doubleSlurs = ##t <dod' dod'>_>(
 <re re'>2) <si si'>
 <sold sold'>2 r4 <dod dod'>4_>(
 <re re'>2)  \set doubleSlurs = ##f <si si'>
 <sold sold'>2 r4 sold'\(
%102
 la4 sold la lad\)
 si2\( sid
 dod1\)~
 dod4 fad,-| sold-| sold-|
 dod,2 r2
%107
 R1
 <la la'>1^\(
 re2\) r2
 <sol, sol'>1
 <la la'>2 <la la'>
%112
 <re, re'>4 r4 r2
 \LLtupletUp \times 2/3 { re'8([ mi fa] } \times 2/3 { sol[ la sib]) } la4-| fa-|
 re4 r4 r2
 \times 2/3 { re8([ mi fa] } \times 2/3 { sol[ la sib]) } la4-| fa-|
 re4 r4 r2
%117
 <mib, mib'>1
 <mib mib'>1
 <mib mib'>1
 <sol sol'>1
%121
 <sold sold'>1
 <la la'>2 <la la'>
 <re, re'>2 r4 \set doubleSlurs = ##t <re're'>_>(
 <mib mib'>2) <do do'>
 <la la'>2 r4 <re re'>_>(
%126
 <mib mib'>2) \set doubleSlurs = ##f <do do'>
 <la la'>2 r2 
 <si'! re>2 <do re>
 <sib re>2 <do, do'>
 <re re'>2 <re re'> 
 \bar "||"
 \key sib \major
 \clef "bass_8"
 \stemNeutral
%131
 \times 2/3 { \repeat tremolo 12 {<sol,, sol'>8} } 
%132
 \LLstemUp \times 2/3 { sol'8([ la sib] } \times 2/3 { do[ re mib]) } re4-| sib-|
%133
 \times 2/3 { \repeat tremolo 12 {<sol, sol'>8} } 
%134
 \LLstemUp \times 2/3 { sol'8([ la sib] } \times 2/3 { do[ re mib]) } re4-| sib-|
%135
 \times 2/3 { \repeat tremolo 12 {<sol, sol'>8} } 
%136
 \LLstemUp \times 2/3 { sol'8([ la sib] } \times 2/3 { do[ re mib]) } re4-| sib-|
%137
 \times 2/3 { \repeat tremolo 12 {<sol, sol'>8} } 
%138
 \LLstemUp \times 2/3 { sol'8([ la sib] } \times 2/3 { do[ re mib]) } re4-| sib-|
%139
 \times 2/3 { \repeat tremolo 12 {<sol, sol'>8} } 
%140
 \times 2/3 { do8([ re mib] } \times 2/3 { fa[ sol lab]) } sol4-| mib-|
%141-142
 <do do'>2 <reb reb'>4-. <re re'>4-.
 <mib mib'>4-. <mi mi'>4-. <fa fa'>4-. <sol sol'>4-.
%143
 \LLstemDown
 \times 2/3 { \repeat tremolo 12 {<lab lab'>8} } 
%144
 \times 2/3 { \repeat tremolo 12 {<lab lab'>8} } 
%145
 \times 2/3 { \repeat tremolo 12 {<lab lab'>8} } 
%146-148
 <do mib lab>2 r2
 \LLstemUp r8 <dod, dod'>4\fermata r8 r4 <re re'>8 r8
 <sol, sol'>4 r4 r2
}

