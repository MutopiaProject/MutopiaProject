\version "2.12.3"

\header {
  mutopiatitle = "Première Arabesque"
  mutopiacomposer = "DebussyC"
  mutopiaopus = "L66 No.1"
  mutopiainstrument = "Piano"
  source = "Durand et Fils (1904)"
  style = "Modern"
  copyright = "Public Domain"
  maintainer = "Keith OHara"
  title = "Première Arabesque"
  subtitle = "des Deux Arabesques"
  composer = "Claude Debussy"
  lastupdated = "2011/Oct/19"
 footer = "Mutopia-2011/10/25-1777"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}
\pointAndClickOff

\paper {
  %{ comment out for mutopiaproject }
  #(set-paper-size  "letter")
  ragged-bottom = ##t
  % For 3 page layout:
  #(layout-set-staff-size 15)
  bottom-margin =12
  %annotate-spacing = ##t
  %{ %}
  between-system-padding = 0
  ragged-last-bottom = ##f
}
% Definitios to override page-breaking
myLineBreak = {
  \break
}
myBreakForFivePages = {
  \pageBreak
}
myBreakForThreePages = {
%  \pageBreak
}

\include "english.ly"

% restrain the slope of the beams
oflat = {
  \once\override Beam #'damping = #3
}
% Change staff
cu = { \change Staff = "upper" }
cl = { \change Staff = "lower" }
% Suspend collision resolution so notes line up
lu = {\once \override NoteColumn #'ignore-collision = ##t }
% hide one note
ohn = {
  \once\override Dots #'transparent = ##t
  \once\override NoteHead #'transparent = ##t
  \once\override NoteHead #'no-ledgers = ##t
  \once\override Stem #'transparent = ##t
  \once\override Beam #'transparent = ##t
  \once\override Accidental #'transparent = ##t
}

%%% In sections
%% First section in E major

rhUpE = \relative c'' {
  \stemUp\tieUp\phrasingSlurUp
  \tempo"Andantino con moto"
  \key e \major
  s1 | s1 |

  r4 cs\(^\< fs cs\!~ |
  cs4\) cs\(^\< fs a\!~ |
  \stemNeutral\tieNeutral
  a4 a2~a8*2/3 gs fs\) |
  \barNumberCheck#6
  r4 \times2/3{e8\( fs cs} e8*2/3 b cs gs b fs |
  gs8*2/3 e gs ds2 cs4 |
  b8\) r e'8*2/3\( fs cs e b cs gs b fs |
  gs8*2/3 e gs ds2 cs4\) |
  \times2/3{b8( a b} cs4~cs8 e ds e cs4) gs'2( e4) |
  \times2/3{ds8( cs ds} e4~e8 gs fs gs |
  \barNumberCheck#13
  e4) cs'2\( \times2/3{as8 cs as} |
  gs4\) e'2\( \times2/3{cs8 e cs\)} |
  gs'4.(fs8)  gs4.( fs8) |
  gs4.( fs8) gs-- fs4-- gs8--|
  \barNumberCheck#17
  \stemUp a2\( gs |
  fs2 e\) |\myBreakForFivePages

  \stemNeutral
  ds2\(\< e4 gs8 b\) |
  ds,2\(\>~ds8\! cs e gs\) |
  b,2\(~b8 a cs e |
  gs,2\) \times2/3{r8 a\( cs} \times2/3{e gs fs} |
  ds4 gs,\) r8 fs\(\< a cs\! |
  e,2\) \times2/3{r8 fs\( a} \times2/3{cs e d} |
  gs,4 fs2 d4\) |
  \barNumberCheck#26
  \stemUp\tieUp\slurUp
  \clef bass cs1(\p ~|
  cs4 cs e cs) |\myBreakForThreePages
  \clef treble fs1~ |
  \set crescendoText="cresc."
  fs4 fs(^\markup"poco mosso"\< a\! fs |
  b gs) b(gs |
  <a cs>1)~( |
  <a cs>4 <fs a> <gs b> <a cs>) |
  <a cs>1~ |
  <a cs>4 a( b cs |
  ds e fs gs a b cs ds |
  fs2)( e2)( |
  e,1)~ |\myBreakForFivePages\myLineBreak
}

rhDownE = \relative c' {
  \stemDown\mergeDifferentlyHeadedOn\tieDown\slurDown
  \ohn cs8*2/3\( s s \times3/3{cs' e fs} \times3/3{gs ds b} s s \ohn b,\)|
  \ohn a8*2/3\( s s a' cs ds e b gs s s \ohn gs,\) |

  s4 cs'8*2/3 fs, a~a4 cs8*2/3 fs, a~|
  a4 cs8*2/3 fs, a~a4 a'8*2/3 a, cs |
  \override TextSpanner #'(bound-details left text) = "rit."
  s2 s4\startTextSpan s8*2/3 s s\stopTextSpan|
  \barNumberCheck#6
  s1^\markup"a tempo" |
  s1*6 |
  \barNumberCheck#13
  s1^\markup"stringendo" |
  s1 |
  s1 |
  s2 s8\startTextSpan s s s\stopTextSpan|
  \barNumberCheck#17
  s4^\markup"a tempo" cs8*2/3 e fs gs ds b s4 |
  s4 a8*2/3 cs ds e b gs s4 |

  s1*3 |
  s2 s8*2/3\startTextSpan s s s s s\stopTextSpan|
  s2 s2^\markup"a tempo" |
  s2 s8*2/3\startTextSpan s s s s s\stopTextSpan|
  s1 |
  \barNumberCheck#26
  s1^\markup"a tempo" |
  s1 |
  r4 \times2/3{a,8( b cs} \times2/3{b a b} \times2/3{cs b a} |
  cs2) ds2~ |
  ds2 e2 |
  s1*3|
  s4 fs8*2/3 cs e gs ds fs a\< e gs |
  b fs a cs gs b ds a cs e b ds |
  fs cs e\! gs\> ds fs a e gs b fs a\! |
  <gs b>1\p |
  r1 |
}

lhUpE = {
  \dynamicUp\tieUp
  \key e \major
  \times2/3{cs'8\p e' a'} s2 \times2/3{gs'8 ds' b} |
  a8*2/3 cs' fs' s2 e'8*2/3 b gs |

  \stemUp \clef bass
  fs8*2/3_\( a cs'~cs'4*2/3\cu\ohn\lu a'8*2/3\) \cl
  %{%} e8*2/3_\( a cs'~cs'4*2/3 \cu\ohn\lu a'8*2/3\) \cl |
  ds8*2/3_\( a cs'~cs'4*2/3 \cu\ohn\lu a'8*2/3\) \cl
  %{%} cs8*2/3_\( a e'~e'4*2/3 \cu\ohn\lu cs''8*2/3\) \cl |
  \stemNeutral
  b,8*2/3\(\< fs a \clef treble cs' ds' fs' a'cs'' ds''\! cs'' b' a'\)|
  \clef bass e,8(\pp b, e gs b gs e b,) |
  e,8( cs e gs cs' gs e b,) |
  e,8( b, e gs b gs e b,) |
  e,8( cs e gs cs' gs e b,) |
  \set crescendoText="poco a poco cresc."
  \set crescendoSpanner=#'text
  fs,8(\< cs e fs a fs e cs)\! |
  gs,8( cs e gs b gs e cs) |
  a,8( e fs a cs' a fs e) |
  \barNumberCheck#13
  \set crescendoText="sempre cresc."
  as,8(\< e gs cs')\! cs( fs as e') |
  e8( as cs' gs') fs( cs' e' as')|
  \clef treble as8( e' gs' cs'') cs'( fs' as' e'') |
  as8( e' gs' cs'') cs'( fs' as' e'') |
  \barNumberCheck#17
  \times2/3{cs'8\(\p e' a'} s2 gs'8*2/3 ds' b\) |
  a8*2/3\( cs' fs' s2 e'8*2/3 b gs\) |

  fss8*2/3( cs' ds' as' ds' cs') gs( cs' e' b' e' cs') |
  fss8*2/3( cs' ds'  as' ds' cs') \clef bass e( a cs' gs' cs' a) |
  ds( a b fs' b a) cs( fs a e' a fs) |
  bs,( fs gs ds' gs fs) cs(\p fs a e' a fs) |
  bs,( fs gs ds' gs fs) b,( fs a d' a fs) |
  b,( e gs d' gs e) b,(\p fs a d' a fs) |
  b,( e gs d' gs e) e,( b, e fs gs b) |
  \barNumberCheck#26
  \phrasingSlurDown
  a,,8*2/3\( a, \cu e \stemDown g a b a e g a b a\) |
  g1 \cl\stemNeutral|
  d,8( a, fs2.) |
  b,,8\( b, fs a b4\) r4 |
  gs,,8\( gs, e gs b4\) r4 |
  \times2/3{fs,,8\( fs, cs} e8*2/3 fs a cs' \cu\stemDown e' fs' a' gs' fs' |
  e'2\)\( \cl\stemNeutral ds'4 cs'\)
  fs,,8*2/3\( fs, cs e8*2/3 fs a cs' \cu\stemDown e' fs' a' gs' fs' |
  e'2\)\( \cl\stemNeutral fs2\) |
  \phrasingSlurNeutral
  b,4\(-. fs-. a-. b-. \clef treble ds'-. fs'-. a'-. b'-.\) |
  \clef bass e,,8( e, b, e gs b e' gs') |
  r2 e'2 |
}

lhDownE = {
  s1 | s1 |

  \stemDown\mergeDifferentlyHeadedOn\tieDown
  fs2 e|
  ds2 cs|
  s1*16 |

  s1*5 |
  s8*2/3 a,4*2/3~a,2.~|
  a,1|
  s1*11 |
}

%% Second section in A major

rhUpA = \relative c''{
  \key a \major
  \tempo\markup{"Tempo Rubato" \smaller "(un peu moins vite)"}
  \times2/3{e8(\p d e} cs4~ cs8 b b cs |
  a4 fs2 gs4) |
  fs8\( e\< fs'2\> e4\)\! |
  fs,8\(e\<gs'4\sf ~ gs8\> b^- a^- fs^-\)\! |
  \times2/3{e8\( d e} cs4~cs8 b b cs |
  a4 fs\)~fs8 fs(^\< fs gs)\! |
  \times2/3{fs8( e b^\>} cs2 <cs e>4)\! |
  <b e>2. r4 |
  \barNumberCheck#47
  \clef bass
  \set crescendoText="cresc."
  \set crescendoSpanner=#'text
  \times2/3{d,8(\p fs a} cs8*2/3 b a) gs(\< b d fs e d) |
  \clef treble
  cs8*2/3( e gs b a gs) fs( a cs e d cs) |
  b8*2/3( d fs a4)\f ~ a8( gs) fs( e) |
  \override TextSpanner #'(bound-details left text) ="rit."
  fs8( e d cs) d(\startTextSpan cs b a)\stopTextSpan |
  \clef bass
  \times2/3{d,,8(\p fs a} cs8*2/3 b a) gs(\< b d fs e d) |
  \clef treble
  cs8*2/3( e gs b a gs) fs( a cs e d cs) |
  \set crescendoSpanner=#'hairpin
  b8*2/3(\< d fs) a4\f ~ a8 gs fs gs |
  b,8*2/3(\< d fs) a4\f ~ a8 gs fs gs |
  \barNumberCheck#55
  \times2/3{e8(\p d e} cs4~ cs8 b b cs |
  a4 fs2 gs4) |
  fs8\( e\< fs'2\> e4\)\! |
  fs,8\( e\< gs'4\! ~ gs8\> b^- a^- fs^-\)\! |
  \times2/3{e8\( d e} cs4~cs8 b b cs |
  a4 gs\)~gs8 fs( fs gs) |
  \times2/3{fs8 e b} cs2 <cs e>4 |
  <b e>2.\< r4 |\myBreakForFivePages
  \barNumberCheck#63
  \key c \major
  \tempo "Risoluto"
  g'8*2/3\f f g <e c a>2 \clef bass <d b f>4 |
  <c a e>4 <g f d>2 <c a e>4 |
  <d b f>\< \clef treble <f c a> <g c, g> a8 c8\! |
  <d b>2 g, |
  g'8*2/3( f g e2 d4 e2 f2) |
  g8*2/3 f g e2 g4 |
  gs8*2/3^\< fs gs e2\! gs4 |\myBreakForThreePages
}

rhDownA = { \relative c''{
  a2. gs4 |
  fs4 ds2.|
  <d gs,>4 <b' d >2.|
  <cs, a>4 <a' cs>2. |
  a2. gs4 |
  e2 ds4 cs4 |
  b4 a2 a4 |
  a4( gs2) s4 |
  \barNumberCheck#47
  s1^\markup"mosso" |
  s1 |
  s2 <d'' b>4 <d gs,> |
  <cs a>2 a2 |
  s1^\markup"mosso" |
  s1 |
  s2 <b d>2 |
  s2 <b d>2 |
  \barNumberCheck#55
  gs2^\markup"a tempo" fs4 f |
  e2 ds |
  <d gs,>4 <b' d >2. |
  <cs, a >4 <a' cs>2. |
  a2. gs4 |
  e2 ds4 cs |
  b4 a2 a4 |
  a4(gs2) s4 |
  \barNumberCheck#63
  <c g>4 s2 s4 |
  s1|
  s2 s4 <c f>4 |
  f1
  c'1~ |
  c1 |
  c1~ |
  c2 cs2 |

}}

lhUpA = {
  \stemUp\slurUp
  fs'2. d'4
  s1 |
  s4 fs'2( e'4) |
  s1|
  fs'2.( f'4) |
  s1 * 11|
  d'1 
  s1 
  s4 fs'2( e'4) |
  s1
  fs'2.( f'4) |
  s1 *3 |
  \barNumberCheck#63
  s1 * 4 |
  \set decrescendoText="dim. molto"
  \set decrescendoSpanner=#'text
  <e' g'>2(\> <f' a'> |
  <g' bf'>2 <f' a'>) |
  g'1 |
  \set decrescendoText="più dim."
  gs'1\> |
}

lhDownA = {
  \key a \major
  \slurDown \stemDown
  b8( cs' d'2 e4 |\stemNeutral
  <fs cs'>4 <b, a>2.) |
  <e, b,>4( <gs d'>2.) |
  <a, e>4( <e a cs' e'>2.) |
  b8( cs' d'2.) |
  \slurNeutral
  <cs' fs >4( <a b,>2 <ds a,>4) |
  <e gs,>4( <fs, e>2 <b, b,,>4 |
  <e, b,>2) e,4( e) |
  \barNumberCheck#47
  r4 fs,2( e,4) |
  r4 <a,, a,>2( <d, d>4) |
  r4 <b,, b,>( <fs b d' fs'>) <e, e>4 |
  <a,, a,>4 e fs'8( e' d' cs') |
  r4 fs,2( e,4) |
  r4 <a,, a,>2( <d, d>4) |
  r4 <b,, b,>8 r <fs b d' fs'>2-> |
  r4 <d, d>8 r <fs b d' fs'>2-> |
  \barNumberCheck#55
  \slurDown
  e2( fs4 gs |
  <a cs'>2 <b, a >2) |
  <e, b,>4( <gs d'>2.) |
  <a, e>4( <e a cs' e'>2. |
  b8 cs' d'2.) |
  <fs cs'>2( <b, a>4 <a, ds>)  |
  <gs, e>( <fs, e>2 <b,, b,>4) |
  <e, b,>2 e,4( e) |
  \key c \major
  \barNumberCheck#63
  <c e,>4 <c f,>2 g,4 |
  a,4 b,2 a,4 |
  g,4 f, e, <d, d> |
  g,,8 g, d f g b d' f' |
  \clef treble
  s1*2 |
  \stemDown
  e'1( ~ |
  e'2. ~ e'8 ds') |
}


%% Third section in E major

rhUpEE = \relative c'''{
  \key e \major
  \tempo"Tempo 1º"
  %% same as measures 17 and following
  \stemUp a2\( gs |
  fs2 e\) |
  %% same as measures 2 and following
  r4 cs\(^\< fs cs\!~|
  cs4\) cs\(^\< fs a\!~ |
  \stemNeutral\tieNeutral
  a4 a2~a8*2/3 gs fs\) |
  \barNumberCheck#76
  r4 \times2/3{e8\( fs cs} e8*2/3 b cs gs b fs |
  gs8*2/3 e gs ds2 cs4 |
  b8\) r e'8*2/3\( fs cs e b cs gs b fs |
  gs8*2/3 e gs ds2 cs4\) |
  \times2/3{b8( a b} cs4~cs8 e ds e cs4) gs'2( e4) |
  \times2/3{ds8( cs ds} e4~e8 gs fs gs |
  \barNumberCheck#83
  e4) cs'2\( \times2/3{as8 cs as} |
  gs4\) e'2\( \times2/3{cs8 e cs\)} |
  gs'4.(fs8)  gs4.( fs8) |
  gs4.( fs8) gs-- fs4-- gs8--|\myBreakForFivePages
  \barNumberCheck#87
  \stemUp a2\( gs |
  fs2 e\) |
  %% no longer the same as earlier bars
  a4\( b8 cs\< a gs a gs~ |
  gs4 fs4 ~fs4 e\) ~ |
  e8\! d\( e fs d cs d cs ~ |
  cs4 b2 a4\) ~ |
  a8 ( gs a gs cs a fs4) ~ |
  \time 2/4
  fs8\< e fs e |
  \time 4/4
  \barNumberCheck#95
  \stemNeutral\slurNeutral
  a\breve\!_" " |
  gs1 |
  fs1 |
  e4 \times2/3{e''8\(\p fs cs} e8*2/3 b cs gs b fs |
  gs8*2/3 e gs ds2 cs4 |
  b4\) e8*2/3\(\pp fs cs e b cs gs b fs |
  gs e gs ds2 cs4\) |
  \stemUp r8*2/3 \cl b e, \cu r \cl cs' gs \cu r e' b r fs' cs |
  \stemNeutral r8*2/3\< b' e, r cs' gs r e' b r fs' cs |
  \ottava#1
  r8*2/3\! b' e, r\> cs' gs r e' b r fs' cs |
  <e gs>4--(\pp <e gs>2-- <e gs>4--) |
  \ottava#0
  e,,4 r4 r2
}

rhDownEE = \relative c''{
  %% same as measures 17 and following
  s4 cs8*2/3 e fs gs ds b s4 |
  s4 a8*2/3 cs ds e b gs s4 |
  %% same as measures 2 and following
  s4 cs8*2/3 fs, a~a4 cs8*2/3 fs, a~|
  a4 cs8*2/3 fs, a~a4 a'8*2/3 a, cs |
  \override TextSpanner #'(bound-details left text) = "rit."
  s2 s4\startTextSpan s8*2/3 s s\stopTextSpan|
  \barNumberCheck#76
  s1^\markup"a tempo" |
  s1*6 |
  \barNumberCheck#83
  s1^\markup"stringendo" |
  s1 |
  s1 |
  s2 s8\startTextSpan s s s\stopTextSpan|
  \barNumberCheck#87
  s4 cs8*2/3 e fs gs ds b s4 |
  s4 a8*2/3 cs ds e b gs s4 |
  %% no longer the same as earlier bars
  r4 e' r ds |
  cs2 b |
  r4 a r4 gs |
  fs2 e |
  d2 cs |
  b2 |
  \barNumberCheck#95
  \set decrescendoText="dim."
  \set decrescendoSpanner=#'text
  s4\> s\! s s |
  s1 |
  \set decrescendoText="più dim."
  s4\> s\! s s |
  s1*10

}

lhUpEE = {
  \key e \major
  \slurNeutral\phrasingSlurNeutral
  %% same as measures 17 and following
  \times2/3{cs'8\(\p e' a'} s2 gs'8*2/3 ds' b\) |
  a8*2/3\( cs' fs' s2 e'8*2/3 b gs\) |
  %% same as measures 2 and following
  \stemUp \clef bass
  fs8*2/3_\( a cs'~cs'4*2/3\cu\ohn\lu a'8*2/3\) \cl
  %{%} e8*2/3_\( a cs'~cs'4*2/3 \cu\ohn\lu a'8*2/3\) \cl |
  ds8*2/3_\( a cs'~cs'4*2/3 \cu\ohn\lu a'8*2/3\) \cl
  %{%} cs8*2/3_\( a e'~e'4*2/3 \cu\ohn\lu cs''8*2/3\) \cl |
  \stemNeutral
  \set crescendoSpanner=#'hairpin
  b,8*2/3\(\< fs a \clef treble cs' ds' fs' a'cs'' ds''\! cs'' b' a'\)|
  \clef bass e,8(\pp b, e gs b gs e b,) |
  e,8( b, e gs cs' gs e b,) |
  e,8( b, e gs b gs e b,) |
  e,8( b, e gs cs' gs e b,) |
  \set crescendoText="poco a poco cresc."
  \set crescendoSpanner=#'text
  fs,8(\< cs e fs a fs e cs)\! |
  gs,8( cs e gs b gs e cs) |
  a,8( e fs a cs' a fs e) |
  \barNumberCheck#83
  \set crescendoText="sempre cresc."
  as,8(\< e gs cs')\! cs( fs as e') |
  e8( as cs' gs') fs( cs' e' as')|
  \clef treble as8( e' gs' cs'') cs'( fs' as' e'') |
  as8( e' gs' cs'') cs'( fs' as' e'')\! |
  \barNumberCheck#87
  \times2/3{cs'8\(\p e' a'} s2 gs'8*2/3 ds' b\) |
  a8*2/3\( cs' fs' s2 e'8*2/3 b gs\) |
  %% no longer the same as earlier bars
  \stemUp
  cs'8*2/3( e' a' cs'' a' e') b( ds' gs' b' gs' ds') |
  a8*2/3( cs' fs' a' fs' cs') gs( b e' gs' e' b) |
  \clef bass
  fs8*2/3( a d' fs' d' a) e( gs cs' e' cs' gs) |
  d8*2/3( fs b d' b fs) cs( e a cs' a e) |
  b,8*2/3( es gs b gs es) a,( cs fs a fs cs) |
  gs,8*2/3( b, e gs e b,) |
  \barNumberCheck#95
  \stemNeutral
  \relative c, {
    fs8*2/3\( cs' e fs a b cs \cu e a b cs e |
    a b cs e cs b a e cs b a e \) \cl |
  } \relative c, {
    b\( b' ds gs b \cu ds gs b ds gs b b,\) \cl |
  } \relative c, {
    b\( b' ds a' b \cu ds a' b ds a' b b,\) \cl |
  }
  e,8( b, e gs b gs e b) |
  e,8( cs e gs cs' gs e cs) |
  e,8( b, e gs b gs e b) |
  e,8( cs e gs cs' gs e cs) |
  e,4_( b, e gs) |
  e4( b e' gs') |
  \clef treble
  e'4( b' e'' gs'') |
  <e'' b''>4--( <e'' b''>2-- <e'' b''>4--) |
  \clef bass
  <e, e>4 r4 r2 |
}

lhDownEE = {
  %% same as measures 17 and following
  s1*2 |
  %% same as measures 2 and following
  \stemDown\mergeDifferentlyHeadedOn\tieDown
  fs2 e|
  ds2 cs|
  s1*12 |
  \barNumberCheck#87
  s1*2 |
  %% no longer the same as earlier bars
  \phrasingSlurDown
  cs'2\( b |
  a2 gs\) |
  fs2\( e |
  d2 cs\) |
  b,2 a, |
  gs,2 |
  s1*13
}

\score {
  \new PianoStaff
  <<
    %\override Score.NonMusicalPaperColumn #'page-break-permission = ##f
    \override Score.SpacingSpanner #'shortest-duration-space = #1.5
    % Increase text size by one step
    \override Score.TextScript #'font-size = #1
    \override Score.TextSpanner #'font-size = #1
    % The 'piano' accidental style has extraNaturals false by default
    %\set PianoStaff.extraNatural = ##f
    #(set-accidental-style 'piano 'Score)
    \set PianoStaff.printKeyCancellation = ##f
    \override PianoStaff.PhrasingSlur #'height-limit = #4
    \override PianoStaff.DynamicLineSpanner #'staff-padding = #3
    \override PianoStaff.DynamicText #'self-alignment-X = #LEFT
    \new Staff = "upper" <<
      \numericTimeSignature
      \time 4/4
      \new Voice = "red" {
	%{colorize } \override NoteHead #'color = #red %}
	\rhUpE
	\rhUpA
	\rhUpEE
      }
      \new Voice = "green" {
	%{colorize } \override NoteHead #'color = #green %}
	\rhDownE
	\rhDownA
	\rhDownEE
      }
      \new Voice = "dynamics" {
      }
    >>
    \new Staff = "lower" <<
      \numericTimeSignature
      \time 4/4
      \new Voice = "blue" {
	%{colorize } \override NoteHead #'color = #blue %}
	\lhUpE
	\lhUpA
	\lhUpEE
      }
      \new Voice = "grey" {
	%{colorize } \override NoteHead #'color = #grey %}
	\lhDownE \bar "||"
	\lhDownA \bar "||"
	\lhDownEE \bar "|."
      }
      \new Voice = "pedal" {
	\set Staff.pedalSustainStyle = #'bracket
      }
    >>
  >>
  \layout {
    \context {
      \Score
    }
  }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 72 2)
    }
    %% Remove the dynamics from the midi output
    \context {
      \Voice
      \remove "Dynamic_performer"
    }
  }
}

