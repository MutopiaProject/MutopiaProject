\language "italiano"
\version "2.19.34"

\header {
  title = "Romance et Rondò"
  subtitle = \markup \center-column {
    "ContraBasso Principale"
    "Due Violini, Viola"
    "Basso ripieno"
    "Flauti, Corni"
  }
  subsubtitle = \markup \column {" " " " " "}
  composer = "Franz Joseph Keyper (1756—1815)"
  %%
  mutopiatitle = "Romance and Rondo"
  mutopiacomposer = "KeyperFJ"
  mutopiainstrument = "Double Bass, Chamber Orchestra"
  source = "Manuscript, late 18th Century"
  %% see http://imslp.org/wiki/Romance_and_Rond%C3%B2_for_Doublebass_and_Orchestra_%28Keyper,_Franz_Joseph%29
  style = "Classical"
  license = "Public Domain"
  maintainer = "Valentin Villenave"
  maintainerEmail = "valentin@villenave.net"
  maintainerWeb = "http://valentin.villenave.net"
  moreInfo = "In addition to the original full score, an original piano transcription is provided."

 footer = "Mutopia-2015/12/24-2089"
 copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {\char ##x01C0 \char ##x01C0 }}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " "by " \maintainer " " \char ##x2014 " " \footer}\concat {\concat {\abs-fontsize #8 { "Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain " "by the typesetter " \char ##x2014 " free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white \char ##x01C0 }}}
 tagline = ##f
}

\pointAndClickOff

#(define modern-accidentals-style
  `(Staff ,(make-accidental-rule 'same-octave 0)
          ,(make-accidental-rule 'any-octave 0)
          ,(make-accidental-rule 'same-octave 1)
          context))

#(define modern-cautionaries-style
  `(Staff ,(make-accidental-rule 'same-octave 1)
          ,(make-accidental-rule 'any-octave 1)))

\paper {
  scoreTitleMarkup = \markup {
    \column {
      \on-the-fly #print-all-headers { \bookTitleMarkup \hspace #1 }
      \fill-line {
        \huge \bold % default was regular size and weight
        \fromproperty #'header:piece
      }
    }
  }
}
\layout {
  \context {
    \Score
    skipBars = ##t
    autoAccidentals = #modern-accidentals-style
    autoCautionaries = #modern-cautionaries-style
  }
}

Iglobal = {
  \time 3/4
  \key mi \minor
  \tempo "Adagio"
}

IIglobal = {
  \time 2/4
  \key sol \major
  \tempo "Allegretto"
}

solo = ^\markup \italic "solo"
tutti = ^\markup \italic "tutti"
dolce = ^\markup \italic "dolce"
psub = _\markup {\dynamic p \italic sub.}
ten = ^\markup \italic "ten."

CpIexp = \relative do' {
  mi,8. mi16 sol8. sol16 si8. si16 mi4-. si-. r
  mi,2:8\dolce si8 si mi4 r r
  mi2:8 si8 si mi4 mi, r
  si''4.\solo do8 si4 mi, fad sol
  la8. si32( do) si8 la sol fad la16( sol fad mi) mi4 r
  do'8.\prall re16 mi8 do si lad si8.\prall lad16 si8 fad-. red-. si-.
  si'8.\prall do16 re8 si la sold la8.\prall sold16 la8 mi-. do-. la-.
  la'32( si do8.) si8 la sol fad
  sol16 mi fad sol la si dod red mi8 r
  re16 do si la sol4 fad mi8 si mi4 r
  R2. mi4\tutti\f si mi la si si, mi r8 sol( fad mi)
  <la, la'>4 r r
  si si'8-. fad-. red-. si-. <si si'>4 r r
  la la'8-. mi-. do-. la-. la'4 r si, mi r mi la si si,
}

CpI = \relative do' {
  \Iglobal
  \clef bass
  <>\tutti\f
  \CpIexp
  mi,4 r8 mi-. re16 do si la
  \grace <sol' si re>4\arpeggio sol'2\solo re8. do16 si8. do16 re4 r
  la8-. do( si) mi( re) fad,-. sol la16 si do re mi fad sol8 r
  la,8-. do( si) mi( re) fad,-. sol fad16 sol re sol si, re sol,8 r
  mi''4 do16. re32 mi16. fad32 sol8 mi re8. si16 sol4 r
  do8. la16 fad8 mi' re do si8. do16 re4 r
  mi do16 re mi fad sol8 mi re4 sol,16 la si do re mi fad sol
  fad mi re do si8. si16 la8. la16 sol4 r8 sold sold sold
  la8.\prall si16 do8 fad, fad fad
  sol!8. la16 si8. re16 re mi fad sol
  fad mi re do si8. si16 la8. la16 sol4 r8 sold sold sold
  la8. si16 do8 fad, fad fad
  sol!8. la16 si8. re16 re mi fad sol
  fad mi re do si8. si16 la8. la16 si8 do16 re mi fad sol la si8 sol
  fad16 mi re do si8. si16 la8. la16 sol8
  r16 sol32\tutti\f la si8 la sol fad
  \CpIexp
  mi4 mi, r mi' mi, r mi'8 r mi4 r
  \bar "|."
}

CpIIexp = \relative do' {
  \clef treble
  sol''8\solo sol la4-> si8 si do4->
  si8 si do si la re re,4
  sol8 sol la4-> si8 si do4->
  si8 si do la sol sol' sol,4
  \clef bass
  sol,,,16\tutti\f sol' si sol fad mi fad re
  sol la si sol re' la fad re
  sol sol, si' sol la re, sol sol, re'4:16 re8 r
  sol,16 sol' si sol fad mi fad re
  sol la si sol re' la fad re
  sol fad mi re do la re re,
}

CpIIdev = \relative do' {
  \clef treble
  sol''8\solo sol  si4 sol8 si re4
  fad,8 fad la4 fad8 la re4
  sol,8 mi4 sol8 fad la4 re8
  sol, mi4 sol8 fad la4 re8
  si si4 sol8 mi mi4 re8
  dod la16 la la8 la la4 r
  \clef bass
  \repeat unfold 2 {
    la,,16-. la'( sold la) la,-. dod'( si dod)
    la,-. mi''( red mi) la,,-. sol''( fad sol)
    re, re' dod si la sol fad mi
    re re' dod si la sol fad re
  }
}

CpIIminA = \relative do' {
  sol16\solo fad sol la sib la sib sol
  la sol la sib do sib do la
  sib la sib do re do re sib
  do sib do re mib re mib do
  re-. re( mib re) do-. do( re do)
  sib-. sib( do sib) la-. la( sib la)
  sib8 mib16 re do sib la sol fad4 r
  sol16 fad sol la sib la sib sol
  la sol la sib do sib do la
  sib la sib do re do re sib
  do sib do re mib re mib do
  re-. re( mib re) do-. do( re do)
  sib-. sib( do sib) la-. la( sib la)
  sol la sol fad sol la sib dod
}

CpIIminB = \relative do' {
  \clef bass
  mi,4\solo sol do4. si8 la-. fad-. si-. la-.
  sol mi mi'4->~ mi red mi sol fad2
  mi8 do4-> si8 la fad si la sol mi mi'16 re do si
  do la si do re do si la si sol la si do si la sol
  la fad sol la si la sol fad sol fad mi red
  }

CpII = \relative do' {
  \IIglobal
  \clef bass <>
  \CpIIexp
  sol, si re sol sol,4
  \CpIIdev
  sol'16 fad sol la si la si dod
  re dod re mi fad mi fad re
  sol8 sol la la \clef treble
  re4. fad16( la) re,4. fad16( la)
  re,8-. fad16( la) re,8-. fad16( la)
  re,4( re'8)-. r
  \CpIIexp
  sol,,,,16 si re sol sol,4
  \key sol \minor
  \tempo "Minore"
  \CpIIminA
  re''8 dod-. re4~ re8 dod-. re4~
  re8 dod-. re-. dod-. re-. re-. re-. r
  sib16 la sib do re do re do sib8 fa' fa4
  mib16 re mib re do sib do sib la sib do sib la sol fa la
  sib la sib do re do re do sib8 fa' fa4
  mib16 re mib re do sib do sib la sib do sib la sol fa mib
  re8 fa' fa4 mib,8 sol' sol4
  fa,16 sol la sib do re mib mib fa mib re mib re4
  re,8 fa' fa4 mib,8 sol' sol4
  \tuplet 3/2 4 {do,8 re mib fa, sol la} sib4 r
  sib\tutti r sib sib sib sib8 la
  \CpIIminA
  re8 dod-. re4~ re8 dod-. re4~
  re16 re mi fad \clef treble sol la si dod
  re8 re mi fad
  \key sol \major
  \tempo "Majore"
  \CpIIexp
  sol,,,16 si re sol sol,4
  \CpIIminB
  mi'16 fad sol la
  si8 lad-. si4~ si8 lad-. si4~
  si8 lad-. si-. lad-. si-. si-. si-. r
  sol16 la si la sol8 si sol re' sol, sol' <re fad>4 r R2
  sol,16 la si la sol8 si sol re' sol, sol' <re fad>4 r R2
  \clef treble
  sol'16( si) re-. re-. re4:16
  fad,16( la) re-. re-. re4:16
  sol,16( si) re-. re-. re4:16
  fad,16( la) re-. re-. re4:16
  sol,16 si re re fad,16 la re re
  sol,16 si re re fad,16 la re re
  si re sol sol sol4:16
  \ottava #1 sol16 si si si si4:16 si8
  \ottava #0
  \clef bass si,,,,-. do-. dod-. re-.
  \clef treble re''' si sol
  la2\trill sol4 r
  \CpIIminB
  mi,,16 re do si
  do la si do re8 re'
  <re, re'>16*2/3[\fermata \teeny mi32*2/3 fad]
  sol[ la si do] re16*2/3[ mi32*2/3 fad]
  \clef treble sol[ la si do] \normalsize re4*2/3\fermata
  \clef bass
  sol,,16\tutti\f fad mi red mi re do si
  do la si do re8 re,
  \CpIIexp
  sol16 sol' sol sol sol4:16
  sol2: sol: sol8 r sol r sol2:8
  sol,8 sol' re si sol4 sol' sol, r
  \bar "|."
}

ViIexp = \relative do' {
  mi8.\tutti\f mi16 sol8. sol16 si8. si16 mi4-. si-. r
  mi4.\dolce sol8 sol16( fad) mi red mi8-. fad-. sol-. la-. si r
  mi,4. sol8 sol16( fad) mi red mi8.( si16) si4 r
  R2.
  mi,4\solo\p red mi fad8. sol32( la) sol8 fad mi red
  mi si mi sol( fad mi) la2:8 sol8 sol fad2.:8 fad2: fa8 fa
  mi2.:8 la4 sol8 fad mi red mi4 r r
  si'16( la sol fad) mi8 mi red red mi4 mi r
  si'4.\tutti\f do8 si4 mi, fad sol
  la8. si32( do) si8 la sol fad la16( sol fad mi) mi4 r
  do'8.\prall re16 mi8 do-. si-. lad-. si8.\prall lad16 si4 r
  si8.\prall do16 re8 si la sold la8.\prall sold16 la4 r
  la32( si do8.) si8 la sol fad
  sol16 mi fad sol la si dod red mi( red) mi( red)
  mi( do si la) sol4 fad\prall
}

ViI = \relative do' {
  \Iglobal
  \ViIexp
  mi4 r8 mi-. re16 do si la
  sol8\solo si'\p si2:8 si2.:
  fad8-. la( sol) do( si) la-. sol4 r r
  fad8 r sol r fad r sol4 re sol sol2.:8 si: la:
  sol8. la16 si2:8 sol2.: si2.: la4 sol fad
  \repeat volta 2 {
    sol r8 mi mi mi mi8.( re16) do8 re re re
    re8.( do16) si8 r si'16( do) la( si)
    re( do) si la sol4 fad
  } sol8 la16 si do re mi fad sol8 si,
  re16 do si la sol8. sol16 fad8. fad16 sol4 r r
  \ViIexp
  mi4 r8 do'( si) red,
  mi4 r8 do'( si) red,
  mi r mi4 r
  \bar "|."
}

ViIIexpA = \relative do' {
  si'8\p si re4-> sol8 sol la4-> sol8 sol\prall la sol fad fad fad4
  si,8 si re4-> sol8 sol la4-> sol8 sol\prall la <do, fad> <si sol'> q q4
  sol'8\tutti\f sol la4-> si8 si do4-> si8 si\prall do si la dod32( re16.) re,4
  sol8 sol la4-> si8 si do4-> si8 si\prall do la sol fad32( sol16.) sol,,4
}

ViIIexpB = \relative do' {
  si'8\p si re4-> sol8 sol la4-> sol8 sol\prall la sol fad fad fad4
  si,8 si re4-> sol8 sol la4-> sol8 sol\prall la do, <re, si'> q q4
  sol'8\tutti\f sol la4-> si8 si do4-> si8 si\prall do si la dod32( re16.) re,4
  sol8 sol la4-> si8 si do4-> si8 si\prall do la
}

ViIImin = \relative do' {
  la'8-.\mf la-. sol-. fad2
  mi8 do'4-> si8 la-. fad-. si-. la-.
  sol-. mi-. mi'4->~ mi red-. mi-. sol-. fad2
  mi4 si8( si') la4 la,8( la')
  sol4 sol,8( sol') fad4 fad,8( fad')
}

ViII = \relative do' {
  \IIglobal
  \ViIIexpA
  re2:8\solo\p re: re: re:
  mi8 dod4 mi8 re fad4 fad8
  mi dod4 mi8 re fad4 fad8
  si,8 si4 si8 si si4 si8
  mi mi16 mi mi8 mi mi la,\f dod mi
  <sol la>2~\mf q <re la' fad'>4 r q r
  <sol la>2~ q <re la' fad'>4 r q r
  r si'\p la2 sol8 sol la la
  <fad la>2~ q~ q~ q4 r
  \ViIIexpB
  sol'8 fad32( sol16.) sol,,4
  \tempo "Minore"
  \key sol \minor
  r4 sib'->(\psub la) la
  r sib->( do) do
  re-. la-. sol-. mib-.
  re mi8 mi re4 r
  r sib'( la) la
  r sib( do) do
  re la sol fad sol2
  << la2 \\ {fad4. mi8->-.} >>
  << la2 \\ {fad4. mi8->-.} >>
  << la2 \\ {fad8 mi fad mi} >>
  <fad la>8 q q r
  <re sib'>2:8 q:
  do'16 sib do sib la sol la sol
  fa sol la sol fa mib re do
  <re sib'>2:8 q:
  do'16 sib do sib la sol la sol
  fa sol la sol fa mib re do
  re( fa sib fa) sib( fa sib fa)
  mib( sol sib sol) sib( sol sib sol)
  fa8 fa16 sol la sib do do
  re( do sib do) sib4
  re,16( fa sib fa) sib( fa sib fa)
  mib( sol sib sol) sib( sol sib sol)
  mib4 mib
  sib'4.\mf re16( fa) sib,4. \tuplet 3/2 {fa16 sol fa}
  sib8 \tuplet 3/2 {fa16 sol fa} sib8 \tuplet 3/2 {fa16 sol fa}
  sib8 r sib-. la-. sol-.\p r sib4( la) la r sib do do re la
  sol mib re mib8 mi re4 r r sib'( la) la r sib( do) do
  re la sol fad sol2
  << la2 \\ {fad4. mi8->-.} >>
  << la2 \\ {fad4. mi8->-.} >>
  <fad la>4 r
  r8 re'(-. dod-. do-.)
  \key sol \major
  \tempo "Majore"
  \ViIIexpB
  sol'8 fad32( sol16.) sol,,4
  R2
  r8\solo
  \ViIImin
  mi''4 sol fad4. sol8-. fad4. sol8-. fad-. sol-. fad-. sol-.
  fad fad fad r
  sol,2~\p sol
  la'16(\f fad) fad-. fad-. fad( re) re-. re-.
  re( do) do-. do-. do( la) la-. la-.
  sol2~\p sol
  la'16(\f fad) fad-. fad-. fad( re) re-. re-.
  re( do) do-. do-. do( la) la-. la-.
  sol8\pp sol si16( sol) si( sol) fad8 fad la16( fad) la( fad)
  sol8 sol si16( sol) si( sol) fad8 fad la16( fad) la( fad)
  si( sol) si( sol) la( fad) la( fad)
  si( sol) si( sol) la( fad) la( fad)
  sol( si) si-. si-. si4:16-.
  si16( sol') sol-. sol-. sol4:16-.
  sol8 si,,(-. do-. dod-.)
  re16( si') sol'( si,) sol'( si,) sol'( si,)
  re,( la') fad'( la,) fad'( la,) fad'( la,)
  <si sol'>4 si16\f la sol fad mi4\p r
  r8
  \ViIImin
  sol'16\mf fad mi red mi re do si do la si do re8 <la fad'> q4 r4\fermata
  sol'16\tutti\f fad mi red mi re do si do la si do re8 <la fad'>
  \grace s1\solo
  \ViIIexpB
  sol'16\ff sol, sol sol sol4:16
  sol16 si si si si4:16 si16 re re re re4:16
  sol8-. \tuplet 3/2 {re16 mi re} sol8-. \tuplet 3/2 {re16 mi re}
  sol si sol si sol si sol si
  <si, sol'>8 q q q <re, si' sol'>4 q q r
  \bar "|."
}

ViiIexp = \relative do' {
  mi8.\f mi16 sol8. sol16 si8. si16 mi4-. si-. r
  sol4.\dolce si8 si16( la) sol fad sol8 red'-. mi-. fad-. sol r
  sol,4. si8 si16( la) sol fad sol8 r sol4 r
  R2.*3
  mi8\p si sol si( la sol) mi'2.:8 red: re: do:
  mi8 mi si2:8 <si mi>4 r r
  mi2:8 si8 si mi si <sol mi'>4 r
  R2.
  mi'4\f red mi fad8. sol32( la) sol8 fad mi red
  fad16( mi red mi) mi4 r
  la2:8 sol8 sol fad2.:8 fad2: fa8 fa mi2.:8
  la4 sol8 fad mi red mi4 r sol16( fad sol fad)
  sol( la sol fad) mi4 red
}

ViiI = \relative do' {
  \Iglobal
  \ViiIexp
  <sol mi'>4 r8 mi'-. \f re16( do si la)
  sol8 re'\p re2:8 re2.: r4 r sol8 re si4 r r
  do8 r si r la r sol4 re' sol
  mi2.:8 re: fad: re: mi: re:
  r4 re do si r8 si si si do4 r8 la la la sol4 r r
  r re' do si r8 si si si do4 r8 la la la sol4 r r
  r re' do <sol re'> r r r re' do <si re> r r
  \ViiIexp
  <sol mi'>4 r8 la'( sol) si, si4 r8 la'( sol) si,
  si8 r si4 r
  \bar "|."
}

ViiIIexp = \relative do' {
  sol16\solo\p sol' si sol fad mi fad re
  sol la si sol fad mi fad re
  sol, si re sol fad re sol sol,
  re' mi fad sol la si do la
  sol sol, si' sol fad mi fad re
  sol la si sol fad mi fad re
  sol fad mi re do la re re
  sol sol, si re sol re si re
  <re si'>8\tutti\f q re'4-> sol8 sol la4-> sol8 sol\prall la sol
  fad16 sol fad mi re do si la
  <re, si'>8 q re'4-> sol8 sol la4-> sol8 sol\prall la <do, fad>
}

ViiIImin = \relative do' {
  r8 la'-.\solo\mf la-. sol-. fad2\ten
  mi8 do'4-> si8 la-. fad-. si-. la-. sol-. mi-. mi'4->~
  mi red mi8 sol, sol'4->~ sol fad~ fad mi~ mi red
}

ViiII = \relative do' {
  \IIglobal
  \ViiIIexp
  <si' sol'>8 <si, sol'> q4
  si2:8\solo\p si: la: la: la: la: la: la: sol:
  sol8 sol sold sold la dod16 dod dod8 dod dod8 la\f dod mi
  <dod mi>2~\p q <re la'>4 r q r
  <dod mi>2~ q <re la'>4 r q r
  r sol~ sol fad sol8 sol la la re,4 r
  R2*3
  \ViiIIexp
  <si' sol'>8 <si, sol'> q4
  \key  sol \minor
  \tempo "Minore"
  r4 sol'~\psub
  sol fad r sib~ sib la sib fad sol do, sib do8 dod re
  re16\f mib re do sib la sol4 sol'~\p
  sol fad r sib~ sib la sib fad sol re mib2
  fad4. sol8-> fad4. sol8-> fad sol fad sol <fad la> q q r
  fa2:8 fa: fa: fa: fa: fa: fa: fa:
  sib,8 re16( sib) re( sib) re( sib)
  mib8 sol16( mib) sol( mib) sol( mib)
  do4 <fa la>8 la sib16( fa re fa) re fa re fa
  sib,8 re16( sib) re( sib) re( sib)
  mib8 sol16( mib) sol( mib) sol( mib)
  do4 do <re sib'>2\mf q q4 q q sib'8-. la-.
  sol8 r sol4~
  sol fad r sib~ sib la sib fad sol do, sib do8 dod re
  re16\f mib re do sib la sol4 sol'~\psub
  sol fad r sib~ sib la sib fad sol re mib2
  fad4. sol8-> fad4. sol8-> fad4 r r8 fad(-. sol-. la-.)
  \key sol \major
  \tempo "Majore"
  \ViiIIexp
  <si sol'>8 <si, sol'> q4
  R2*3
  \ViiIImin
  si'4 mi red4. mi8 red4. mi8 red-. mi-. red-. mi-. red red red r
  <si, re>2~\p q <la fad'>2~\f q
  <si re>2~\p q <la fad'>2~\f q <si sol'>4 r
  R2*7
  r8 si-. do-. dod-. <re si'>2:16
  \repeat tremolo 4 {re16 fad} sol4 si16\f la sol fad mi4\p r
  R2*2
  \ViiIImin
  sol16\mf fad mi red mi re do si
  do la si do re8 <re do'> q4 r4\fermata
  sol'16\tutti\f fad mi red mi re do si
  do la si do re8 <la fad'>
  \ViiIIexp
  sol16\ff si, si si si4:16
  si16 re re re re4:16 re16 si' si si si4:16
  re8-. \tuplet 3/2 {si16 do si} re8-. \tuplet 3/2 {si16 do si}
  re sol re sol re sol re sol
  re8 <re, si'> q q q4 q q r
  \bar "|."
}

AIexp = \relative do' {
  mi8.\f mi16 sol8. sol16 si8. si16 mi4-. si-. r
  <mi, si'>2:8 <si si'>8 q <mi si'>4 r r
  <mi si'>2:8 <si si'>8 q <mi si'>8 r q4 r
  R2.*4
  do2:8\p si8 dod si2.:8 si: la: la4 r r
  <sol mi'> r r R2. mi'8 si mi4 r  R2.
  mi4\f si mi la si si, mi4 r8 si'( la sol)
  mi2.:8 red: re: do: <la mi'>4 r si
  mi r si' la si
}

AI = \relative do' {
  \Iglobal
  \clef alto
  \AIexp
  <si si'>4 mi r8 mi8-.\f re16( do si la)
  sol8 sol'\p sol2:8 sol2.: re4 r r sol, r r
  re' r r sol re16( sol) si,( re) sol,8 r
  do2.:8\p sol: re': sol,: do: sol:
  do4 re re <sol, re'> r r R2. r4 r sol' do, re <re, re'> <sol re'> r r
  R2. r4 r sol' do, re <re, re'> <sol re'> r r
  r re' re sol,8 r16 sol'32(\f la) si8-. la-. sol-. fad-.
  \AIexp
  si,4 mi mi, r mi' mi, r sol8 r sol4 r
  \bar "|."
}

AIIexp = \relative do' {
  R2*8
  sol16\tutti\f sol' si sol fad mi fad re
  sol la si sol re' la fad re
  sol sol, si' sol la re, sol sol,
  re'4:16 re16 la' sol fad
  sol, sol' si sol fad mi fad re
  sol la si sol re' la fad re
  sol fad mi re do la re re,
}

AII = \relative do' {
  \IIglobal
  \clef alto
  \AIIexp
  sol16 si re sol sol,4
  sol2:8\solo\p sol: re: re: la': re,: la': re,: sol4 r
  R2*2
  r8 la\f dod mi la r la,\p r
  la r la r re4 r re r la8 r la r la r la r re4 r re r r sol re2
  R2*5
  \AIIexp
  sol,16 si re sol sol,8 r
  \key sol \minor
  \tempo "Minore"
  sol4\psub \solo r re'-. re,-.
  sol-. sol'-. fa!-. fa,-. sib-. r
  R2*4
  re4-.\psub re,-. sol-. sol'-. fa-. fa,-. sib-. r
  R2*2
  re4 r
  R2*2
  re8 re re r
  sib2:8\p sib: fa: fa: sib: sib: fa: fa:
  sib8 sib' sib4 mib,,8 mib' mib4 fa fa, sib8 sib re fa
  sib, sib' sib4 mib,,8 mib' mib4 fa do
  <sib fa'>2\tutti\f q q4 q q8 r sib la
  sol4\psub \solo r re'-. re,-.
  sol-. sol'-. fa!-. fa,-. sib-. r
  R2*3
  sol4\psub \solo r re'-. re,-.
  sol-. sol'-. fa!-. fa,-. sib-. r
  R2*2
  re4 r
  R2*3
  \key sol \major
  \tempo "Majore"
  \AIIexp
  sol,16 si re sol sol,4
  R2*20
  <re' la'>2~\f q <sol, sol'>4 r R2 <re' la'>2~ q <sol, sol'>4 r
  R2*24
  sol'16\f fad mi red mi re do si do la si do re8 re re4 r4\fermata
  sol16\f fad mi red mi re do si do la si do re8 re,
  \AIIexp
  sol16 sol' sol sol sol4:16 sol2: sol:
  sol8\f r sol r sol2:8
  sol,8\ff sol' re si sol4 sol' sol, r
  \bar "|."
}

BIexp = \relative do' {
  mi,8.\f mi16 sol8. sol16 si8. si16 mi4-. si-. r
  mi,2:8 si8 si mi4 r r
  mi2:8 si8 si mi8 r mi,4 r
  R2.
  mi'4\solo\p si mi la si si, mi8 si mi,4 r
  do' r r si si'8 fad red si si'4 r r
  la, la'8 mi do la la'4 r r
  mi r r mi8 la si si si, si mi si mi,4 r
  R2.
  mi'4\tutti\f si mi la si si, mi r8 sol( fad mi)
  <la, la'>4 r r si si'8 fad red si <si si'>4 r r
  la4 la'8 mi do la la'4 r si, mi r mi la si si, mi
}

BI = \relative do' {
  \Iglobal
  \clef bass
  \BIexp
  r8 mi,-. re16 do si la sol4 r r
  r sol\solo\p sol' re sol re sol, r r
  re' sol re sol re16( sol) si,( re) sol,8 r
  do4 r r sol r8 sol' si sol
  re4 r r sol,8 r sol' re si sol do2.:8
  sol4 sol' r do, re re, sol r8 mi' mi re
  do8. si16 la8 re re do si8. la16 sol4 sol'
  do, re <re, re'> sol r8 mi' mi re
  do8. si16 la8 re re do si8. la16 sol4 sol'
  do, re re, sol r r do re re, sol8 r16 sol'32(\f la)
  si8-. la-. sol-. fad-.
  \BIexp
  mi,4 r mi' mi, r mi'8 r mi, r r4
  \bar "|."
}

BIIexp = \relative do' {
  sol,16\tutti\f sol' si sol fad mi fad re
  sol la si sol re' la fad re
  sol sol, si' sol la re, sol sol, re'4:16 re8 r
  sol,16 sol' si sol fad mi fad re
  sol la si sol re' la fad re
  sol fad mi re do la re re,
}

BII = \relative do' {
  \IIglobal
  \clef bass
  R2*8
  \BIIexp
  sol,16 si re sol sol,4
  R2*11
  r8 la\f dod mi la r la,\p r la r la r
  re4 r re r la8 r la r la r la r re4 r re r
  R2*15
  \BIIexp
  sol,16 si re sol sol,4
  \key sol \minor
  \tempo "Minore"
  R2*34
  sib'4.\mf r8 sib4. r8 sib4 sib sib8 r sib la
  sol4 r
  R2*18
  \key sol \major
  \tempo "Majore"
  R2*8
  \BIIexp
  sol,16 si re sol sol,4
  R2*18
  sol'2\p sol re\f re sol\p sol re\f re
  sol,4 r
  R2*7
  r8 si-. do-. dod-. re2:8\p re: sol4 si16\f la sol fad
  mi4\p r
  R2*12
  sol16\f fad mi red mi re do si do la si do re8 re' re4 r4\fermata
  sol,16\f fad mi red mi re do si do la si do re8 re,
  R2*8
  \BIIexp
  sol16 sol' sol sol sol4:16 sol2: sol: sol8\f r sol r
  sol2:8\f sol,8 sol' re si sol4 sol' sol, r
  \bar "|."
}


FiIexp = \relative do' {
  mi8.\f mi16 sol8. sol16 si8. si16 mi4-. si-. r
  mi4. sol8 sol16( fad mi red) mi8-. fad-. sol-. la-. si r
  mi,4. sol8 sol16( fad mi red) mi8.( si16) si4-. r
  R2.*13
  mi4\f fad sol
  la8. si32( do) si8-. la-. sol-. fad-. la16( sol fad mi) mi4 r
  la2:8 sol8 sol fad2.:8 fad2: fa8 fa mi2.:8
  la32( si do8.) si8(-. la-. sol-. fad-.)
  sol16 mi fad sol la si dod red mi( red mi red)
  mi( do si la) sol4 fad\prall mi4 r r
}

FiI = \relative do' {
  \Iglobal
  \FiIexp
  R2.*24
  \FiIexp
  R2.*2
  \bar "|."
}

FiIIexp = \relative do' {
  R2*8
  sol''8\f sol la4-> si8 si do4-> si8 si\prall do si la dod32( re16.) re,4
  sol8 sol la4-> si8 si do4-> si8 si\prall do la
}

FiII = \relative do' {
  \IIglobal
  \FiIIexp
  sol''8 fad32( sol16.) sol,4
  R2*27
  \FiIIexp
  sol'8 sol sol4
  R2*57
  \FiIIexp
  sol8 sol sol4
  R2*20
  la2~\f la sol4 r R2 la2~\f la sol4 r
  R2*26 R2-\fermataMarkup
  R2*2
  \FiIIexp
  sol2 sol sol sol8 r sol r sol2:8 sol: sol4 sol sol r
  \bar "|."
}

FiiIexp = \relative do' {
  mi8.\f mi16 sol8. sol16 si8. si16 mi4-. si-. r
  sol4. si8 si16( la sol fad) sol8 red'-. mi-. fad-. sol r
  sol,4. si8 si16( la sol fad) sol8 r sol4-. r
  R2.*13
  mi'4\f red mi
  fad8. sol32( la) sol8-. fad-. mi-. red-. fad16( mi red mi) mi4 r
  mi2.:8 red: re: do:
  fad32( sol la8.) sol8(-. fad-. mi-. red-.) mi4 r
  sol16( fad sol fad) sol( la sol fad) mi4 red mi r r
}

FiiI = \relative do' {
  \Iglobal
  \FiiIexp
  R2.*24
  \FiiIexp
  R2.*2
  \bar "|."
}

FiiIIexp = \relative do' {
  R2*8
  si'8\f si re4-> sol8 sol la4-> sol8 sol\prall la sol fad fad fad4
  si,8 si re4-> sol8 sol la4->
}

FiiII = \relative do' {
  \IIglobal
  \FiiIIexp
  sol''8 sol\prall la fad si, si si4
  R2*27
  \FiiIIexp
  sol'8 sol\prall la do, si si si4
  R2*57
  \FiiIIexp
  sol'8 sol\prall la do, si si si4
  R2*20
  fad'2~\f fad sol4 r R2 fad2~\f fad sol4 r
  R2*26 R2-\fermataMarkup
  R2*2
  \FiiIIexp
  sol8 sol\prall la do, si2 si si si8 r si r si2:8 si: si4 si si r
  \bar "|."
}

CiIIexp = \relative do' {
  R2*8
  do'8\f do re4-> mi8 mi fa4-> mi8 mi fa mi re re re4
  do8 do re4-> mi8 mi fa4-> mi8 mi fa re
}

CiII = \relative do' {
  \time 2/4
  \tempo Allegretto
  \CiIIexp
  do'8 do do4
  R2*27
  \CiIIexp
  do8 do do4
  R2*57
  \CiIIexp
  do8 do do4
  R2*20
  re2~\f re do4 r R2 re2~ re do4 r
  R2*26
  R2-\fermataMarkup
  R2*2
  \CiIIexp
  do2 mi sol mi8 r mi r
  mi mi mi mi mi do do do do4-. do-. do-. r
  \bar "|."
}

CiiIIexp = \relative do' {
  R2*8
  mi8\f mi sol4-> do8 do re4-> do8 do re do sol sol sol4
  mi8 mi sol4-> do8 do re4-> do8 do re sol
}

CiiII = \relative do' {
  \time 2/4
  \tempo Allegretto
  \CiiIIexp
  mi8 mi mi4
  R2*27
  \CiiIIexp
  mi8 mi mi4
  R2*57
  \CiiIIexp
  mi8 mi mi4
  R2*20
  sol2~\f sol do,4 r R2 sol'2~ sol do,4 r
  R2*26
  R2-\fermataMarkup
  R2*2
  \CiiIIexp
  mi2 do' mi do8 r do r do2:8 do8 mi, mi mi do4-. do-. do-. r
  \bar "|."
}

PuIexp = \relative do' {
  mi8.\f mi16 sol8. sol16 si8. si16 <mi, mi'>4-. si'-. r
  <mi, sol mi'>4.\dolce <si' sol'>8 q16( <la fad'> <sol mi'> <fad red'>)
  <sol mi'>8-. <red' fad>-. <mi sol>-. <fad la>-. <sol si> r
  <mi, sol mi'>4. <si' sol'>8 q16( <la fad'> <sol mi'> <fad red'>)
  <sol mi'>8.( si16) <mi, sol si>4 r R2.
  mi4\p\solo red mi <do fad>8. sol'32( la) sol8 fad mi red
  mi si <sol mi'> <si sol'>( <la fad'> <sol mi'>)
  <do mi la>2:8 <si mi sol>8 <dod mi sol>
  <si red fad> <red fad> q2:8
  <re fad>: <re fa>8 q
  <la do mi> <do mi> q2:8
  <do mi la>8 <do mi> <si sol'> <si fad'> <si mi> <si red>
  <sol si mi>4 r r
  <mi' si'>16( la <do, sol'> fad) <si, mi>8 q <si red> q
  mi si <sol mi'>4 r
  <si' si'>4.\tutti do'8 si4
  <sol, mi'>4 <fad red' fad> <sol mi' sol>
  <do fad la>8. <sol' si>32( <la do>)
  <si, sol' si>8-.( <la fad' la>-. <sol mi' sol>-. <fad red' fad>-.)
  <si fad' la>16( <mi sol> <red fad> mi) <mi, sol mi'>8\noBeam si( la sol)
  <do' mi la> <mi la> q q <mi sol> q
  <red fad>2.:8 <re fad>2: <re fa>8 q
  <do mi>2.:8 <fad la>32( <sol si> <la do>8.)
  <si, sol' si>8-.( <la fad' la>-. <si mi sol>-. <si red fad>-.)
  <si mi sol>16 mi fad sol la si dod red
  <sol, mi'>( <fad red'> <sol mi'> <fad red'>)
  <sol mi'>( <la do> <sol si> <fad la>) <si, mi sol>4 <si red fad>^\prall
}

PuI = \relative do' {
  \Iglobal
  \PuIexp
  <mi sol mi'>4 r8 mi-.\f re16( do si la)
  r8 <re sol si>\p q2:8 q2.:
  fad8-. la( sol) do( <sol si>) <re la'>-. <si sol'>4 r r
  <do fad>4-. <si sol'>-. <do fad>-. <si sol'>4
  re16(\mf sol si, re) r4
  <do mi sol>2.:8\p <re sol si>: <re fad la>:
  << {sol8. la16} \\ {re,8[-. re]-.} >> <re si'>2:8
  <do mi sol>2.: <re sol si>: <do mi la>4 <si re sol> <do fad>
  <si sol'> r8 <mi sold si> q q <mi la>8. re16 do8 <re fad la> q q
  <re sol>8. do16 si8 r <sol' si>16( do la si) <mi, la re>( do' si la)
  <si, re sol>4 <do fad> <si sol'>
  r8 <mi sold si> q q <mi la>8._( re16 do8) <re fad la> q q
  <re sol>8._( do16 si8) r <sol' si>16( do la si) <mi, la re>( do' si la)
  <si, re sol>4 <do fad> <si sol'>8 la'16 si do re mi fad sol8 si,
  <mi, la re>16( do' si la) <si, re sol>8. sol'16 <do, fad>8. fad16
  <si re sol>8 r16 sol,32(\f la si8-.) la-. sol-. fad-.
  \PuIexp
  <mi' sol mi'>4 r8 <la do>( <sol si>) <si, red>
  <sol mi'>4 r8 <la' do>( <sol si>) <si, red>
  <sol mi'>4 <sol si mi> r
  \bar "|."
}

PdIexp = \relative do' {
  <mi,, mi'>8. mi16 sol8. sol16 si8. si16 mi4-. <si si'>-. r
  << {si'2 si4} \\ {mi,2:8 si8 si} >> <mi si'>4 r r
  << {si'2 si4} \\ {mi,2:8 si8 si} >> <mi si'>4 mi, r R2.
  mi'4 si mi la si si, mi8 si mi,4 r
  do'4 r r si si'8 fad red si si'4 r r
  la, la'8 mi do la la'4 r r mi r r
  mi8 la si4 si, mi8 si mi,4 r
  R2.
  mi'4 <si si'> <mi mi'> la si si, mi4 r8 sol,( fad mi)
  <<
    {
      do''8.\prall re16 mi8 do-. si-. lad-.
      si8.\prall lad16 si4 r
      si8.\prall do16 re8 si-. la-. sold-.
      la8.\prall sold16 la4 r
    } \\ {
      la,4 r r si r8 fad red si
      si'4 r r la r8 mi do la
    }
  >> <la' mi' do'>4 r <si si'>
  mi16 \clef treble mi' fad sol la si dod red
  <mi, si' mi>4 \clef bass la, si si,
}

PdI = \relative do' {
  \Iglobal
  \clef bass
  \PdIexp
  mi,4 r8 mi-. re16( do si la)
  <sol sol'>4 r r r sol sol'
  <re re'> sol re <sol, sol'> r r
  re' sol re sol re16( sol si, re) <sol, sol'>4
  do r r <sol sol'> r8 sol' si sol
  re4 r r <sol, sol'> sol'8 re si sol
  do4 r r sol sol' r do, re re,
  sol r8 mi' mi re do8.( si16) la8
  re re do si8.( la16) sol4 sol' do, re re,
  sol r8 mi' mi re do8.( si16) la8
  re re do si8.( la16) sol4 sol' do, re re,
  <sol sol'> r r do re re, sol8
  r16 sol32( la si8-.) la-. sol-. fad-.
  \PdIexp
  mi'4 mi, r mi' mi, r mi' mi, r
  \bar "|."
}

md = { \change Staff = "md" \stemDown }
mg = { \change Staff = "mg" \stemUp }

PuIIexp = \relative do' {
  <<
    {
      si'8 si re4-> sol8 sol la4->
      sol8 sol\prall la sol fad fad fad4
      si,8 si re4-> sol8 sol la4->
      sol8 sol\prall la fad sol sol sol4
    } \\ {
      \mg sol,,16 \md sol' si sol fad \mg mi fad re
      sol \md la si sol \mg fad mi fad re
      sol, si re sol fad re \md sol \mg sol,
      re' mi fad sol \md la si do la
      sol \mg sol, \md si' sol fad \mg mi fad re
      sol \md la si sol \mg fad mi fad re
      \md sol \mg \stemNeutral fad mi re do la re re,
      \md sol' \mg \stemNeutral sol, si re
      \md sol \mg re si re
    }
  >>
  <sol si re sol>8\mf\tutti q <la re la'>4->
  <si re sol si>8 q <do re la' do>4->
  <si sol' si>8 <sol' si>^\prall <do, la' do> <si sol' si>
  <la fad' la> \acciaccatura dod'16 re8 re,4
  <sol, si re sol>8 q <la re la'>4->
  <si re sol si>8 q <do re la' do>4->
  <si sol' si>8 <sol' si>^\prall <do, mi la do> <do fad la>
}

PuIImin = \relative do' {
  r4 <<{ sib'(\psub la)} \\ {sol~ sol} >> <fad la>
  r <<{ sib( do)} \\ {sib sib} >> <la do>
  <sib re>-. <fad la>-. sol-. <do, mib>-.
  <sib re> <do mi>8 <dod mi> re4 r
  r <<{ sib'(\psub la)} \\ {sol~ sol} >> <fad la>
  r <<{ sib( do)} \\ {sib sib} >> <la do>
  <sib re>-. <fad la>-. sol-. <re fad>-.
  <mib sol>2
  << {la la} \\ {fad4. <mi sol>8->-. fad4. <mi sol>8->-.} >>
}

PuII = \relative do' {
  \IIglobal
  <>\pp\solo
  \PuIIexp
  <si' sol'>8 \acciaccatura fad'16 <si, sol'>8 <si, sol'>4
  <si re>2:8\p\solo q: <la re>: q:
  mi'8 dod4 mi8 re fad4 fad8
  mi dod4 mi8 re fad4 fad8 si, si4 si8 si si4 si8
  r <dod mi>16 q q8 q q\noBeam
  la\f dod mi
  <dod mi sol la>2~ q <re la' fad'>4 r q r
  <dod mi sol la>2~ q <re la' fad'>4 r q r
  r << {si' la2} \\ {sol4~ sol fad} >> sol8 sol la la
  <fad la>2~ q~ q~ q4 r
  \PuIIexp
  <si sol'>8 \acciaccatura fad'16 <si, sol'>8 <si, sol'>4
  \tempo "Minore"
  \key sol \minor
  <>\solo
  \PuIImin
  << la'2 \\ {fad8 <mi sol> fad <mi sol>} >>
  <fad la> <fad la> <fad la> r
  <re fa sib>2:8 q:
  do'16 sib do sib la sol la sol
  fa sol la sol fa mib re do
  <re fa sib>2:8 q:
  do'16 sib do sib la sol la sol
  fa sol la sol fa mib re do
  re( fa <re sib'> <sib fa'>) <re sib'>( <sib fa'>) <re sib'>( <sib fa'>)
  mib( sol sib <mib, sol>) sib'( <mib, sol>) sib'( <mib, sol>)
  fa8 <do fa>16 sol' <fa la> sib <la do> do
  <sib re>( <fa do'> <re sib'> <fa do'>) sib\noBeam fa re fa
  re( fa <re sib'> <sib fa'>) <re sib'>( <sib fa'>) <re sib'>( <sib fa'>)
  mib( sol sib <mib, sol>) sib'( <mib, sol>) sib'( <mib, sol>)
  <do mib>4 q <sib re sib'>4.\mf re'16( fa)
  sib,4. \tuplet 3/2 {fa16 sol fa}
  <re sib'>8 \tuplet 3/2 {fa16 sol fa}
  <re sib'>8 \tuplet 3/2 {fa16 sol fa}
  <re sib'>4 r
  \PuIImin
  <fad la>4 r r8 <fad re'>8-.( <sol dod>-. <la do>-.)
  \tempo "Majore"
  \key sol \major
  <>\pp\solo
  \PuIIexp
  <si sol'>8 \acciaccatura fad'16 <si, sol'>8 <si, sol'>4
  R2
  r8 la'-.\mf\solo la-. sol-.
  fad2 mi8 do'4-> si8 la-. fad-. si-. la-.
  sol mi mi'4~-> mi red mi sol fad2
  mi4 si8( si') la4 la,8( la')
  sol4 sol,8( sol') fad4 fad,8( fad')
  <si, mi>4 <mi sol> <red fad>4. <mi sol>8-. <red fad>4. <mi sol>8-.
  <red fad>-. <mi sol>-. <red fad>-. <mi sol>-.
  <red fad> q q r
  <si, re sol>2~\p q <la' la'>16^( fad') fad-. fad-.
  fad( re) re-. re-. <fad, re'>^( do') do-. do-. do( la) la-. la-.
  <si, re sol>2~\p q <la' la'>16^( fad') fad-. fad-.
  fad( re) re-. re-. <fad, re'>^( do') do-. do-. do( la) la-. la-.
  <si, sol'>8\pp sol si'16( sol si sol)
  fad8 fad, la'16( fad la fad)
  sol8 sol, si'16( sol si sol)
  fad8 fad, la'16( fad la fad)
  si( sol si sol) la( fad la fad)
  si( sol si sol) la( fad la fad)
  sol( si) si-. si-. si4:16
  si16( sol') sol-. sol-. sol4:16 sol4 r
  re,16(\p si' sol' si, sol' si, sol' si,)
  re,( la' fad' la, fad' la, fad' la,)
  <sol si sol'>4 si,16\f la sol fad
  R2
  r8 la'-.\mf\solo la-. sol-.
  fad2 mi8 do'4-> si8 la-. fad-. si-. la-.
  sol mi mi'4~-> mi red mi sol fad2
  mi4 si8( si') la4 la,8( la')
  sol4 sol,8( sol') fad4 fad,8( fad')
  <sol, sol'>16\mf  fad' mi red mi re do si
  do la si do re8 <la do fad> q4 r4\fermata
  <sol sol'>16\f\tutti  fad' mi red mi re do si
  do la si do re8 <la fad'>
  <>\p\solo
  \PuIIexp
  <si sol'>16\f <si, sol'> q q q4:16
  q16( <re si'>) q q q4:16
  q16( <si' re>) q q q4:16
  <si sol'>8-. \tuplet 3/2 {<si re>16 <do mi> re}
  <si sol'>8-. \tuplet 3/2 {<si re>16 <do mi> re}
  <si sol'> <re si'> <si sol'> <re si'>
  <si sol'> <re si'> <si sol'> <re si'>
  <sol, si re sol>8 <si re sol> q q
  <sol si sol'>4 <si sol'> <sol si sol'> r
  \bar " |."
}

PdIIexp = \relative do' {
  \stemDown sol4 \stemNeutral
  \clef treble s s2*5 s4
  \clef bass s s2
  sol,16 sol' si sol fad mi fad re
  sol la si sol re' la fad re
  sol sol, si' sol la re, sol sol,
  re' sol' <re fad> mi re <la do> <sol si> <fad la>
  sol, sol' si sol fad mi fad re
  sol la si sol re' la fad re
  sol fad mi re do la re re,
}

PdIImin = \relative do' {
  r4 re-. re,-. sol-. sol'-. fa-. fa,-. sib-. r
  R2*4
  re4-. re,-. sol-. sol'-. fa-. fa,-. sib-. r
  R2*2
  re4 r
}

PdII = \relative do' {
  \IIglobal
  \clef bass
  \PdIIexp
  sol,16 si re sol sol,4
  sol'2~ sol re~ re la'2:8 <re, la'>: la': <re, la'>:
  sol4 r sol8 sol sold sold la4 r r8
  la, dod mi la4
  la,-.\p la-. la-. re r re r
  la-. la-. la-. la-. re r re r
  R2 re'2 sol,8 sol la la re4 r R2*3
  \PdIIexp
  sol,,16 si re sol sol,4
  \key sol \minor
  sol'
  \PdIImin
  R2*2
  re'8 re re r
  sib2 sib << {la8 la do do} \\ fa,2 >> fa2:8
  sib2 sib << {la8 la do do} \\ fa,2 >> fa2:8
  sib,8 sib' sib4 mib,,8 mib' mib4 fa fa, sib8 sib re fa
  sib, sib' sib4 mib,,8 mib' mib4 fa fa,
  <sib fa'>2 <sib fa' re'> <sib fa'>4 q q8 r <sib sib'>-. <la la'>-.
  <sol sol'>4
  \PdIImin
  R2*3
  \key sol \major
  \PdIIexp
  sol16 si re sol sol,4
  R2*3
  r8 la'-. la-. sol-. fad2
  mi8 do'4-> si8 la-. fad-. si-. la-.
  sol mi mi'4~-> mi red mi8 sol, sol'4~->
  sol fad~ fad mi~ mi red
  R2*5
  sol,2 sol <re la' fad'>~ <re la'>
  sol sol <re la' fad'>~ <re la'>
  <sol, sol'>4 r
  R2*7
  r8 <si, si'>-. <do do'>-. <dod dod'>-.
  << re'2:8 \\ re,2 >> << re'2:8 \\ re,2 >>
  sol4 si16 la sol fad <mi mi'>4 r
  R2*2
  r8 la'-. la-. sol-. fad2
  mi8 do'4-> si8 la-. fad-. si-. la-.
  sol mi mi'4~-> mi red mi8 sol, sol'4~->
  sol fad~ fad mi~ mi red
  sol,16 fad mi red mi re do si
  do la si do <re, re'>8 re'' re4 r4\fermata
  sol,16 fad mi red mi re do si
  do la si do <re re'>8 <re, re'>
  \PdIIexp
  sol16 sol' sol sol sol4:16
  sol,16 sol' sol sol sol4:16
  sol,16 sol' sol sol sol4:16
  <sol sol'>8-. r q-. r q2:8
  <sol, sol'>8 <sol' sol'> <re re'> <si si'>
  <sol sol'>4 <sol' sol'> <sol, sol'> r
  \bar "|."
}

\book {
  \score {
    \header {
      piece="Romance"
    }
    <<
      \new Staff \with { instrumentName="ContraBasso" shortInstrumentName="Cb." } \CpI
      \new PianoStaff <<
        \new Staff \PuI
        \new Staff \PdI
      >>
    >>
  }
  \score {
    \header {
      piece="Rondo"
    }
    <<
      \new Staff \with { instrumentName="ContraBasso" shortInstrumentName="Cb." } \CpII
      \new PianoStaff <<
        \new Staff = "md" \PuII
        \new Staff = "mg" \PdII
      >>
    >>
  }
}

\book {
  \score {
    \header {
      piece="Romance"
    }
    <<
      \new StaffGroup <<
        \new Staff \with { instrumentName="Flauto I" shortInstrumentName="Fl." } \FiI
        \new Staff \with { instrumentName="Flauto II" shortInstrumentName="Fl." } \FiiI
      >>
      \new Staff \with { instrumentName="ContraBasso" shortInstrumentName="Cb." } \CpI
      \new StaffGroup <<
        \new Staff \with { instrumentName="Violino I" shortInstrumentName="Vn." } \unfoldRepeats \ViI
        \new Staff \with { instrumentName="Violino II" shortInstrumentName="Vn." } \ViiI
        \new Staff \with { instrumentName="Viola" shortInstrumentName="Vl." } \AI
        \new Staff \with { instrumentName="Basso" shortInstrumentName="Vlc." } \BI
      >>
    >>
  }
  \score {
    \header {
      piece="Rondo"
    }
    <<
      \new StaffGroup <<
        \new Staff \with { instrumentName="Flauto I" shortInstrumentName="Fl." } \FiII
        \new Staff \with { instrumentName="Flauto II" shortInstrumentName="Fl." } \FiiII
      >>
      \new StaffGroup <<
        \new Staff \with { instrumentName="Cornu I" shortInstrumentName="Cn." } \CiII
        \new Staff \with { instrumentName="Cornu II" shortInstrumentName="Cn." } \CiiII
      >>
      \new Staff \with { instrumentName="ContraBasso" shortInstrumentName="Cb." } \CpII
      \new StaffGroup <<
        \new Staff \with { instrumentName="Violino I" shortInstrumentName="Vn." } \ViII
        \new Staff \with { instrumentName="Violino II" shortInstrumentName="Vn." } \ViiII
        \new Staff \with { instrumentName="Viola" shortInstrumentName="Vl." } \AII
        \new Staff \with { instrumentName="Basso" shortInstrumentName="Vlc." } \BII
      >>
    >>
  }
}

\book {
  \header {
    instrument="ContraBasso principale"
  }
  \score {
    \header {
      piece="Romance"
    }
    \new Staff \CpI
  }
  \score {
    \header {
      piece="Rondo"
    }
    \new Staff \CpII
  }
}

\book {
  \header {
    instrument="Violino primo"
  }
  \score {
    \header {
      piece="Romance"
    }
    \new Staff \ViI
  }
  \score {
    \header {
      piece="Rondo"
    }
    \new Staff \ViII
  }
}

\book {
  \header {
    instrument="Violino secondo"
  }
  \score {
    \header {
      piece="Romance"
    }
    \new Staff \ViiI
  }
  \score {
    \header {
      piece="Rondo"
    }
    \new Staff \ViiII
  }
}
\book {
  \header {
    instrument="Alto Viola"
  }
  \score {
    \header {
      piece="Romance"
    }
    \new Staff \AI
  }
  \score {
    \header {
      piece="Rondo"
    }
    \new Staff \AII
  }
}

\book {
  \header {
    instrument="Basso ripieno et Violonzello"
  }
  \score {
    \header {
      piece="Romance"
    }
    \new Staff \BI
  }
  \score {
    \header {
      piece="Rondo"
    }
    \new Staff \BII
  }
}

\book {
  \header {
    instrument="Flauto primo"
  }
  \score {
    \header {
      piece="Romance"
    }
    \new Staff \FiI
  }
  \score {
    \header {
      piece="Rondo"
    }
    \new Staff \FiII
  }
}

\book {
  \header {
    instrument="Flauto secondo"
  }
  \score {
    \header {
      piece="Romance"
    }
    \new Staff \FiiI
  }
  \score {
    \header {
      piece="Rondo"
    }
    \new Staff \FiiII
  }
}

\book {
  \header {
    instrument="Cornu primo in G"
  }
  \markup "Romance tacet."
  \score {
    \header {
      piece="Rondo"
    }
    \new Staff \CiII
  }
}

\book {
  \header {
    instrument="Cornu secondo in G"
  }
  \markup "Romance tacet."
  \score {
    \header {
      piece="Rondo"
    }
    \new Staff \CiiII
  }
}

\layout {
  \context {
    \Staff
    midiMinimumVolume=#0.1
    midiMaximumVolume=#0.4
  }
}

\include "articulate.ly"
\score {
  \articulate <<
    \new Staff \with { midiInstrument="recorder" } \FiI
    \new Staff \with { midiInstrument="recorder" } \FiiI
    \new Staff \with { midiInstrument="violin" } \unfoldRepeats \ViI
    \new Staff \with { midiInstrument="violin" } \ViiI
    \new Staff \with { midiInstrument="viola" } \AI
    \new Staff \with { midiInstrument="cello" } \BI
    \new Staff \with { midiInstrument="contrabass" midiMinimumVolume=#0.8 midiMaximumVolume=#1  } \transpose do do, \CpI
  >>
  \midi {}
}

\score {
  \articulate <<
    \new Staff \with { midiInstrument="recorder" } \FiII
    \new Staff \with { midiInstrument="recorder" } \FiiII
    \new Staff \with { midiInstrument="french horn" } \transpose sol re \CiII
    \new Staff \with { midiInstrument="french horn" } \transpose sol re \CiiII
    \new Staff \with { midiInstrument="violin" } \ViII
    \new Staff \with { midiInstrument="violin" } \ViiII
    \new Staff \with { midiInstrument="viola" } \AII
    \new Staff \with { midiInstrument="cello" } \BII
    \new Staff \with { midiInstrument="contrabass" midiMinimumVolume=#0.8 midiMaximumVolume=#1 } \transpose do do, \CpII
  >>
  \midi {}
}
