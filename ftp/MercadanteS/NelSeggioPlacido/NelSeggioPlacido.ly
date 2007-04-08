%{Reduction piano %}
\header {
mutopiatitle = "Nel seggio placido"
mutopiacomposer = "MercadanteS"
mutopiainstrument = "2 Voices, Piano"
date = "1821"
source = "Undocumented collection of italian opera duets, Paris, (middle 19th century bounding)"
style = "Classical"
copyright = "Public Domain"
maintainer = "Laurent Dutriaux"
maintainerEmail = "laurent.dutriaux@wanadoo.fr"
lastupdated = "2007/January/25"

filename = "Andronico.ly"
title="NEL SEGGIO PLACIDO"
subtitle="Notturno"
composer="Saverio MERCADANTE (1795-1870)"
opus= "From Opera Andronico (1821)"

 footer = "Mutopia-2007/01/25-915"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\version "2.11.11"
\include "italiano.ly"
#( set-global-staff-size 16)
global = {
\time 3/4
\key mib\major
}

PartieIrene = \relative sol'{
R2.*8
R2.*1
sib8-. r sib-. r la-. r %10
do8.-> do16 sib4 r8 mib %11
\autoBeamOff
mib->[_( re)] mib->[_( re)] mib->[_( re)] %12
\autoBeamOn
fa4-> mib r %13
sib8-. r sib-. r la-. r %14
do8.-> do16 sib4 r8 sib16.( do32) %15
\autoBeamOff
\times 2/3 {re8_([-> sol fa)]}
\times 2/3 {re[_( sol fa)]}
\times 2/3 {mib[_( fa mib)]} %16
\autoBeamOn
re4 re r %17
R2.*2
\autoBeamOff
sib4 \times 2/3 {re8[_(-> do sib)]} \times 2/3 {re[_(-> do sib)]} %20
sib8. sol'16-> mib4 r %21
sib4 \times 2/3 {re8[_(-> do sib)]} \times 2/3 {re[_(-> do)] sib} %22
sib8. sol'16-> mib4 r %23
sib4 \times 2/3 {re8[_(-> do sib)]} \times 2/3 {re[_(-> do)] sib} %24
\autoBeamOn
mib8. mib16 mib4 r %25
mib4\( re do\) %26
sib4.. do16 re8. mib16 %27
fa2->\( mib4 %28
re2\) r4 %29
mib4\( re do\) %30
sib4.. do16 re8. mib16 %31
fa4..( re16) mib8.-> do16 %32
sib2.\fermata %33
sib8-. r sib-. r la-. r %
do8.-> do16 sib4 r8 mib %35
\autoBeamOff
mib->[_( re)] mib->[_( re)] mib->[_( re)]
\autoBeamOn
fa4 mib r
sib8-. r sib-. r la-. r
do8.-> do16 sib4 r8 mib %39
re16( mib fa sol) fa( re sol fa) mib( do fa mib) %40
re8.( fa32 mib) re4 r %41
R2.*2
\autoBeamOff
sib4 \times 2/3 {re8[_(-> do sib)]} \times 2/3 {re_(->[ do sib)]} %44=20
sib8. sol'16-> mib4 r
sib4 \times 2/3 {re8[_(-> do sib)]} \times 2/3 {re_(->[ do)] sib}
sib8. sol'16-> mib4 r
sib4 \times 2/3 {re8[_(-> do sib)]} \times 2/3 {re[_(-> do)] sib}
\autoBeamOn
fa'8. mib16 mib4 r %49=25
mib4\( re reb\) %50
\autoBeamOff
\times 2/3 {do8[( si do)]}
\times 2/3 {mib[( si do)]}
\times 2/3 {mib[( re do)]} %51
\times 2/3 {sib-.[( sol' fa]}
\times 2/3 {mib[ re do]}
\times 2/3 {sib[ la lab)]} %52
sol2 fa4
mib \times 2/3 {r8 re'[_( mib)]}
\times 2/3 {sol->[_( mib)] do}
do8. sib16 sib4 r %55
r r \times 2/3 {sol8[_( sib mib)]} %56
sol2-> fa4 %57
mib \times 2/3 {r8 sib[_( mib)]}
\times 2/3 {sol_[_( mib)] do} %58
do8. sib16 sib4 r %59
r r \times 2/3 {sol8[_( sib mib)]} %60
\autoBeamOn
sol2\fermata fa4 %61
mib2 r4\fermata %62
}

PartieAndronico = \relative sol'{
R2.*8
R2.*1
sol8-. r sol-. r fad-. r %10
lab8.-> lab16 sol4 r8 sol %11
\autoBeamOff
\times 2/3 {lab[_( fa sib)]}
\times 2/3 {lab[_( fa sib)]}
\times 2/3 {lab[_( fa sib)]} %12
\autoBeamOn
lab4-> sol r %13
sol8-. r sol-. r fad-. r %14
lab8.-> lab16 sol4 r8 sol %15
\autoBeamOff
\times 2/3 {sib[_(-> mib re)]}
\times 2/3 {sib[_( mib re)]}
\times 2/3 {do[_( re do)]} %16
\autoBeamOn
sib4 sib r %17
R2.*3
\autoBeamOff
sol4 \times 2/3 {sib8_(->[ lab sol)]} \times 2/3 {sib_(->[ lab sol)]} %21
lab8. fa16 re4 r %22
sol4 \times 2/3 {sib8_(->[ lab sol)]} \times 2/3 {sib_(->[ lab)] sol} %23
\autoBeamOn
lab8. fa16 re4 r8 lab' %24
sol8. sol16 sol4 r
sol4\( fa mib\) %26
re4.. fa16 sib8. do16 %27
re2\( do4 %28
sib2\) r4 %29
sol4\( fa mib\) %30
re4.. fa16 sib8. do16 %31
re4..( sib16) do8.-> fa,16 %32
re2.\fermata %33
sol8-. r sol-. r fad-. r
lab8.-> lab16 sol4 r8 sol %35
\autoBeamOff
\times 2/3 {lab[( fa sib)]}
\times 2/3 {lab[( fa sib)]}
\times 2/3 {lab[( fa sib)]}
\autoBeamOn
lab4-> sol r
sol8-. r sol-. r fad-. r
lab8. lab16 sol4 r8 sol %39
sib16( do re mib) re( sib mib re) do( la re do)% 40
sib8.( re32 do) sib4 r %41
r2.*3
\autoBeamOff
sol4 \times 2/3 {sib8[_(-> lab sol)]} \times 2/3 {sib[_(-> lab sol)]} %45=21
lab8. fa16 re4 r
sol4 \times 2/3 {sib8[_(-> lab sol)]} \times 2/3 {sib[_(-> lab)] sol}
lab8. fa16 re4 r8 lab'
lab8. sol16 sol4 r %49=25
mib\( fa sol\) %50
\times 2/3 {lab8[( sol lab)]}
\times 2/3 {do[( sol lab)]}
\times 2/3 {do[( sib lab)]} %51
\times 2/3 {sol[( mib' re]}
\times 2/3 {do[ sib lab]}
\times 2/3 {sol[ fad fa)]} %52
mib2 sib4% %53
sol r r %54
r \times 2/3 {r8 fa'[_( sol)]}
\times 2/3 {lab[_( fa)] sib-.} %55
lab8. sol16 sol4
\times 2/3 {mib8[_( sol sib)]} %56
mib2-> sib4 %57
sol r r %58
r \times 2/3 {r8 fa[_( sol)]}
\times 2/3 {lab[_( fa)] sib-.} %59
lab8. sol16 sol4
\times 2/3 {mib8[_( sol sib)]} %60
mib2\fermata sib4 %61
sol2 r4 %62
\autoBeamOn
}

TexteIrene= \lyricmode {
Nel seg- gio pla- ci do
dell' om- bre a- man- ti
a- vran pur ter- mi- ne
an- go- sce e pian- ti
e le nos- tr'a- ni- me
ra- pi- te in es- ta- si
ra- pi- te in es- ta- si
lie- te gio- i- sca- no d'un pu- ro_ar- dor
lie- te gio- i- sca- no d'un pu- ro ar- dor
Nel seg- gio pla- ci do
dell' om- bre a- man- ti
a- vran pur ter- mi- ne
an- go- scie e pian- ti
e le nos- tr'a- ni- me
ra- pi- te in es- ta- si
ra- pi- te in es- ta- si
lie- te gio- i- sca- no d'un pu- ro_ar- dor
lie- te gio- i- sca- no d'un pu- ro_ar- dor
lie- te gio- i- sca- no d'un pu- ro_ar- dor
}
TexteAndronico = \lyricmode {
Nel seg- gio pla- ci do
dell' om- bre a- man- ti
a- vran pur ter- mi- ne
an- go sce e pian- ti
e le nos- tr'a- ni- me
ra- pi- te in es- ta- si
in es- ta- si
lie- te gio- i- sca- no d'un pu- ro_ar- dor
lie- te gio- i- sca- no d'un pu- ro ar- dor
Nel seg- gio pla- ci do
dell' om- bre a- man- ti
a- vran pur ter- mi- ne
an- go- scie e pian- ti
e le nos- tr'a- ni- me
ra- pi- te in es- ta- si
in es- ta- si
lie- te gio- i- sca- no d'un pu- ro_ar- dor
lie- te gio- i- sca- no d'un pu- ro_ar- dor
lie- te gio- i- sca- no d'un pu- ro_ar- dor
}

PianoHaut = \relative sol'{
R2.*1^" Andantino mosso"
<sib sol' sib>8\p-. r <sib sol' sib>-. r <la fad' la>-. r %2
<do lab' do>4( <sib sol'sib>) r8 <sib sib'>8 %3
\autoBeamOff
\times 2/3 {<re re'>[ <sib sib'> <fa' fa'>]}
\times 2/3 {<re re'>[ <sib sib'> <fa' fa'>]}
\times 2/3 {<re re'>[ <sib sib'> <fa' fa'>]} %4
\times 2/3 {<mib mib'>[ <sol sol'> <fa fa'>]}
\times 2/3 {<mib mib'>[ <re re'> <do do'>]}
<sib sib'>8 r %5
\times 2/3 {<sol' sib>-.[ <sol sib>-. <sol sib>-.]}
\times 2/3 {<sol sib>-.[ <fa lab>-. <mib sol>-.]}
\times 2/3 {<re fa>-.[ <do mib>-. <sib re>-.]} %6
\times 2/3 {<lab do>-.[ <lab do>-. <lab do>-.]}
\times 2/3 {<lab do>-.[ <sib re>-. <do mib>-.]}
\times 2/3 {<re fa>-.[ <mib sol>-. <fa lab>-.]} %7
\times 2/3 {<sol sib>[( <fa lab>) <mib sol>-.]}
\times 2/3 {<sol sib>[( <fa lab>) <mib sol>-.]}
\times 2/3 {<fa lab>[( <mib sol>) <re fa>-.]} %8
mib8 sib,[( mib sol mib sib)] %9
\autoBeamOn
<sol' sib> sib, <sol' sib> sib, <fad' la> la, %10
<sol' sib> sib, <sol' sib> sib, <sol' sib> sib, %11
<fa' lab> sib, <fa' lab> sib, <fa' lab> sib, %12
<mib sol> sib <mib sol> sib <mib sol> sib %13
<sol' sib> sib, <sol' sib> sib, <fad' la> la, %14
<sol' sib> sib, <sol' sib> sib, <sol' sib> sib, %15
<re fa sib> r <re fa sib> r <do mib fa la> r %16
<re fa sib>4 <re fa sib> \times 2/3 {sib'8-. re-. fa-.} %17
\autoBeamOff
\times 2/3 {<fa lab>-.[ <mib sol>-. <re fa>-.]}
\times 2/3 {<do mib>-.[ <sib re>-. <lab do>-.]}
\times 2/3 {<sol sib>-.[ <fad la>-. <fa lab>-.]} %18
\times 2/3 {<mib sol>-.[ <sol sib>-. <lab do>-.]}
\times 2/3 {<sib re>-.[ <do mib>-. <re fa>-.]}
\autoBeamOn
<mib sol>4-> %19
r8 <sib, re fa lab> r8 <sib re fa lab> r8 <sib re fa lab> %20
r8 <sib re sol> r8 <sib re sol> r8 <sib re sol> %21
r8 <sib re fa lab> r8 <sib re fa lab> r8 <sib re fa lab> %22
r8 <sib re sol> r8 <sib re sol> r8 <sib re sol> %23
r8 <sib re fa lab> r8 <sib re fa lab> r8 <sib re fa lab> %24
<sib re sol>4 <sib re sol> sib'8.\trill( la32 sib) %25
<sol mib'>4\( <fa re'> <mib do'>\) %26
<re sib'> r r %27
<fa re' fa>2( <mib do' mib>4) %28
<re sib' re>2 sib'8.\trill( la32 sib) %29
<sol mib'>4\( <fa re'> <mib do'>\) %30
<re sib'> r r %31
<fa sib re> r <mib fa la do> %32
<re fa sib>2.\fermata %33
<sol sib>8 sib, <sol' sib> sib, <fad' la> la,
<sol' sib> sib, <sol' sib> sib, <sol' sib> sib, %35
<fa' lab> sib, <fa' lab> sib, <fa' lab> sib,
<mib sol> sib <mib sol> sib <mib sol> sib
<sol' sib> sib, <sol' sib> sib, <fad' la> la,
<sol' sib> sib, <sol' sib> sib, <sol' sib> sib, %39
<re fa sib> r <re fa sib> r <do fa la> r
<re fa sib>4 <re fa sib>
\times 2/3 {sib'8-. re-. fa-.}%41
\autoBeamOff
\times 2/3 {<fa lab>-.[ <mib sol>-. <re fa>-.]}
\times 2/3 {<do mib>-.[ <sib re>-. <lab do>-.]}
\times 2/3 {<sol sib>-.[ <fad la>-. <fa lab>-.]}%42
\times 2/3 {<mib sol>-.[ <sol sib>-. <lab do>-.]}
\times 2/3 {<sib re>-.[ <do mib>-. <re fa>-.]}
\autoBeamOn
<mib sol>4-> %43
r8 <sib, fa' lab> r8 <sib fa' lab> r8 <sib fa' lab> %44
r8 <sib mib sol> r8 <sib mib sol> r8 <sib mib sol> %45
r8 <sib fa' lab> r8 <sib fa' lab> r8 <sib fa' lab> %46
r8 <sib mib sol> r8 <sib mib sol> r8 <sib mib sol> %47
r8 <sib fa' lab> r8 <sib fa' lab> r8 <sib fa' lab> %48
<sib sol'>4
\acciaccatura lab'8 sol fad16 sol
\acciaccatura do8 sib la16 sib %49
<re, sol sib mib>4 r r %50
<do lab'> r r %51
<mib sib'>4 r <do lab'> %52
<sib mib sol> r <sib fa' lab> %53
<sib mib sol> r r %54
<fa'sib> r r %55
<sol sib> r r %56
<sol sib mib sol> r <lab sib re fa> %57
<sol sib mib> r r %58
<fa sib> r r %59
<sol sib> r r %60
<sol sib mib sol> r\fermata <lab sib re fa> %61
<sol sib mib>2 r4\fermata
}
PianoBas = \relative do {
<<{mib8 sol sib mib sib sol} \\ {mib2.\p}>> %1
<<{mib8 sol sib mib do la} \\ {mib2.}>> %2
<<{mib8 sol sib mib sib sol} \\ {mib2.}>> %3
<sib fa' lab>8 r <sib fa' lab> r <sib fa' lab> r %4
<mib sol>4 r r %5
<sol sib>8 r <sol sib> r <sol sib> r %6
<lab do>8 r <lab do> r <lab do> r %7
<sib, mib sol> r <sib mib sol> r <sib fa' lab> r %8
<mib sol> r r4 r %9
<mib, mib'> r r %10
<mib mib'> r r %11
<sib sib'> r r %12
<mib mib'> r r %13
<mib mib'> r r %14
<mib mib'> r r %15
fa'8 r fa r fa r %16
sib,4 sib' r %17
<sib, re fa>4 r r %18
<mib sol> r r %19
sib8 r sib r sib r %20
mib r mib r mib r %21
sib8 r sib r sib r %22
mib r mib r mib r %23
sib8 r sib r sib r %24
mib4 mib r %25
do4( re mib) %26
fa r r %27
fa2( fad4) %28
sol2 r4 %29
do,4( re mib) %30
fa r r %31
fa r fa %32
sib,2.\fermata
<mib, mib'>4 r r
<mib mib'> r r %35
<sib sib'> r r
<mib mib'> r r
<mib mib'> r r
<mib mib'> r r %39
fa'8 r fa r fa r
sib,4 sib' r
<sib,, sib'>8 r <sib sib'> r <sib sib'> r
<mib mib'>4 r r %43
sib'8 r8 re r sib r
mib r sol r mib r
sib r re r sib r
mib r sol r mib r
sib r re r sib r
mib4 sib sol %49
mib r r %50
lab r r
sol r lab
sib r sib
mib r r
re r r %55
mib r r
sib' r sib,
mib r r
re r r
mib r r %60
sib' r\fermata sib,
mib2 r4\fermata
}

\paper{#(set-paper-size "a4")}

\score {
<<
\new Staff = Irene
<<
\set Staff.instrumentName = "Irene "
\set Staff.shortInstrumentName = "I "
\new Voice = Irene {
\voiceOne
<<\global \PartieIrene >>}
\lyricsto "Irene" \new Lyrics \TexteIrene
>>
\new Staff = Andronico
<<\set Staff.instrumentName = "Andronico "
\set Staff.shortInstrumentName = "A "
\new Voice = Andronico {\voiceOne << \global \PartieAndronico >>}
\lyricsto "Andronico" \new Lyrics \TexteAndronico
>>
{
\new PianoStaff
<<
\set PianoStaff.instrumentName = "Piano "
\set PianoStaff.shortInstrumentName = "P "
\new Staff = PianoHaut
<<
\global \PianoHaut
>>
\new Staff
<<
\clef bass
\global \PianoBas
>>
>>

}
>>
\layout {
%\context { \RemoveEmptyStaffContext}
%\context { \Score \override VerticalAxisGroup #'remove-first = ##t}
% line-width = 170
%interscoreline = 16
}
\midi {
\context {
\Score
tempoWholesPerMinute = #(ly:make-moment 100 4)
}
}
}
