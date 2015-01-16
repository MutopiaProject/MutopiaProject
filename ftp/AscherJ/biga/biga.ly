\version "2.19.15"
\include "english.ly"

\header {
	date = "189-?"
	source = "Sydney: Nicholson & Co., (189-?)"
	style = "Romantic"
	instrument = ""
	license = "Public Domain"
	maintainer = "Stan Sanderson"
	maintainerEmail = "physinfoman@ameritech.net"
	title = "Alice, Where Art Thou."
	subsubtitle = "Transcribed for the pianoforte by Joseph Ascher."
	poet = ""
	composer = "Joseph Ascher"
	opus = "1829-1869"
    % Piece abused into the tempo mark...
    % easier to move it here than from its normal pace.
    piece = \markup{\bold { \null \translate #'(13 . -1) "Moderato Capriccioso."}}
	mutopiatitle = "Alice, Where Art Thou?"
	mutopiainstrument = "Piano"
	mutopiacomposer = "AscherJ"
	mutopiasource = "Sydney: Nicholson & Co., (1890s)"
	mutopiastyle = "Song"
	mutopiadate = "1890s?"
	mutopiaopus = " "
	mutopiaarranger = "Transcribed for the pianoforte by Joseph Ascher"
	moreInfo = "<p>This piece, an expansion of Ascher's popular \"Alice\" tune, is, I believe, typical of the repertory of the parlor performer. I suspect it exists on a piano roll somewhere.</p><p>The original is very dim; the transcription was as true as possible; corrections are welcome.</p>"

 footer = "Mutopia-2015/01/16-449"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond" " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain" " by the typesetter " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
	}

%%%%%
%%%%% This piece, an expansion of Ascher's popular "Alice" tune,
%%%%%	is, I believe, typical of the repertory of the parlor performer.
%%%%%	I suspect it exists on a piano roll somewhere.
%%%%% The original is very dim; the transcription was as true as
%%%%%	possible; corrections are welcome.
%%%%% The limitations of Lilypond (especially with respect to slurs)
%%%%% are apparent; however, its strengths, even at the development
%%%%%	stage, are amazing.
%%%%%

%#(set-global-staff-size 17)
#(set-global-staff-size 18)
\paper{
  linewidth = 165 \mm
  indent = 8 \mm
}

\paper {
  top-margin = 8\mm                              %-minimum top-margin: 8mm
  system-system-spacing = #'((basic-distance . 24) (minimum-distance . 16) (padding . 2))
  score-system-spacing = #'((basic-distance . 16) (minimum-distance . 9) (padding . 1.2))
  markup-system-spacing = #'((basic-distance . 8) (padding . 4)) % small because of piece markup
  score-markup-spacing = #'((basic-distance . 18) (padding . 0.75))
  markup-markup-spacing = #'((basic-distance . 1.5) (padding . 0.75))
  top-system-spacing = #'((basic-distance . 12) (padding . 6))
  top-markup-spacing = #'((basic-distance . 4) (padding 1.5))
  last-bottom-spacing = #'((basic-distance . 6) (padding . 5))
  ragged-bottom = ##f
  ragged-last-bottom = ##f
  bottom-margin = 10\mm
}

su = \stemUp
sd = \stemDown
sb = \stemNeutral
csu = \change Staff=upper
csl = \change Staff=lower
hslip = { \once\override NoteColumn.force-hshift=0.5 }

upper = \relative c'''' {
  \time 3/4 \key df \major
  \set subdivideBeams = ##t
  \override DynamicTextSpanner.style = #'none
  \omit TupletBracket

  %% 1
  \tupletSpan 16
  \tuplet 3/2
  { \ottava #1
    \su g'32[( df bf]_\markup {\italic "L.H."} \sd g[ f e]
    \ottava #0
    \su g[ df bf] \sd g[ f e]
    \su g[ df bf] \sd g[ f e]
    \su g[ df bf] \change Staff=lower \sd g[ f e]
    \su g[ df bf]
	\sd g[ f e] \su g'[ df bf]
	\sd g[ f e]) } |
  %% 2 - 4
  s2.|
  \set Score.baseMoment = #(ly:make-moment 1/8)

  \change Staff= upper
  bf''''4^^(\( bf8.\) af16 g32[_\markup {\italic "rit."} f e df c bf af g]) |
  <<{g8 f ~ f2}\\{r4 <c af>8 r r4}>> | \break
  %% 5 - 6
  r4 \tupletSpan 16
  \tuplet 3/2
  { \ottava #1
    \su f'''32[( c af]_\markup \translate #(cons -3 -1){"" \italic "L.H."} \sd f[ df c]
    \ottava #0
    \su f[ c af] \sd f[ df c]
    \su f[ c af] \sd f[ df c]
    \su f[ c af] \change Staff=lower \sd f[ df c] |

    \su f[ c af] \sd f[ df c]
    \su f'[ c af] \sd f[ df c]
    \su f'[ c af] \sd f[ df c]
    \su f'[ c af] \sd f[ df c]
    \su f'[ c af] \sd f[ df c]
    \su f'[ c af] \sd f[ df c]) } |
  %% 7 - 11
  \change Staff=upper
  s2  s32
  \sd af''''16[(^^_\markup {"" \raise #-4.0 \italic "rit."}_\> g32 f ef d c]\! |
  c8 b) r4^\markup {"" \raise #3 \italic "Agitato ed un poco piu mosso"}
  \su <b! b,!>8.(_\mf_\< <c c,>16 |
  <cs cs,>8 <d d,>)\! r4 \slurUp <d d,>8.(_\< <ef ef,>16 |
  \sd <e e,>8 <f f,>)\! r4 <f f,>8.(_\markup {"" \raise #-2.5 \italic "cresc."} <g g,>16) |
  \acciaccatura bf,8 <bf bf'>4(^^_\markup {"" \raise #-3 \dynamic f \raise #-3  \italic "dim. e rall."}
  ~ <bf bf'>8.[ <af af'>16^^]
  <g g'>^^ <f f'>^^ <ef ef'>^^ <d d'>^^) |
  %% 12 - 14 (page 2)
  <f f'>8[(^^_\> <ef ef'>8])\! <ef' g c ef> r \su
  <ef ef,>8.(^\markup {"" \raise #1.5 \italic "dolce"}_\p <ef ef,>16 |
  <ef, af c ef>4\arpeggio \sd <af c ef af>4. ~ <bf c ef bf'>8_\> |
  <af df ef af>8[ <g g'>8])\! \su
  \ottava #1
  f'''32[(_\markup {\italic "legg."} ef df bf g ef df bf
          \ottava #0
          g ef df bf g ef df bf]) | \sb
  %% 15 - 17
  \once \override Score.Hairpin.extra-offset = #'(0 . +1.5)
  <ef af c ef>4(\arpeggio_\<_
  \markup {\italic "poco a poco accellerando"}
  \sd <af c ef af>4. ~ <bf c ef bf'>8\! |
  <af df ef af>8[ <g g'>8]) \su
  \ottava #1
  f'''32[( ef df bf g ef df bf \ottava #0 g ef df bf g ef df bf]) |
  <ef af c ef>4(\arpeggio_\markup {\italic "cresc."} \sd <af c ef af>4. <gf! c ef gf!>8\arpeggio |
  %% 18 - 20
  \sd <gf c ef gf>8[\arpeggio <f f'>)] \su
  \ottava #1
  f'''32[( ef c a f ef c a \ottava #0 f ef c a f ef c a ]) |
  \sd <f' bf df f>4(_\f <bf df f bf>4. <af df f af>8 |
  <af d f af>8[ <g g'>)] \su
  \ottava #1
  g'''32[( f_\markup {\italic "rit."} d b g f d b
           \ottava #0
           g f d b g f d b ]) |
  %% 21 - 22
  \sd <c' e g c>8\arpeggio_\markup {\dynamic fff \italic "con fucco"} r
  \tupletSpan 16
  \tuplet 3/2
  { \ottava #1
    \su e''32[( a g] \sd c,[ g e]
    \ottava #0
    \su e[ a g] \sd c,[ g e]
    \su e[ a g] \sd c,[ g e]
    \su e[ a g] \change Staff=lower \sd c,[  g e]) }
  \change Staff = upper| s2. |
  %% 23 - 25
  r4^\markup {"" \raise #2 \italic "a tempo"} r8 \su <c' c'>8[_\< <c c'> <c c'>8]\! |
  <df f c'>16([ bf')] \sd <f bf ef>\arpeggio([ df')]
  <bf df g>\arpeggio([ f')] <df f c'>\arpeggio([_\< bf')]
  <f bf ef>\arpeggio([ df')]
  \ottava #1
  <bf df g>\arpeggio([ f')]\! |
  <df f c'>([ bf')] <f bf ef>([_\< df')]
  <bf df gf>\arpeggio([ f')] <bf, df gf>([\!_\markup {\italic "rit."} f')]
  <bf, df gf>([ f')] <bf, df gf>([ f')] |
  %% 26 - 27
  ef32[(_\markup {\dynamic f \italic "brillante"} f g af c, df d ef af,
        bf b c ef, f g af
        \ottava #0
        c, df! d ef af, bf! b c)] |
  \su ef,[( f g af c, df d ef af, bf b c ef, f g af
            c, df! d ef af, bf! b c]) |
  %% 28 - 29
  \change Staff = lower
  ef,4^> <ff g,>32[(^\markup {"" \raise #1 \italic "R.H."} <ef bf>32])
  \sd ef[(_\markup \translate #(cons -4.5 0){"" \raise #-1 \italic "L.H."}_\<  ef,])
  \su <ff'' g,>32[( <ef bf>32]) \sd ef[( ef,])
  \change Staff = upper
  \su <ff'' g,>32[( <ef bf>32]) \sd ef[( ef,])
  \su <ff'' g,>32[( <ef bf>32]) \sd ef[( ef,])\! |
  \ottava #1
  \su <ff'' g,>32[( <ef bf>32])_\< \sd ef[( ef,])
  \su <ff' g,>32[( <ef bf>32]) \sd ef[( ef,])
  \su <ff' g,>32[( <ef bf>32]) \sd ef[( ef,])
  \su <ff' g,>32[( <ef bf>32]) \sd ef[( ef,])
  \su <ff' g,>32[( <ef bf>32]) \sd ef[( ef,])
  \su <ff' g,>32[( <ef bf>32]) \sd ef[( ef,])\! |
  %% 30 - 31
  ef'[( ef,] ef'[ ef,] ef'[ ef,] ef'[ ef,]
  ef'[ ef,] ef'[ ef,] ef'[_\markup {\center-column {\italic " " "cresc." \italic "molto ritenuto"} }  ef,] ef'[ ef,]
  ef'[ ef,] e'[ e,] f'[ f,] g'[ g,] ) |
%%% following is a workaround due to bug preventing midi from
%%% timing properly with 16th notes (32nd notes would time o.k.)
  \acciaccatura {af16*1/2[ c16*1/2 ef16*1/2]}
  \once \override Staff.Beam.damping = #0
  af32^^[( f ef c af f ef c
           \ottava #0
           af' f ef c af f ef c af' f ef c af f ef c]) |
  %% 32 - 34
  af'''[( f ef c af f ef c af' f ef c af f ef c af' f ef c
          \change Staff = lower
          \su af f ef c]) |
  \change Staff = upper r4 r8 af''[_-^\markup {\italic "parlando"}
                                   af_- af_-] |
  \acciaccatura c8 \slurDown bf8( af4) af8[(_- af_- af_-]) |
  %% 35 - 37
  \acciaccatura c8 bf af4 af8[(_-_\< af_- af_-]) | \slurNeutral
  \acciaccatura {af16[ c]} bf4(\! \omit TupletNumber
  \tuplet 17/16 { \sd
                  bf32)[( af c ef af c ef gf bf^\markup {"" \raise #1.0 \smaller \italic "17"}
                          af gf ef c af gf ef c]) }|
  bff2(_\markup {"" \raise #-3 \italic "rit." } ~ bff8[ af]) |
  \revert TupletNumber.stencil

  %% 38 - 42
  \override Score.RehearsalMark.self-alignment-X = #left
  \mark \markup {"" \raise #4.0 \bold \large "Andante con espress."}
  \acciaccatura {af,16[_\markup {\dynamic p \italic "cantabile"} df f]} af4( df4. ef8 |
  \acciaccatura {ef,16[ gf]} df'4 c2) |
  \acciaccatura {df,16[ af']} bf4( \acciaccatura c8 bf[ a bf c] |
  \acciaccatura {c,16[ f]} bf4 af) r8 af |
  \acciaccatura {bf,16[ d]} af'4( f'4. \acciaccatura {f16[ af]} gf8 |
  %% 43 - 48
  \acciaccatura {gf,16[ bf]} f'4 ef4.) bf8( |
  \acciaccatura {ef,16[ gf_\markup {"" \raise #-3 {\dynamic p \italic "rit."}} af]} df4
  \acciaccatura {c16[ df]} c8[ bf c8. af16]) |
  \acciaccatura {df,16[ f]_\markup {"" \raise #-3 \italic "a tempo"}} df'4 r r8 <af af'>8 |
  <af df f af>4\arpeggio(_\markup {\italic "armonioso"} <df f af df>4.\arpeggio ~ <ef f af ef>8 |
  <df gf af df>4\arpeggio <c gf' af c> ~ <c gf' af c>)_\< |
  <bf df e bf'>\arpeggio(\! <bf bf'>8 <a a'> <bf bf'> <c c'> |
  %% 49 - 56
  <bf df f bf>4\arpeggio ~ <af df f af>) r8 <af af'>8( |
  <af bf d af'>4\arpeggio <af' bf d af'>\arpeggio
  <gf bf d gf>8\arpeggio[ <f bf d f>\arpeggio]) |
  <f gf bf f'>4\arpeggio_\> <ef gf bf ef>4.\arpeggio\!
  <bf gf' bf>8(\arpeggio_\p |
  <df gf df'>4\arpeggio <c gf' c>8[ \arpeggio_\markup {"" \raise #-1.5 \italic "rit."} <bf gf' bf> \arpeggio
                                    <c gf' c>\arpeggio <af gf' af>8]\arpeggio |
  <df f df'>4\arpeggio)_\markup {"" \raise #-2 \italic "a tempo"} r r8
  %% last note measure 53 on -
  <<{ s8 r4 r4 <f f'>^> ~ <f f'>2 <f f'>4^> s4}\\
    {f,8( df'4_\markup {"" \raise #-2 \italic "dolce"} c4.) f,8( c'4 bf)
     r8 f ~ <f f'>^\markup {"" \raise #1 \italic "con dolore"}}>>
  <gf ef'>8[( <f df'> <ef c'> <df bf'>8]) |
  %%  57 - 59
  <df bf'>4 <c a'> r8 <f f'> |
  <<{r4 r16 f'[( f' f] \ottava #1
     f') \ottava #0 r r8}\\
    {<df,, df'>4 <c c'>4. <f, f'>8}>> |
  <<{r4 r16 f'[( f' f] \ottava #1
     f') \ottava #0 r r8}\\{<c,, c'>4 <bf bf'>4. r8}>>
  %% 60 - 63
  <<{gf'8[( f' ef, df' c, bf'])}\\{gf16[ gf'] f[ f,] ef[ ef']
                                   df[ df,] c[ c'] bf[ bf,] }>> |
  \set PianoStaff.connectArpeggios = ##t
  <a c f a>8\arpeggio \ottava #1
  <f' f'>8[ <f f'>_\< <f f'> <gf f'> <g f'>8]\! |
  \set PianoStaff.connectArpeggios = ##f
  <<{f'16[ f f f f f f f f f f f]}\\{af,4_> df4._> ef8_>}>> |
  <<{gf16[ gf gf gf gf gf gf gf gf gf gf gf]}\\{df4_> c2_>}>> |
  %% 64 - 66
  <<{gf'16[ gf gf gf gf gf gf gf gf gf gf gf]}\\
    {bf,4 \acciaccatura c8 bf[ a bf c]}>> |
  <<{gf'16[ gf gf gf f f f f f f f f]}\\
    {bf,4 af4. <af f>8}>> | \ottava #0
  \mergeDifferentlyDottedOn
  <<{f'4( <ef ef,>4. d8)}\\{ <f, f'>16[ <af bf> r <af bf>
                                        ef <af bf> r <af bf> r <af bf> <d, d'> <af' bf>16]}>> |
  %% 67 - 70
  <<{d8[( ef] <bf bf,>4. ef8)}\\{
    <d, d'>16[ <gf bf> ef <gf bf> bf, <ef gf> r <ef gf> r
               <ef gf> <ef ef'> <gf bf>16]}>> |
  <<{ef'4 df8[^^ c^^ bf^^ af^^]}\\
    {<ef ef'>16[ <gf af> r <gf af> df <gf af> c, <gf' af> bf, <c gf'>
                 <af af'> <c gf'>16]}>> |
  <af' df af'>8^._\sfz s8 s4 s4 |
  <<{bf4.( c8[ df ef])}\\
    {<bf bf,>16[_\mf <df, ef> r <df ef> r <df ef> <c c'> <gf' bf> <df df'>
                <gf bf> <ef ef'> <gf bf>16]}>> |
  %% 71 - 74
  <<{af4.( bf8[ c df)]}\\{<af af,>16[ <f df> r <f df> r <f df>
                                      <bf bf,> <f df> <c' c,> <af f> <df df,> <af f>16]}>> |
  <f f'>8^.[_\f <af f df af>^.]\arpeggio
  \set PianoStaff.connectArpeggios = ##t
  <af df f>\arpeggio r\fermata
  \set PianoStaff.connectArpeggios = ##f r <af af,>( |
  <ef ef'>^.)[ <af gf ef af,>8]\arpeggio
  \set PianoStaff.connectArpeggios = ##t
  <af ef' gf af>\arpeggio
  r r <af af,>( |
  <df, f af df>^.) \ottava #1
  <<{\override Stem.details.beamed-lengths = #'(6.6 5.8 5.0)
     af''8[( s f s df])}\\{af'16[ af' gf gf, f f' ef ef, df df']}>> |
  \set PianoStaff.connectArpeggios = ##f
  %% 75 - 78
  %% 75 & 76
  <<{c8.[( c16] bf8.[ bf16]) s8 s8 bf,[( gf' f' ef, df' c,])}
    \\{c'16[ c, c c' bf bf, bf bf' bf,^> bf' bf bf,] ~
       bf8[_\p gf'16 gf' f f, ef ef' df df, c c']}>> |
  <<{bf8.[( bf16] af8.[ af16]) \ottava #0 s8 s8}\\
    {bf16[ bf, bf bf' af af, af af' af,,^> af' af af,]}>> |
  <<{bf4.^> c8[^\markup {\italic "cresc."} df ef]}\\
    {\slurUp bf16[ bf'( bf bf' bf bf, c, c' df, df' ef, ef'])}>> |
  %% 79 - 82
  <<{af,,4.^> bf8[ c df]}\\
    {af16[ \slurUp af'( af af' af af, bf, bf' c, c' df, df'])}>> |
  <f, af df f>8\arpeggio \ottava #1
  af''16[( af, \ottava #0 af af, af af, \csl \su af, af, af af,]) |
  \csu \sd <ef''' gf af ef'>8\arpeggio \ottava #1
  af'''16[( af, \ottava #0 af af, af af, \csl \su af, af, af af,]) |
  \csu \sd <df''' f af df>8\arpeggio \ottava #1
  af'''16[( af, \ottava #0 af af, af af, \csl \su af, af, af af,]) |
  %% 83 - 85
  \slurUp
  af''16[( \csu bf32
           ^\markup {\null \translate #'(0 . 1) \italic "leggiero"}
           _\markup {\null \translate #'(0 . -3) \italic "marcato"}
           c df ef f gf af bf c df ef f gf af bf c df ef
           \ottava #1 f gf af bf] |
  c[ df ef f   gf ef c af  gf ef c af \ottava #0
     gf ef c af gf ef c af \csl gf ef c af]) |
  bf'16[( \csu c32 df  ef f gf af  bf c df ef  f gf af bf  c df ef f
          \ottava #1 gf af bf c] |
  %% 86 - 88
  df[ ef f ef df af f ef f ef df af \ottava #0
      f ef df af f ef df af f ef df af]) |
  \csl af'16[( bf32 d \csu f af bf d f af bf d \ottava #1
               f af bf d f af af af af af af af] |
  af[ gf ef bf af gf ef bf af' gf ef bf
      \ottava #0 af gf ef bf af' gf ef bf af gf ef bf ]) |
  %% 89 - 91
  df[( ef f gf af bf c df ef f gf af bf c df ef \ottava #1
       f gf g af a bf b c] |
  df[ ef f ef df af f ef \ottava #0
      df af f ef df af f ef df \csl af f ef df af f df]) |
  \slurUp
  af''16[( \csu bf32 c df ef f gf af bf c df ef f gf af bf c df ef
           \ottava #1 f gf af bf] |
  %% 92 - 94
  c[ df ef f   gf ef c af  gf ef c af \ottava #0
     gf ef c af gf ef c af \csl gf ef c af]) |
  bf'16[( \csu c32 df  ef f g a  bf c df ef  f g a bf  c df ef f
          \ottava #1 g a bf c] |
  df[ ef f ef df af f ef f ef df af \ottava #0
      f ef df af f ef df af f ef df af]) |
  %% 95 - 97
  \csl af'16[( bf32 d \csu f af bf d f af bf d \ottava #1
               f af bf d f af af af af af af af] |
  af[ gf gf f f ef ef df df c c bf bf af af gf gf f f ef ef df df c] |
  \ottava #0
  c[ bf bf af af gf gf f f ef ef df df c c bf bf af af gf gf f f ef]) |
  %% 98 - 100
  \csl df16^^[ \csu ef32( f gf af bf c df ef f gf af bf c df ef f gf
               \ottava #1 af bf c df ef] |
  f[ ef c a f ef c a \ottava #0 f ef c a f' ef c a f ef c a
     \csl f a c f]) |
  \csl c16[( \csu \ottava #1 f'''32 df bf f df bf \ottava #0
             f' df bf f df bf f' df bf f df bf \csl f \csu bf df f]) |
  %% 101 - 103
  \csl f^^[( \csu gf g af a bf b c df d ef e f gf g af a bf b c df d ef e] |
  f[ a c a f c a c f c a f c a f' c a f c a \csl f \csu a c f]) |
  \csl s4 c32[( \hslip f, a c \csu f a c f a c \ottava #1 f a f' f, f' f,])
  \ottava #0 |
  %% 104 - 106
  \csl s4 bf,,,32[( \hslip f bf df \csu f bf df f bf df \ottava #1 f bf
                    f' f, f' f,]) |
  r \sd gf[( gf' gf,]) r f[( f' f,]) r ef[( ef' ef,]) r df[( df' df,])
  r c[( c' c,]) r bf[( bf' bf,]) |
  <a c f a>16\arpeggio[ \ottava #0
                        <f f'>^.( <f f'>^. <f f'>^. <f f'>^. <f f'>^.
                        <f f'>^.<f f'>^. <gf f'>^. <gf f'>^. <g f'>^. <g f'>^.]) |
  %% 107 - 108
  \ottava #1
  \tupletSpan 8

  \tuplet 3/2 {
    <f' af, f>16[(^\markup {"" \raise #2.5 \italic "largamente"}  <f af, f> <f af, f>)
                  <f af, f>(  <f af, f> <f af, f>)
                  <f df f,>(  <f df f,> <f df f,>)
                  <f df f,>(  <f df f,> <f df f,>)
                  <f df f,>(  <f df f,> <f df f,>)
                  <f ef f,>(  <f ef f,> <f ef f,>)] |
    \omit TupletNumber
    <gf df gf,> [ <gf df gf,> <gf df gf,>
                  <gf df gf,> <gf df gf,> <gf df gf,>
                 <gf c, gf> <gf c, gf> <gf c, gf>
                 <gf c, gf> <gf c, gf> <gf c, gf>
                 <gf c, gf> <gf c, gf> <gf c, gf>
                 <gf c, gf> <gf c, gf> <gf c, gf>16] |
    %% 109 - 110
    <gf bf, gf> [ <gf bf, gf> <gf bf, gf>
                  <gf bf, gf> <gf bf, gf> <gf bf, gf>
                  <gf bf, gf>^^ <gf bf, gf> <gf bf, gf>
                  <gf a, gf>^^ <gf a, gf> <gf a, gf>
                  <gf bf, gf>^^ <gf bf, gf> <gf bf, gf>
                  <gf c, gf>^^ <gf c, gf> <gf c, gf> ] |
    <gf bf, gf> [ <gf bf, gf> <gf bf, gf>
                  <gf bf, gf> <gf bf, gf> <gf bf, gf>
                  <f af, f> <f af, f> <f af, f>
                  <f af, f> <f af, f> <f af, f>
                  <f af, f> <f af, f> <f af, f>
                  <f af, f> <f af, f> <f af, f> ]
    %% 111 - 112
    \su <f bf, af f>^^[ <f bf, af f> <f bf, af f>
                        <f bf, af f> <f bf, af f> <f bf, af f>
                        <ef bf af ef> <ef bf af ef> <ef bf af ef>
                        <ef bf af ef> <ef bf af ef> <ef bf af ef>
                        <d bf af d,> <d bf af d,> <d bf af d,>
                        <d bf af d,> <d bf af d,> <d bf af d,> ] |
    <d bf gf d> [ <d bf gf d> <d bf gf d>
                  <ef bf gf ef> <ef bf gf ef> <ef bf gf ef>
                  <bf gf ef bf> <bf gf ef bf> <bf gf ef bf>
                  <bf gf ef bf> <bf gf ef bf> <bf gf ef bf>
                  <bf gf ef bf> <bf gf ef bf> <bf gf ef bf>
                  <ef bf gf ef> <ef bf gf ef> <ef bf gf ef> ] |
    %% 113 - 114
    <ef af, gf ef> [ <ef af, gf ef> <ef af, gf ef>
                     <ef af, gf ef> <ef af, gf ef> <ef af, gf ef>
                     <df af gf df> <df af gf df> <df af gf df>
                     <c af gf c,> <c af gf c,> <c af gf c,>
                     <bf gf ef bf> <bf gf ef bf> <bf gf ef bf>
                     <af gf ef af,> <af gf ef af,> <af gf ef af,> ] |
    \sd <af df f af> [ <af df f af> <af df f af>
                       <af df f af> <af df f af> <af df f af>
                       <af df f af> <af df f af> <af df f af>
                       <af df f af> <af df f af> <af df f af>
                       <af df f af> <af df f af> <af df f af>
                       <af df f af> <af df f af> <af df f af> ] |
    \ottava #0
    %% 115 - 117
    \omit TupletNumber
    <bf, df ef bf'> [( \ottava #1 <bf'' gf'>
                       gf, \ottava #0 <bf gf'> gf <bf gf'> gf
                       <gf bf,> gf,) \csl \su c, \csu \sd <c' c'>( <gf' bf>)
                       \csl \su df, \csu \sd <df' df'>( <gf bf>) \csl \su ef,
                       \csu \sd <ef' ef'>( <gf bf>)] |
    <af, df f af> [( \ottava #1 <af'' f'> f
                     \ottava #0 <af, f'> f <af f'> f <f af,> f,)
                     \csl \su bf,_^ \csu \sd <bf' bf'>( <f' af>) \csl \su c,_^
                     \csu \sd <c' c'>( <f af>) \csl \su df,_^ \csu \sd
                     <df' df'>( <f af>)] |
    <f af df f> [ \ottava #1 <df'' af'>( af]) \ottava #0
    \csl \su \clef treble <af, df f>_.[ \csu \sd
                                        \ottava #1 <df' af'>( af)] \ottava #0
    \csl \su <af, df f>_.[ \csu \sd \ottava #1
                           <df' af'>( af)] \ottava #0 \csl \su <af,, df f>_.[ \clef bass
                                                                              \csu \sd <df' af'>( af)] \csl \su <af,, df f>_.[ \csu \sd
                                                                                                                               <df' af'>( af)] \csl \su <af,, df f>_.[ \csu \sd
                                                                                                                                                                       <af'' df,>( af,)] |
  }
  %% 118 - 120
  <ef'' gf af ef'>8\arpeggio
  \tupletSpan 16
  \tuplet 3/2  {
    \csl \su \clef treble <af c gf'>16_.[ \csu \sd
                                          \ottava #1 <c' af'>( af)]
    \ottava #0 \csl \su <af, c gf'>_.[ \csu \sd
                                       \ottava #1 <c' af'>( af)]
    \ottava #0 \csl \su <af,, c gf'>_.[ \clef bass
                                        \csu \sd <c' af'>( af)] \csl \su <af,, c gf'>_.[
                                          \csu \sd <c' af'>( af)] \csl \su <af,, c gf'>_.[
                                            \csu \sd <c'' c,>( af,)] } |
  <df' f af df>8
  \tupletSpan 16
  \tuplet 3/2  {
    \csl \su \clef treble <af' df f>16_.[ \csu \sd
                                          \ottava #1 <df' af'>(^\markup {""\raise #2 \italic "a tempo"} af)]
    \ottava #0 \csl \su <af, df f>_.[ \csu \sd
                                      \ottava #1 <df' af'>( af)]
    \ottava #0 \csl \su <af,, df f>_.[ \csu \sd
                                       <df' af'>( af)]
    \csl \su <af, df f>_.[ \clef bass \csu \sd <df' af'>( af)]
    \csl \su <af,, df f>_^[  \csu \sd <df' af'>( af)] |
    \csl \su <af, df f>_^[  \csu \sd <df' af'>( af)]
    \csl \su <af,, df f>_^[  \csu \sd <df' af'>( af)]
    \csl \su <af, df f>_^[  \csu \sd <df' af'>( af)]
    \csl \su \slurDown <af,, df f> [ <df' af'>( af)]
    <af, df f> [ <df' af'>( af)]
    <af, df f> [ <df' af'>( af)]  } |
  %% 121
  \set subdivideBeams = ##f
  \tuplet 11/6{ \slurUp
                f32[(\sustainOn^\markup {"" \raise #8 \italic "a tempo"}
                     af df_\markup {"" \raise #-4 \italic "trem."}
                     ef f af df ef \csu \sd
                     f af df ef f af df ef f af
                     \ottava #1
                     df ef f ef df af f ef df af
                     \ottava #0
                     f' ef df af f ef df af f ef df af
                     \csl \su f ef df af])
              }
  %% 122 - 123
  \tuplet 5/4{ \slurUp
               f32[( \sustainOn -\tweak #'X-offset #-4.0 ^\fff
                     af df ef f af df ef \csu \sd
                     f af df ef f af df ef f
                     \ottava #1
                     af df ef] } f8[)
                       \ottava #0
                       <f,,, af df f>^^] |
  \ottava #1
  <af'' df f af>8_\markup {"" \raise #-3 \dynamic rfz }
  \ottava #0	r r r4 r8 \bar "|."

}



lower = \relative c, {
  \time 3/4 \key df \major
  \set subdivideBeams = ##t
  \override DynamicTextSpanner.style = #'none
                                %\override TupletBracket.bracket-visibility = #'if-no-beam
  \omit TupletBracket
  %% 1
  s4^\markup {"" \raise #2.0 \dynamic ff \raise #2.0 \italic "con fucco"} s s |
  %% 2-4
  \set Score.baseMoment = #(ly:make-moment 1/8)
  \su df4_^(^\markup {\italic "R.H."} df32[)( c_\< e g bf c e g bf c
                                            \change Staff=upper \sd
                                            e g bf c e g])\! | \change Staff=lower
  R2. | r4^\p <f,, c af f>8\arpeggio\sustainOn r8 r4\sustainOff |
  %% 5 - 6
  s4^\markup {"" \raise #2.0 \dynamic ff \raise #2.0 \italic "con fucco"} s s  |
  s2. |
  %% 7 - 11
  \su f,,8^^_\<^\markup {\italic "L.H."} ~ f32[( af c f af c f af c
                                                 \change Staff=upper
                                                 \sd	f af c f])\!  s32*7 \change Staff=lower |
  r4^\markup {"" \raise #2 \dynamic p \raise #2 \italic "a tempo"}
  <b,, d, g,>8\arpeggio_\rfz r8 r4 |
  r4 <b d, g,>8\arpeggio_\rfz r8 r4 |
  r4 <b d, g,>8\arpeggio_\rfz r8 r4 |
  R2. |
  %% 12 - 14 (page 2)
  r4^\markup {\italic "a tempo"} \slurUp \acciaccatura <c, c,>8 <c ef g c>8 r8 r4 |
  <af af,>8([\sustainOn ef' <af c> ef <af c> ef)]\sustainOff |
  <<{af,2.}\\{\slurUp af8[( ef' <g df'> ef <g df'> ef])}>> |
  %% 15 - 17
  <<{af,2.}\\{\slurUp af8[(\sustainOn ef' <af c> ef <af c> ef])\sustainOff}>> |
  <<{af,2.}\\{\slurUp af8[(\sustainOn ef' <g df'> ef <g df'> ef])\sustainOff}>> |
  <<{af,2.}\\{\slurUp af8[(\sustainOn ef' <af c> ef <af c> ef])\sustainOff}>> |
  %% 18 - 20
  <<{a,2.}\\{a8[( f' <a ef'> f <a ef'> f])}>> |
  <bf, bf,>(^^ f' <bf df> f[ <bf df> f]) |
  <b, b,> g' <b f'> g[ <b f'> g] |
  %% 21 - 22
  \slurUp \acciaccatura<c, c,>8\sustainOn <c g' e'>8 s8 s4 s4 |
  \tupletSpan 16
  \tuplet 3/2 {
    \su e32[ af g] \sd c,[ g e]
    \su e'32[ af g] \sd c,[ g e]
    \su e'32[ af g] \sd c,[ g e]
    \su e'32[ af g] \sd c,[ g e]
    \su e'32[ af g] \sd c,[ g e]
    \su e'32[ af g] \sd c,[ g e] } |
  %% 23 - 25
  \su c4.^\markup {\italic "R.H."}_\rfz r8 r4 |
  \sd df8[( f'^\markup {"" \raise #2 \italic "cresc."} <bf df> f <bf df> f]) |
  <df df,> [(^\markup {"" \raise #4 \italic "cresc."} f <bf df> <bf df f>\arpeggio
             \clef treble <df f bf>\arpeggio <f bf df>\arpeggio]) \clef bass |
  %% 26 - 27
  <ef, ef,>8 \clef treble \sd <c''' ef af> [^^ <af c ef>^^ <ef af c>^^
                                            <c ef af>^^ <af c ef>^^] | \su
  <c af ef> [ <af ef c> <ef c af> \clef bass <c af ef> <af ef c> <ef c af> ] |
  %% 28-29
  \sd <ef, ef,>4_>^\markup {"" \raise #3 \italic "cresc."} s4 s4  | s4 s4 s4  |
  %% 30 - 31
  R2. | <af af,>8[(^\markup {\dynamic f \italic "a tempo" \dynamic p}
                   ef' <af c> ef <af c> ef]) |
  %% 32 - 34
  af,8[( ef'^\markup {"" \raise #2.0 \italic "dim. e rit."} <af c> ef <af c> ef]) |
  \su <af, af,>4\sustainOn^\markup {"" \raise #2.0 \dynamic p "" \raise #2.0 \italic "a tempo"} r4 r4 |
  \sd r4 <af' ef' gf>8^. r8 r4 |
  %% 35 - 37
  r4 <af b d>8^. r8 r4 | r

  \acciaccatura {\override Stem.details.beamed-lengths = #'(3.6 4.2)
                 af,16[ af']}

  <af c gf'>8\arpeggio^\markup \translate #(cons -3 0){\dynamic p }
  r^\markup {"" \raise #2.0 \italic "con delicatezza"} r4 |
  R2. |
  %% 38 - 42
  <df, df,>8[(\sustainOn af' <df f> af <df f> af)]\sustainOff |
  <df, df,> [(\sustainOn af' <c gf> af <c gf> af)]\sustainOff |
  <df, df,> [(\sustainOn gf <bf df> gf <bf df> gf)]\sustainOff |
  <df df,> [(\sustainOn f <af df> f <af df> f)]\sustainOff |
  <bf, bf,> [(\sustainOn bf'_\markup {"" \raise #-2 \italic "simile"} <d af'> bf <d af'> bf)] |
  %% 43 - 48
  <ef, ef,> [( bf' <ef gf> bf <ef gf> bf)] |
  <af, af,> [( af' <c gf'> af, <c gf'> af)] |
  <df df,> [( af' <df f> af <df f> af)] |
  <df, df,> [( af' <df f> af <df f> af)] |
  <ef ef,> [( af <c gf'> af <c gf'> af)] |
  <e e,> [( g <df' g> g, <df' g> g,)] |
  %% 49 - 54
  <f f,> [( f <af df f> f <af df f> f]) |
  <bf, bf,> [( bf' <d af'> bf <d af> bf]) |
  <ef, ef,> [( bf' <ef gf> bf <ef gf> bf]) |
  <af, af,> [( af' <c gf> af <c gf> af]) |
  <df, df,> [( af' <df f> af <df f> af]) |
  f,[( f' <a ef'> f <a ef'> f]) |
  %% 55 - 59
  f,[( f' <bf df> f <bf df> f]) |
  f,[( f' f' f, f' f,]) |
  f,[( f' f' f, f' f,]) |
  \once \override Score.Hairpin.extra-offset = #'(0 . +1.5)
  f,[(^\< f' <a ef'>\!
      \once \override Score.Hairpin.extra-offset = #'(0 . +4.0)
      f <a ef'> f])^\< |
  f,[( f' <bf df>\! f <bf df> f]) |
  %% 60 - 63
  <<{a8[ bf c df ef e]}\\{f,2.}>> |
  <f a c f>8\arpeggio r^\markup {""\raise #2 \italic "rit."} r4 f4 |
  <df df,>8[(^\markup {""\raise #3 {\dynamic p \italic "a tempo"}} af' <df f> af <df f> af]) |
  <df, df,> [( af' <c gf'> af <c gf'> af]) |
  %% 64 - 66
  <af, af,> [( af' <c gf'> af <c gf'> af]) |
  <df, df,> [( af' <df f> af <df f> af]) |
  <bf bf,>^.^\markup {""\raise #3.5 \italic "poco animato"}
  <bf f' af>^. <bf bf,>^. <bf f' af>^.
  <bf bf,>^. <bf f' af>^. |
  %% 67 - 70
  <ef, ef,>^.[ <bf' ef gf>^.^\markup {""\raise #0 \italic "cresc."} <ef, ef,>^. <bf' ef gf>^.
               <ef, ef,>^. <bf' ef gf>^.] |
  <af af,>^.[ <af c gf'>^.^\< <af af,>^. <af c gf'>^.
              <af af,>^.\! <af c gf'>^.] |  \phrasingSlurDown
  <f df af f>\arpeggio\sustainOn^\ff
  \su <f af df f>16[\( \sd \csu <af' df af'>(^\markup {"" \raise #2.5 \italic "sonore"}
                       \su \csl <f, af df f> \sd \csu <af' df af'>
                       \su \csl <f, af df f> \sd \csu <af' df af'>
                       \su \csl <f, af df f> \sd \csu <af' df af'>
                       \su \csl <f, af df f>\) \sd \csu <af' df af'> ]) | \phrasingSlurNeutral
  \csl <gf, gf,>8^.[\sustainOff <gf df' ef>^. <gf gf,>^. <gf df' ef>^.^\<
                    <gf gf,>^. <gf df' ef>^.]\! |
  %% 71 - 74
  <af af,>^.[ <af df f>^.^\markup {\italic "cresc."} <af af,>^. <af df f>^.
              <af af,>^.^\markup {\italic "rit."}^\< <af df f>^.]\! |
  <af af,>^.[\sustainOn <af df f>^.]\arpeggio \clef treble
  <af' df f>\arpeggio r\fermata\sustainOff r4 \clef bass |
  <af,, af,>8[\sustainOn <af' c gf'> ]\arpeggio \clef treble
  <af' c gf'>\arpeggio r r4\sustainOff \clef bass |
  <f, af, df,>8^.[(\arpeggio^\markup {"" \raise #4 {\dynamic p \italic "a tempo"}}
                   f <af df> f <af df> f]) |
  %% 75 - 78
  <gf gf,> [( gf <bf df> gf <bf df>^\mf gf]) |
  <ef ef,> [( gf <bf ef> gf <bf ef> gf]) |
  <f f,> [( f <af df> f <af df>^\mf f ]) |
  <gf gf,> [( gf <bf gf'> gf <bf gf'> gf]) |
  %% 79 - 82
  <af af,> [( af <df f> af^\markup {"" \raise #4 \italic "rit."} <df f> af]) | \slurUp
  \acciaccatura <af af,>8\sustainOn <af df f af>_\sfz^. r r4 s8. s16\sustainOff |
  \acciaccatura <af, af,>8\sustainOn <af' c gf'>_\sfz^. r r4 s8. s16\sustainOff |
  <df,, af' df f af df f>8\arpeggio\sustainOn^\markup {\dynamic f \italic "molto rit."}
  r r4 s8. s16\sustainOff | \slurNeutral
  %% 83 - 85
  <<{\sd af''4^\markup {"" \translate #(cons -4 -3) {\center-column {\italic "a tempo" \italic "R.H."}}}
     \su df4.^>^\markup {\italic "il canto"}
     ef8^>^\< }\\{df,,8[ <df' f> gf^\markup {"" \translate #(cons -6 -2) {\italic "L.H."}} <df f> <df f> ef']}>> |
  <<{df4^> c2^>\!}\\{df,,8[ <ef' gf af> gf <ef gf af> <ef gf af> ] r}>> |
  <<{\once\stemDown bf'4^>^\markup {"" \translate #(cons -4 -3){\italic "R.H."}} \acciaccatura c8^\markup {\italic "L.H."}
     bf[( a bf c])}\\{df,,[ <df' gf> ] ~ <df gf>2}>> |
  %% 86 - 88
  \mergeDifferentlyDottedOn
  <<{bf'4(^\> af4.\! af8)}\\{<df,, bf''>\arpeggio[ <df' f> af'
                                                   <f df> <f df> af]}>> |
  <<{\once\stemDown af4(^\markup {"" \translate #(cons -4 -3){\italic "R.H."}}
     f'4.^\markup {"" \translate #(cons -4 -3){\italic "L.H."}}
     gf8)}\\{bf,,,8[ bf' <af' f'> <af bf d!>
                     <af bf d> gf']}>> |
  <<{f4^>( ef4.^> bf8)}\\{<ef,, f''>\arpeggio[ <ef' gf c> ef'
                                               <ef, gf bf> <ef gf bf> bf']}>> |
  %% 89 - 91
  <<{df4 c8[( df c8. af16])}\\{\slurUp af,,8[ <ef'' gf af> ] ~ <ef gf af>2}>>
  <<{df'4^\markup {\italic "molto cresc."} r r^\ff}\\{\acciaccatura df,,8 <df df' f >4
                                                      r  r8 r16 r32 df32}>> |
  <<{\once\stemDown af''4 df4.^> ef8^> }\\{df,,,8[ <df'' f> gf <df f> <df f> ef']}>> |
  %% 92 - 94
  <<{df4^> c2^>}\\{<df,, df''>8\arpeggio[ <ef' gf af> c' <ef, gf af> <ef gf af> ] r}>> |
  <<{\once\stemDown bf'4  bf8[( a bf c])}\\{\once\shiftOn <e,, e,> [ <df' e> ] ~ <df e>2}>> |
  <<{bf'4( af4. af8)}\\{<df,, bf''>\arpeggio[ <df' f> af'
                                              <f df> <f df> af]}>> |
  %% 95 - 97
  <<{\sd af4 \sb af'4^\markup {\italic "cresc."} gf8^> [ f^> ]^\markup {\italic "rit."}}\\
    {bf,,,8^> [ bf' af''^> ] <af, bf d>4. }>> |
  %% 96 - 97
  << { f'4^>^\markup {\italic "a tempo"} ef4.^> bf8( df4^>
       c8[^\p bf c af])^\markup {\italic "rit."} } \\
     {<ef, f''>\arpeggio [ <ef' gf bf> ef' <ef, gf bf>^\markup {\italic "dim."}
                           <ef gf bf> bf' ] <df ef, af,>8\arpeggio af, ~ <af ef'>2 } >> |
  %% 98 - 100
  <<{\once\stemDown df'4^> r r8 df8}\\{\once\shiftOn <f, af, df,>8[\arpeggio \slurUp af( <f df'> ]) r r4}>> |
  <<{df'4^> c4.^> \once\stemDown f,8}\\{f,8[ <f' a> c' <f, a> <f a> ] r}>> |
  <<{\once\stemDown c'4^> bf4.^> \once\stemDown f8^>}\\{f,8[ <df' f> bf' <df, f> <df f> s]}>> |
  %% 101 - 103
  <<{\once\stemDown f'4^> ef8[( df c bf])}\\{f,8[ f' <gf ef'> <f df'> <ef c'> <df bf'> ]}>> |
  <<{bf'8[ a] c4 r8 \once\sd f,}\\{<c f,>2 ~ <c f,>8 r}>> |

  <<{df'4^^( \once\shiftOn c4.^>) \sd f,8^^^\markup {"" \raise #2.5 \center-column {\italic "poco rit."}}}
    \\{ r16  f,,32[( a c f a c] \sd f32) s32 s16 s8 s4}>> |
  %% 104 - 106
  <<{c'4^^(^\markup{\italic "cresc."} \once\shiftOn bf4.)^^\! bf8}
    \\{ r16 f,,32[( bf df f bf df] f) s32 s16 s8 s4}>> |
  <<{a8[( bf c df ef e])}\\{f,2.}>> |
  <f a c f>16^.\arpeggio[^\rfz f'^.(^\ff f^. f^. f^. f^. f^. f^. f^.
                         f^.^\markup {\italic "rit."} f^. f^.]) |
  %% 107 - 108
  \tupletSpan 8
  \tuplet 3/2  {
    df,,[(^\markup {\dynamic p \italic "a tempo."} af'' df f df af) f'( df af) f'( df af)
          f'( df af) f'( df af)] |
    \omit TupletNumber
    <ef ef'> [( af c gf' c, af) gf'( c, af) gf'( c, af)
                gf'( c, af) gf'( c, af)] |
    %% 109 - 110
    <af, af,> [( af' c af' c, af)
                 af'(^\markup {\italic "rit."}
                 c, af) af'( c, af) af'( c, af)
                 af'( c, af)] |
    <df, df,> [( af' df f df af) f'( df af) f'( df af) f'( df af)
                 f'( df af)] |
    %% 111 - 112
    <bf, bf,> [^\markup {"" \raise #3 \dynamic p }
               <bf f' af> <bf f' af> <bf f' af> <bf f' af> <bf f' af>
               <bf f' af> <bf f' af> <bf f' af> <bf f' af> <bf f' af> <bf f' af>
               <bf f' af> <bf f' af> <bf f' af> <bf f' af> <bf f' af> <bf f' af> ] |
    <ef ef,> [ <bf' ef gf> <bf ef gf> <bf ef gf> <bf ef gf> <bf ef gf>
               <bf ef gf>^\markup {\italic "cresc."}
               <bf ef gf> <bf ef gf> <bf ef gf> <bf ef gf> <bf ef gf>
               <bf ef gf> <bf ef gf> <bf ef gf> <bf ef gf> <bf ef gf> <bf ef gf> ] |
    %% 113 - 114
    <af, af,> [^\markup { "" \raise #4 {\dynamic f \italic "largamente"}}
               <af' c gf'> <af c gf'> <af c gf'> <af c gf'> <af c gf'>
               <af c gf'> <af c gf'> <af c gf'> <af c gf'>^\markup {\italic "cresc."}
               <af c gf'> <af c gf'>
               <af c gf'> <af c gf'> <af c gf'> <af c gf'> <af c gf'> <af c gf'> ] |
    <f, f,> [^\markup \translate #(cons -3 0)
             {"" \raise #2.5 {\dynamic fff \italic "strepitoso"}}
             <gf gf,> <af af,> <bf bf,> <c c,> <df df,> <d d,>
             <ef ef,> <e e,> <f f,> <gf gf,> <g g,> <af af,> <a a,> <bf bf,>
             <b b,> <c c,> <df df,> ] |
  }
  %% 115 - 117
  <gf, gf,>8_\rfz r <gf df' ef>_\rfz c_^[ df_^ ef_^] |
  <af,, af,>^\rfz r <af' df f>_\rfz bf_^[ c_^ df_^] |
  \acciaccatura <af, af,>\sustainOn <af' df f af>_\rfz s s4 s8 s16 s16\sustainOff |
  %% 118 - 120
  \acciaccatura <af, af,>8\sustainOn
  <af' c gf'>8^.^\markup {\center-column {\italic "molto rit."}}
  s s4 s8 s16 s16\sustainOff |
  \acciaccatura <df,, df,>8\sustainOn^\markup
  \translate #(cons -2.5 0) {"" \raise #3 \dynamic fff }
  <af'' df f af>^^ s s4 s8 s16 s16\sustainOff |
  s8 s s \tupletSpan 16
  \tuplet 3/2 { af,,16^\markup {"" \raise #4.5
                                {\italic \center-column {"rit." "piu"} \dynamic f }}
                s8 af16 s8 af16 s8 }|
  %% 121 - 123
  \repeat "tremolo" 12{ <af df,>32^\markup \translate #(cons -4 0)
                        {"" \raise #3  \dynamic fff } df32 } |
  \repeat "tremolo" 8{ <af df,>32 df32 } <af df,>8^^[\sustainOn <df' f af df>^^] |
  \su <df, df,>8_. r\sustainOff r r4 r8 |
}

\score {
  \context PianoStaff \with {
    midiInstrument = "acoustic grand"
    \override StaffGrouper #'staff-staff-spacing #'padding = #0.4
    \override StaffGrouper #'staff-staff-spacing #'basic-distance = #16
    \mergeDifferentlyDottedOn
    \mergeDifferentlyHeadedOn
  } <<
    \context Staff = "upper" \upper
    \context Staff = "lower" <<
      \clef bass
      \lower
    >>
  >>
  \layout {
    \context {
      \Score
      \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/16)
    }
  }
  \midi {
    \tempo 4 = 60
  }
}
