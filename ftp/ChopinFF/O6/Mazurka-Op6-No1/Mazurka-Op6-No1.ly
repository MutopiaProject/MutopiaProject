\version "2.12.2"

\header {

  title = "Mazurka."
  composer = "F. Chopin. Op.6, No.1."
  poet = \markup { \small "À Mlle la Comtesse PAULINE PLATER." } % this is actually the dedication

  mutopiatitle = "Mazurka: Op.6, No.1"
  mutopiacomposer = "ChopinFF"
  mutopiapoet = ""
  mutopiaopus = "Op. 6, No. 1"
  mutopiainstrument = "Piano"
  date = "1830"
  source = "G. Schirmer, 1894"
  style = "Romantic"
  copyright = "Creative Commons Attribution 3.0"
  maintainer = "Ryan Prince"
  maintainerEmail = "rprincerp@gmail.com"
  maintainerWeb = ""
  moreInfo = "This file was created from a public domain scan of the work.  The source is located in the Petrucci Music Library, http://imslp.org/."

 footer = "Mutopia-2009/06/23-1687"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2009. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by/3.0" http://creativecommons.org/licenses/by/3.0 } } } }
}

su = \stemUp
sd = \stemDown
td = \tupletDown
tu = \tupletUp
sn = \sustainOn
sf = \sustainOff
nb = \noBreak
bk = \break
ffz = \markup { \dynamic "ffz" }

\score {

\new PianoStaff <<
  \set PianoStaff.instrumentName = "Piano"
  \set PianoStaff.connectArpeggios = ##t
  \new Staff = "up" \relative c' << { \time 3/4 \key fis \minor \clef treble

    \cadenzaOn \su \once \override TextScript #'extra-offset = #'(-3.5 . 0.0)
        fis4^\markup { ( \smaller \general-align #Y #DOWN \note #"4" #1
        = \smaller \general-align #Y #DOWN "132" ) }_>_\p^3_~_\( \cadenzaOff		\nb\bar"|" % 0
    \td \times 2/3 { fis8[_( gis fis)] } eis8_\<[ fis gis8.\! d16^1]			\nb	| % 1
    cis8^2\)[ b'16\rest fis^3_(] a4^5_\markup { \italic "cresc.         " }) a^4^>^~^\(	\nb	| % 2
    \tu \times 2/3 { a8_\<^([ b a)] } gis8[ a b8.^5 s16*1/2\! fis^3]	\noPageBreak	\bk	| % 3
    e8^2_\<\)[ b'16\rest a^(] cis4*1/2) s8\! \sd cis4^3^>^~				\nb	| % 4
    \tu \times 2/3 { cis8^([ dis_\markup { \italic "decresc." } cis)] } \su bis8[
        b16\rest gis^1]_( b4^3^>^~)							\nb	| % 5
    \sd \times 2/3 { b8^([ cis b] } \su ais8)[ b16\rest fis^1] a4^3_>_~			\nb	| % 6
    \td \times 2/3 { a8_([ b a] } gis8)[ b16\rest e,^1]_( g4^3)_(^\(	\noPageBreak	\bk	| % 7
    \times 2/3 { gis8)_([ a g)] } fis8[ d^1] fis4^3_~					\nb	| % 8
    \times 2/3 { fis8_\markup { \italic "rubato." }_([ gis! fis)] } eis8_\<[ fis
        gis8. d16\!]									\nb	| % 9
    cis8_\markup { \italic "cresc." }\)[ b'16\rest fis]_( a4) a^>^~^\(			\nb	| % 10
    \tu \times 2/3 { a8[ b a] } gis8[ a b8. fis16]			\noPageBreak	\bk	| % 11
    e8_\<\)[ b'16\rest a]^( cis4*1/2) s8\!\> cis4^3					\nb	| % 12
    e8^5\!_\markup { \dynamic "p" \italic "   riten." }^\([ d16 cis] b4^2 cis^3\)	\nb	| % 13
    e8^\([ d16 cis] b4_\< cis\!]\)							\nb	| % 14
    e8^\([ d16 cis] b4 cis]\)								\nb	| % 15
    \times 2/3 { b8_\markup { \dynamic \whiteout "pp" }^([ a gis)] } fis4*2   \noPageBreak\bar":|:" % 16

    \cadenzaOn \sd cis'4 \cadenzaOff							\nb\bar"|" % 0
    <cis cis'>4^|_\ff cis8^3_\<^\([ gis^1 bis d!^4\!]					\nb	| % 17
    cis8.^.[ bis16^.] b4^. b^.\)							\nb	| % 18
    <cis cis'>4^|_\ff cis8^\([ gis bis d!]						\nb	| % 19
    \su cis8[ bis] gis'4.^>_\fz fis8					\pageBreak		| % 20
    \sd <cis eis cis'>4^|_\ffz\) cis8^\(_\<[ gis bis d!\!]				\nb	| % 21
    cis8.^.[ bis16^.] b4^. b^.\)							\nb	| % 22
    <cis cis'>^|_\ffz  cis8^\(_\<[ gis bis d!\!]					\nb	| % 23
    \override TupletBracket #'stencil = ##f \times 3/5 { cis4^._\markup
        { \italic "rallent." } bis^. b^. \su a4._._\> gis8_.\!\) }			\nb	| % 24
    \tu \times 2/3 { fis8_\(_\f^\markup { \bold "Tempo I." }[^( gis fis)] }
        eis8[ fis gis8._> d16]						\noPageBreak	\bk	| % 25
    cis8\)[ b'16\rest fis_(_\markup { \italic "cresc." }] a4) a^>^~^\(			\nb	| % 26
    \times 2/3 { a8^([ b a)] } gis8[ a b8. fis16]					\nb	| % 27
    e8\)[ b'16\rest a^(] cis4) \sd cis^>^~						\nb	| % 28
    \times 2/3 { cis8[^( dis cis)] } \su bis_\markup { \italic "dim." }
        [ b16\rest gis_(] b4)^~^>^\(							\nb	| % 29
    \sd \times 2/3 { b8[ cis b] } \su ais8\)[ b16\rest fis_(] a4_>_~)	\noPageBreak	\bk	| % 30
    \td \times 2/3 { a8_(^\([ b a)] } gis!8\)[ b16\rest e,]_( g4)_(^\(			\nb	| % 31
    \times 2/3 { gis8)_([ a g)] } fis8_(_\<[ d] fis4)_~\!				\nb	| % 32
    \times 2/3 { fis8_([ gis! fis)] } eis8[ fis gis8. d16]				\nb	| % 33
    cis8\)[ b'16\rest  fis_(] a4) a^>^~^\(						\nb	| % 34
    \tu \times 2/3 { a8^(_\markup { \italic "cresc." }
        [ b a)] } gis8[ a b8. fis16]					\noPageBreak	\bk	| % 35
    e8\)[ b'16\rest a^(] cis4)^|_\> cis\!						\nb	| % 36
    e8^\(_\p_\>[ d16 cis] b4_\< cis\!\)							\nb	| % 37
    e8^\([ d16 cis] b4 cis\)								\nb	| % 38
    e8^\([ d16 cis] b4_\< cis\)								\nb	| % 39
    \times 2/3 { b8\!_\markup { \whiteout \dynamic "pp" }^([ a gis)] }
        fis4*2								\noPageBreak   \bk\bar":|" % 40

    \cadenzaOn \su \slurDown \acciaccatura gis'8 \sd <fis cis'>4^4_\f_\> s\!\cadenzaOff	\nb\bar"|" % 0
    \su \acciaccatura gis8 \sd <fis d'^5>8_\markup { \italic "scherz." }[ \su
        \acciaccatura gis8 \sd <fis cis'^4>] \su \acciaccatura gis8 \sd <fis b^3>4
        \su \acciaccatura gis8 \sd <fis d'>4						\nb	| % 41
    \su \acciaccatura gis8 \sd <fis cis'>8[ \su \acciaccatura gis8 \sd <fis d'>] \su
        \acciaccatura gis8 \sd <fis cis'>4 \su \acciaccatura gis8 \sd <fis fis'>4^>_\fz	\nb	| % 42
    \su \acciaccatura gis8 \sd <fis d'>8[ \su \acciaccatura gis8 \sd <fis cis'>] \su
        \acciaccatura gis8 \sd <fis b>4 \su \acciaccatura gis8 \sd <fis d'>4		\nb	| % 43
    \su \slurUp #(set-octavation 1) \set Staff.ottavation = #"8" \acciaccatura
        <fis cis'>8 \sd cis''^. #(set-octavation 0) b,,8\rest cis2^>_\fz\noPageBreak	\bk	| % 44
    \slurDown \su \acciaccatura d8 \sd <cis gis'>8[ \su \acciaccatura d8 \sd <cis b'>] \su
        \acciaccatura d8 \sd <cis a'>4 \su \acciaccatura d8 \sd <cis gis'>4		\nb	| % 45
    \su \acciaccatura d8 \sd <cis fis>8[ \su \acciaccatura d8 \sd <cis gis'>] \su
        \acciaccatura d8 \sd <cis fis>4 \su \acciaccatura d8 \sd <cis cis'>4^>_\fz	\nb	| % 46
    \slurDown \su \acciaccatura d8 \sd <cis gis'>8[ \su \acciaccatura d8 \sd <cis b'>] \su
        \acciaccatura d8 \sd <cis a'>4 \su \acciaccatura d8 \sd <cis gis'>4		\nb	| % 47
    \su \slurUp \acciaccatura fis8 \sd fis'8 b,,\rest \clef bass
        \su fis,,4_>_\fz d'\rest  \clef treble				\pageBreak	\bk	| % 48
    \su \slurDown \acciaccatura gis''8 \sd <fis d'>8[ \su \acciaccatura gis8 \sd <fis cis'>] \su
        \acciaccatura gis8 \sd <fis b>4 \su \acciaccatura gis8 \sd <fis d'>4		\nb	| % 49
    \su \acciaccatura gis8 \sd <fis cis'>8[ \su \acciaccatura gis8 \sd <fis d'>] \su
        \acciaccatura gis8 \sd <fis cis'>4 \su \acciaccatura gis8 \sd <fis fis'>4^>_\fz	\nb	| % 50
    \su \acciaccatura gis8 \sd <fis d'>8[ \su \acciaccatura gis8 \sd <fis cis'>] \su
        \acciaccatura gis8 \sd <fis b>4 \su \acciaccatura gis8 \sd <fis d'>4		\nb	| % 51
    \su \slurUp #(set-octavation 1) \set Staff.ottavation = #"8" \acciaccatura
        <fis cis'>8 \sd cis''^. #(set-octavation 0) b,,8\rest cis2^>_\fz		\nb	| % 52
    \slurDown \su \acciaccatura d8 \sd <cis gis'>8[ \su \acciaccatura d8 \sd <cis b'>] \su
        \acciaccatura d8 \sd <cis a'>4 \su \acciaccatura d8 \sd <cis gis'>4\noPageBreak	\bk	| % 53
    \su \acciaccatura d8 \sd <cis fis>8[ \su \acciaccatura d8 \sd <cis gis'>] \su
        \acciaccatura d8 \sd <cis fis>4 \su \acciaccatura d8 \sd
        <cis cis'>4^>_\fz								\nb	| % 54
    \slurDown \su \acciaccatura d8 \sd <cis gis'>8[ \su \acciaccatura d8 \sd <cis b'>] \su
        \acciaccatura d8 \sd <cis a'>4_\< \su \acciaccatura d8 \sd <cis gis'>4\!	\nb	| % 55
    \slurDown \su \acciaccatura cis8 \sd <bis gis'>8^>[_\markup { \italic "riten." }
        \su \acciaccatura cis8 \sd <bis gis'>^>] \su \acciaccatura cis8 \sd <b gis'>4^>
        \su \acciaccatura a8 <gis cis>4^>						\nb	| % 56
    \tu \times 2/3 { fis8_\(^\markup { \italic "a tempo." }[^( gis fis)] }
        eis8[ fis gis8. d16]								\nb	| % 57
    cis8\)[ b'16\rest fis_(] a4) a^>^~					\noPageBreak	\bk	| % 58
    \times 2/3 { a8_(^\([ b a)] } \tu gis8[ a b8. fis16]				\nb	| % 59
    e8\)[ b'16\rest a^(] cis4) \su cis^>^~^\(						\nb	| % 60
    \td\sd \times 2/3 { cis8_([ dis cis)] } \su bis8[ b16\rest gis] b4^>^~^\(		\nb	| % 61
    \sd \times 2/3 { b8_([ cis b)] }\su ais8\)[ b16\rest fis_(] a4^>)_~^\(		\nb	| % 62
    \times 2/3 { a8_([  b a)] } gis8[ b16\rest e,_(] g4)^>_(^\(	\noPageBreak		\bk	| % 63
    \times 2/3 { gis8)_([ a g)] } fis!_([ d] fis4_~)					\nb	| % 64
    \times 2/3 { fis8[ gis! fis] } eis8[ fis gis8. d16]					\nb	| % 65
    cis8\)[ b'16\rest fis_(] a4) a^>^~							\nb	| % 66
    \times 2/3 { a8^\(_([ b a)] }  gis8[a b8. fis16]			\noPageBreak	\bk	| % 67
    e8\)[  b'16\rest a^(] cis4^|) cis							\nb	| % 68
    e8^\([ d16 cis] b4 cis\)								\nb	| % 69
    e8^\([ d16 cis] b4 cis\)								\nb	| % 70
    e8^\([ d16 cis] b4 cis\)								\nb	| % 71
    \tu \times 2/3 { b8^( a gis) } fis2^\fermata					\nb\bar"|." % 72

  } \\ \relative c' {

    \cadenzaOn s4 \cadenzaOff									| % 0
    s2.												| % 1
    s2 \sd fis4^2_~										| % 2
    fis e d_>_~											| % 3
    d cis s											| % 4
    s2.												| % 5
    s												| % 6
    s												| % 7
    s												| % 8
    s												| % 9
    s2 fis4_~											| % 10
    fis e d_>_~											| % 11
    d_( cis) e^1										| % 12
    f^1 f e_>											| % 13
    f f e											| % 14
    fis!2 eis4_>										| % 15
    fis2*3/2										  \bar":|:"% 16

    \cadenzaOn s4 \cadenzaOff								   \bar"|" % 0
    s2.												| % 17
    s												| % 18
    s												| % 19
    s4 b!2											| % 20
    s2.												| % 21
    s												| % 22
    s												| % 23
    s												| % 24
    s												| % 25
    s2 fis4_~											| % 26
    fis e d_>_~											| % 27
    d cis s											| % 28
    s2.												| % 29
    s												| % 30
    s												| % 31
    s												| % 32
    s												| % 33
    s2 fis4_~											| % 34
    fis e d_~											| % 35
    d_( cis) e											| % 36
    f f e											| % 37
    f f e_>											| % 38
    fis!2 eis4											| % 39
    fis2*3/2											| % 40
    \cadenzaOn s2 \cadenzaOff									| % 0
    s2.												| % 41
    s												| % 42
    s												| % 43
    s												| % 44
    s												| % 45
    s												| % 46
    s												| % 47
    s												| % 48
    s												| % 49
    s												| % 50
    s												| % 51
    s												| % 52
    s												| % 53
    s												| % 54
    s												| % 55
    s												| % 56
    s												| % 57
    s2 fis4_~											| % 58
    fis e d_>_~											| % 59
    d cis s											| % 60
    s2.												| % 61
    s												| % 62
    s												| % 63
    s												| % 64
    s												| % 65
    s2 fis4_~											| % 66
    fis e d_>_~											| % 67
    d cis e											| % 68
    f_\>_\markup { \dynamic "p" \italic "riten." } f\! e_\<					| % 69
    f\! f_\< e											| % 70
    fis!2*1/2\! s4_\< eis									| % 71
    fis2.\!_\markup { \whiteout \dynamic "pp" }							| % 72

  } >>


  \new Staff = "down" \relative c << { \time 3/4 \key fis \minor \clef bass

    \cadenzaOn d4\rest \cadenzaOff								| % 0
    \su cis,4\sn \sd <cis' gis' b>4*1/2 s8 \sf <cis eis b'>4					| % 1
    \su fis,\sn \sd <fis' cis'>4*1/2 s8 \sf  <fis cis'>4					| % 2
    \su e,\sn \sd <e' b'>4*1/2 s8 \sf e4^~							| % 3
    \su <a, e'> \sn \sd a'4*1/2 s8 \sf <a e'>4							| % 4
    \su <dis fis>2_\markup { \italic "legato." } <cis eis>4					| % 5
    <cis e!>2 <c dis>4										| % 6
    <b d!>2 <bes cis!>4^>									| % 7
    <a c>2 <gis! b!>4										| % 8
    <cis,, cis'>4 \sn \sd <cis' gis' b> <cis eis b'>4*1/2 s8 \sf				| % 9
    \su fis,4 \sn \sd <fis' cis'>4*1/2 s8 \sf <fis cis'>4					| % 10
    \su e, \sn \sd <e' b'>4*1/2 s8 \sf e4^>^~							| % 11
    \su <a, e'>4 \sd a' a^~									| % 12
    <d, a'> <d a'> <a a'^~>									| % 13
    <d a'> <d a'> <a a'^~>									| % 14
    \su a'4 gis2										| % 15
    \tu \times 2/3 { d'8^([ cis b)] } a4*2						  \bar":|:"% 16

    \cadenzaOn d,4\rest	\cadenzaOff								| % 0
    <cis, cis'>4^|\sn gis''8_5\sf[ cis_3 dis_2 fis_1]						| % 17
    eis8.[ dis16] d4^1 f\rest									| % 18
    <cis,, cis'>^|\sn gis''8[ cis dis\sf fis]							| % 19
    eis8[ dis] d4 f\rest									| % 20
    <cis,, cis'>^| gis''8[ cis dis fis]								| % 21
    eis8.[ dis16] d4 f\rest									| % 22
    <cis,, cis'>^| gis''8[ cis dis fis]								| % 23
    \override TupletBracket #'stencil = ##f \times 3/5 { eis4^\( dis d cis b }			| % 24
    \sd a4 gis\) <cis, eis b'>									| % 25
    \su fis,4 \sd <fis' cis'> <fis cis'>							| % 26
    \su e, \sd <e' b'> e^~									| % 27
    <a, e'> a' <a e'>										| % 28
    \su <dis fis>2_\markup { \italic "legato." } <cis eis>4					| % 29
    <cis e!>2 <c dis>4										| % 30
    <b d!>2 <bes cis!>4										| % 31
    <a c>2 <gis! b!>4										| % 32
    <cis,, cis'>4 \sn \sd <cis' gis' b>4*1/2 s8 \sf <cis eis b'>4				| % 33
    \su fis, \sn \sd <fis' cis'>4*1/2 s8 \sf <fis cis'>4					| % 34
    \su e, \sn \sd  <e' b'>4*1/2 s8 \sf e4^>^~							| % 35
    \su <a, e'>4^( \sd a') a^~									| % 36
    <d, a'> <d a'> <a a'^~>									| % 37
    <d a'> <d a'> <a a'^~>									| % 38
    \su a' gis2											| % 39
    \times 2/3 { d'8^([ cis b)] } a4*2								| % 40
    \cadenzaOn d,4\rest s \cadenzaOff								| % 0
    \su fis,8_.[\sn fis'_.] \clef treble d''4\rest b^>^\( \sf					| % 41
    <cis,^4 a'^1>8[ <b^5 gis'^1>] <cis^4 a'^1>4\) \clef bass \sd fis,^1^>\sn			| % 42
    \su fis,8_.[ fis'_._1] \clef treble d''4\rest b^>^\( \sf					| % 43
    <cis,_4 a'_1>8[ <b_5 gis'_1>] <cis_4 a'_1>4\) \clef bass cis,^1_>\sn			| % 44
    cis,8_.[ cis'^1] \clef treble b''4\rest gis^>^\( \sf					| % 45
    <a, fis'>8[ <gis eis'>] <a fis'>4\) \clef bass cis,4^> \sn					| % 46
    cis,8_.[ cis'_.] \clef treble b''4\rest gis^>^\( \sf					| % 47
    <a, fis'>8_([ <gis eis'>] <a fis'>4)\) \clef bass fis,4^> \sn				| % 48
    fis,8_.[ fis''_.] \clef treble d''4\rest b^>^\( \sf						| % 49
    <cis, a'>8_([ <b gis'>] <cis a'>4)\) \clef bass \sd fis,^>\sn				| % 50
    \su fis,8_.[ fis'_.] \clef treble d''4\rest^\( b^> \sf					| % 51
    <cis, a'>8_([ <b gis'>] <cis a'>4)\) \clef bass cis,_>\sn					| % 52
    cis,8_.[ cis'_.] \clef treble b''4\rest gis^>^\( \sf					| % 53
    <a, fis'>8_([ <gis eis'>] <a fis'>4)\) \clef bass cis,4^> \sn				| % 54
    cis,8_.[ cis'_.] \clef treble b''4\rest gis^> \sf						| % 55
    <gis, dis' fis>4^(_\( <cis eis>)\) b'\rest \clef bass					| % 56
    cis,,, \sn \sd <cis' gis' b> <cis eis b'>4*3/4 s16 \sf					| % 57
    \su fis,4 \sn \sd <fis' cis'> <fis cis'> \sf						| % 58
    \su e, \sn \sd <e' b'> e^~_ \sf								| % 59
    \su <a, e'>^( \sn \sd a' <a e'>) \sf							| % 60
    \su <dis fis>2_\markup { \italic "legato." } <cis eis>4					| % 61
    <cis e!>2  <c dis>4										| % 62
    <b d!>2 <bes cis!>4										| % 63
    <a c>2 <gis! b!>4										| % 64
    <cis,, cis'> \sd <cis' gis' b> <cis eis b'>							| % 65
    \su fis, \sd <fis' cis'> <fis cis'>								| % 66
    \su e, \sd <e' b'> e^~									| % 67
    \su <a, e'> \sd a' a^~									| % 68
    <d, a'> <d  a'> <a a'^~>									| % 69
    <d a'> <d a'> <a a'^~>									| % 70
    \su a' gis2											| % 71
    \tu \times 2/3 { d'8^([ cis b)] } a2^\fermata						| % 72

  } \\ \relative c' {

    \cadenzaOn s4 \cadenzaOff									| % 0
    s2.												| % 1
    s												| % 2
    s												| % 3
    s												| % 4
    \sd a4_5 gis2_4										| % 5
    g4_5 fis2_4											| % 6
    f4_\markup { \finger "5-4" } e2_5								| % 7
    es4_4 d2_5											| % 8
    s2.												| % 9
    s												| % 10
    s												| % 11
    s												| % 12
    s												| % 13
    s												| % 14
    d2 <cis cis'>4										| % 15
    fis2*3/2										  \bar":|:"% 16

    \cadenzaOn s4 \cadenzaOff								   \bar"|"% 0
    s4 \sd gis2_~										| % 17
    gis b4_.											| % 18
    s gis2_~											| % 19
    gis b4											| % 20
    s gis2_~											| % 21
    gis b4_.											| % 22
    s gis2_~											| % 23
    gis d4\rest											| % 24
    s2.												| % 25
    s												| % 26
    s												| % 27
    s												| % 28
    a'4 gis2											| % 29
    g4 fis2											| % 30
    f4 e2											| % 31
    es4 d2											| % 32
    s2.												| % 33
    s												| % 34
    s												| % 35
    s												| % 36
    s												| % 37
    s												| % 38
    d2 <cis cis'>4										| % 39
    fis2*3/2											| % 40
    \cadenzaOn s2 \cadenzaOff									| % 0
    s4 <d'_3 fis_2_~>2										| % 41
    fis2 s4											| % 42
    s <d_3 fis_2_~>2										| % 43
    fis s4											| % 44
    s <b,_3 cis_2_~>2										| % 45
    cis s4											| % 46
    s <b cis_~>2										| % 47
    cis s4											| % 48
    s <d fis_~>2										| % 49
    fis2 s4											| % 50
    s <d fis_~>2										| % 51
    fis s4											| % 52
    s <b, cis_~>2										| % 53
    cis s4											| % 54
    s4 cis2											| % 55
    s2.												| % 56
    s												| % 57
    s												| % 58
    s												| % 59
    s												| % 60
    a4 gis2											| % 61
    g4 fis2											| % 62
    f4  e2											| % 63
    es4 d2											| % 64
    s2.												| % 65
    s												| % 66
    s												| % 67
    s												| % 68
    s												| % 69
    s												| % 70
    d2 \su <cis cis'>4										| % 71
    \sd fis2._\fermata										| % 72

  } >>

>>

\layout { }

\midi { }

}
