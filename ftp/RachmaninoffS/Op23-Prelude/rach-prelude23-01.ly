%%--------------------------------------------------------------------
% The Mutopia Project
% LilyPond template for keyboard solo piece
%%--------------------------------------------------------------------
 
\version "2.18.2"
 
%---------------------------------------------------------------------
%--Paper-size setting must be commented out or deleted upon submission.
%--LilyPond engraves to paper size A4 by default.
%--Uncomment the setting below to validate your typesetting
%--in "letter" sizing.
%--Mutopia publishes both A4 and letter-sized versions.
%---------------------------------------------------------------------
% #(set-default-paper-size "letter")
 
%--Default staff size is 20
% #(set-global-staff-size 20)
 
\paper {
    top-margin = 8\mm                              %-minimum top-margin: 8mm
    top-markup-spacing.basic-distance = #6         %-dist. from bottom of top margin to the first markup/title
    markup-system-spacing.basic-distance = #5      %-dist. from header/title to first system
    top-system-spacing.basic-distance = #12        %-dist. from top margin to system in pages with no titles
    last-bottom-spacing.basic-distance = #12       %-pads music from copyright block
    
    ragged-last = ##f
    ragged-bottom = ##f
    ragged-last-bottom = ##f
}
 
%---------------------------------------------------------------------
%--Refer to http://www.mutopiaproject.org/contribute.html
%--for usage and possible values for header variables.
%---------------------------------------------------------------------
\header {
    title = "Prelude I"
    composer = "Sergei Rachmaninoff (1873-1943)"
    opus = "Op. 23, No 1"
    %piece = "Left-aligned header"
    date = "1901"
    style = "Romantic"
    source = "A. Gutheil, n.d.[1904]"
 
    maintainer = "Abel Cheung"
    maintainerEmail = "abelcheung at gmail dot com"
    license = "Creative Commons Attribution-ShareAlike 4.0"
 
    mutopiatitle = "Prelude Op. 23"
    mutopiaopus = "Op. 23"
    mutopiacomposer = "RachmaninoffS"
    %--A list of instruments can be found at http://www.mutopiaproject.org/browse.html#byInstrument
    %--Multiple instruments are separated by a comma
    mutopiainstrument = "Piano"
 
 
    % Footer, tagline, and copyright blocks are included here for reference
    % and spacing purposes only.  There's no need to change these.
    % These blocks will be overridden by Mutopia during the publishing process.
    footer = "Mutopia-2014/01/01-1234"
    copyright = \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9 "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #12 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " " 2014 " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans { " " \with-url #"http://creativecommons.org/licenses/by-sa/3.0/" "Creative Commons Attribution ShareAlike 3.0 (Unported) License " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
    tagline = ##f
}

%----- Caveats ---------------------------------------------------------------
% - Some grace notes are specially done with work-arounds
%   * Most are shortened to avoid insufficient note length stealing from normal notes,
%     see the bar 24 one for extreme example (otherwise 2 hands will be out of sync)
%   * starting a voice with grace note mess up some voice properties
% - Hairpins don't follow Gutheil edition closely
%   * Most of the start/end locations look arbitraty
%   * Some hide under slurs (and resized) to save space, but it's too packed
%   * following them exactly is a heavy burden, and may not reflect true intention
% - Some stem/slur direction don't follow Gutheil edition (follows Lilypond automatic layout),
%   allowing more compact staff

%----- Known problems --------------------------------------------------------
% - Some slurs might need tweaking to look better, e.g.
%   * Left hand slur spanning bar 22-23
%   * Right hand slur spanning bar 4-5, between bar 19-20
% - Still considering unifying the direction of last few notes, some other edition does that
% - MIDI completely broken
%   * Sound volume is a mess because some dynamics are in its own staff while others are
%     attached to LH / RH.
%   * Adding tons of invisible dynamics to both staves is not easy to manage, tackle later
%   * As a result, midiMinimumVolume and midiMaximumVolume are set to prevent uncontrolled
%     sound volume
%   * Grace notes will never sound like natural performance
%   * Ritardando is only crudely simulated
% - Some <> hairpin pairs are not vertically aligned


%--------Definitions and shorthands
global = {
  \key fis \minor
  \time 4/4
}

subBeam = {
  \once \set subdivideBeams = ##t
  \once \set baseMoment = #(ly:make-moment 1 8)
}

barLinePad = { % some dynamics sticking too close to bar lines
  \once \override Staff.BarLine.space-alist.next-note = #'(semi-fixed-space . 2.0)
}

hideTempo = { % for controlling midi speed
  \once \omit Score.MetronomeMark
}


%-------- Right Hand parts

RHone = \relative c'' { % bar 21-23
  r4 \clef treble <d d'>2-- \clef treble <dis dis'>4-- |
  r4 \clef treble <e e'>4-- r2 |
  \clef treble <g g'>2-> r4 \clef treble <gis gis'>8-> <gis gis'>16-> <gis gis'>-> |
}

RHtwo = \relative c { % bar 21-23
  b2-- \clef bass a-- |
  \clef bass gis4.-- \clef bass \tuplet 3/2 { gis16^( g gis } g2->) |
  r4 r8 \clef bass fis8->( eis2->) |
}

RH = \relative c'' {
  \tempo \markup{ \huge{ "Largo." } } 4 = 58
  % invisible bar to cope with left hand grace note, see start of left hand portion
  \partial 16 s16 \bar ""
  % bar 1-10
  R1 |
  r4 fis2(--^\mf e4^\> |
  d1)\! |
  r4 d2(-- bis8.-- cis16-- |
  cis2.)-- b4-- |
  a1~ |
  a4 r r2 |
  r4 fis'(^\mf e4. cis8^\> |
  d1)\! |
  r4 d2( bis4)-- |

  % bar 11-20
  cis2.~ cis8 cis8-- |
  cis1--~ |
  cis4 r cis'4.^\mf--( a8--) |
  a2-- \clef bass cis,,4.-- a8-- |
  a2-- \clef treble cis''4--~\( \tuplet 3/2 { cis8 cis,-- gis'-- } |
  a2--\) \clef bass a,,4.-- fis8-- |
  fis2-- \clef treble <fis'' fis'>4.-- <d d'>8-- |
  <d d'>2-- \clef bass fis,,4.-- d8-- |
  d2-- \clef treble <fis'' fis'>8-- fis--~
  \subBeam fis16 fis16(
  \tuplet 3/2 { <cis cis'> fis <cis cis'> } |
  <d d'>2--) \clef bass d,,4.-- b8-- |
  
  % bar 21-23
  <<
    { \voiceOne \RHone }
    \new Voice
    { \voiceTwo \RHtwo }
  >>

  % bar 24-29
  \oneVoice
  % allow LilyPond decide potential line breaks within bars
  % otherwise impossible to achieve ragged-* settings
  <gis''' gis'>2-> \bar "" <fis fis'>->~ |
  <fis fis'>4 <e e'>2( <cis cis'>4 |
  <c d fis d'>2.) <a a'>4( |
  <aes bes d bes'>2) \bar "" r8 <b d b'>4 <b cis b'>8-- |
  <b cis b'>2--( \bar "" <a fis' a>) |
  r4 <g b g'>2( <fis a fis'>4) |
  
  % bar 30-32
  << { fis'2.-- } \\ { <fis, a>8 s8 s2 } >> e'4-- |
  d2.-- bis4-- |
  cis2--
  \hideTempo \tempo 4 = 54
  a4..-- fis16-- |
  
  % bar 33-35
  % see left hand for tempo mark
  <<
    \relative c {
      r4 r8 \clef bass cis8^\mf-- <cis fis,>4.-- cis8-- |
      cis[(^\<-3 b]\!-2
      % default fingering position doesn't look good
      \once \override Fingering.avoid-slur = #'ignore
      \once \override Fingering.extra-offset = #'(-0.8 . -1.5)
      fis'[^\>-4 e])\! b(^\< fis'\! a^\> gis\! |
      fis1--) |
    }
    \\
    \relative c' {
      fis1 |
      fis,,4 a b cis |
      r16 \clef treble fis''^( <gis, b> fis' <a, bis>^\< fis' <a, cis>\! fis')
      <a, cis>^(^\> fis' <gis, b>\! fis' <a, bis> fis' <a, cis> fis') |
    }
  >>
  
  % bar 36-37.5
  <a cis>--(^\< fis' <b, d>\! fis' <bis, dis>--^\> a' <cis, e>\! a')
  <d, eis>(^\> b' <d, fis>\! b') <e, fisis>(^\> cis' <eis, gis>\! cis') |
  <fis fis,>( cis b gis a gis eis fis) cis'( a gis eis fis d bis cis) |
  fis( cis b gis a gis eis fis)
  
  % bar 37.5-39.5
  <<
    \relative c' {
      s2 | r2
      \tuplet 3/2 { \repeat unfold 3 { <fis a cis fis>8-- } }
      <fis a cis fis>4--~ |
      \stemDown <fis a cis fis>2
    } \\
    \relative c' {
      \voiceOne
      cis'16_( a fis e
      \hideTempo \tempo 4 = 52
      \subBeam fis^\markup{\italic "rit."} d
      \tuplet 3/2 { b16 gis cis } |
      \hideTempo \tempo 4 = 48
      fis,1) |
      s2
    }
  >>
  
  % bar 39.5-41
  <fis a cis fis>4.-- <fis a cis fis>8-- |
  <fis a cis fis>1--\fermata \bar "|."
}

%---------- Left Hand parts

LHone = \relative c' {
  % staff or voice starting with grace note has been b0rked for ages
  % https://code.google.com/p/lilypond/issues/detail?id=34
  \partial 16 \relative c, { \afterGrace s16 { \scaleDurations 2/3 { fis8[( cis'8] } } } \bar ""

  % bar 1-5
  a16 fis' b, fis') \repeat unfold 5 { bis,--( fis' cis fis) }
  \clef treble
  d--( fis <cis e> fis) <cis e>--( fis <cis eis> fis) |
  \repeat unfold 4 { <d eis>--( g   <d fis> g)   } |
  \repeat unfold 3 { <d eis>--( gis <d fis> a')  } eis--( gis fis a) |
  <fis a>--( b <eis, a> b') <fis a>--( b <eis, a> b')
  <fis gis>--( a <eis gis> a) fis--( gis eis gis) |

  % bar 6-10
  fis( gis eis fis e fis dis e
  d e cis d \clef bass bis cis b cis) |
  \grace { \scaleDurations 2/3 { fis,,8( cis' } } a'16^\< fis' b, fis')\!
  \repeat unfold 3 { bis,--(^\> fis' cis fis)\! } |
  \repeat unfold 2 { bis,--( fis' cis fis) }
  cis--( fis d fis) \clef treble <cis e>--( fis <cis eis> g') |
  \repeat unfold 2 { <d eis>--( g   <d fis> g)   }
  \repeat unfold 2 { <d eis>--( gis <d fis> gis) } |
  \repeat unfold 3 { <d eis>--( gis <d fis> a')  } eis--( gis fis a) |
  
  % bar 11-15
  <fis a>--( b <eis, a> b') <fis a>--( b <eis, a> b')
  <fis a>--( b <fis gis> a) gis--( a g gis) |
  a( b gis a g a fis g eis fis e fis dis e d e) \clef bass |
  \grace { \scaleDurations 2/3 {  a,,8( e' } } \clef treble cis'16^\< a' d, a')\!
  \repeat unfold 2 { dis,^\>--( a' e a)\! } e^\>--( a eis a)\! |
  eis--( a fis a) <cis, fis>( a' <fis gis> b <fis gis> b <e, a> cis' <fis, a> cis' <f, a> d' |
  <fis, a cis> dis' <e, a cis> e') \repeat unfold 2 { dis,--( a' e a) } e--( a eis a) |

  % first beat of bar 16
  eis--( a fis a)
}

LHtwo = \relative c {
  \partial 16 s16 |
  % bar 1-10
  fis8 gis a4 a a |
  ais ais ais ais |
  b b b b |
  bis bis bis d |
  cis cis cis cis |
  d8( a cis b fis a <dis, fis> <d fis>) |
  fis8[ gis] a4 a a |
  ais ais ais ais |
  b b b b |
  bis bis bis d |
  
  % bar 11-15
  cis-- d-- dis-- e-- |
  fis8( cis e d a cis fis, <f a>) |
  a b cis4 cis cis |
  cis r r2 |
  r4 cis cis cis | cis
}

LHthree = \relative c, {
  % bar 24-26
  % FIXME: I give up tweaking to sound like real performance.
  % Even with \afterGrace, the note BEFORE padding space is stealed
  % It might be doable with cue notes but then cross-voice slur becomes another problem
  % Here is the deal: the grace notes are virtually indistinguishable

  % It makes more sense to use slurDown, following Gutheil edition in this appoggiatura,
  % instead of following convention. Situation is different for the next 2 appoggiatura
  \slurDown
  \shape #'((0 . 0) (-0.35 . -0.3) (-0.7 . -0.6) (-1.05 . -1)) Slur % not overlap with end note stem
  \appoggiatura { \scaleDurations 1/2 { fis,16[ fis' cis' a' cis] } }
  \slurNeutral
  % curse this grace note thing again, stem direction is messed up
  \voiceOne
  \clef treble a'8( b bis cis) fis,( g gis a) |
  cis,[( dis] \clef treble e[ eis] fis g gis a) |
  \clef bass \appoggiatura { d,,,16[ a' fis'] }
  d'8( e f fis) a,( b c cis) |
  
  % bar 27-29
  d16-- aes ees'-- f, e'-- d f-- aes,
  \clef treble eis'-- <b d> fis'-- <b, d> fisis'-- <b, cis> gis'-- <b, cis> |
  \clef bass \appoggiatura { a,16 fis' cis' }
  gis'8( fis eis fis bis, cis) a( b) |
  bis16( fis cis') cis, cis'( d, d' g, e' b cis) g d'( fis, dis') a |
  
  % bar 30-31
  \repeat unfold 2 { bis--( fis' cis fis) } \clef treble
  cis--( fis d fis) <cis e>--( fis <cis eis> g') |
  <d eis>--( g <d fis> g) <d eis>--( gis <d fis> gis)
  <d eis>--( gis <d fis> a') eis--( gis fis a) |
}

LHfour = \relative c'' {
  % bar 24-26
  a16 <a, cis> b' <a, cis> bis' <a, cis> cis' <a, cis>
  fis' <a, cis> g' <a, cis> gis' <a, cis> a' <a, cis> |
  cis a dis fis, e' cis eis a, fis' cis g' a, gis' cis, a' fis, |
  d' a e' c f a, fis' fis, a fis b d, c' fis, cis' a |
  
  % bar 27-29
  d8[ ees] e[ f] \autoBeamOff eis fis fisis gis \autoBeamOn |
  gis16 <fis, cis'> fis' <fis, cis'> eis' <fis, cis'> fis' <fis, cis'>
  bis fis cis' fis, a fis b cis, |
  bis'8[ cis] \autoBeamOff cis d e[ cis] d dis \autoBeamOn |
  
  % bar 30-31
  \once \stemUp \acciaccatura cis,8 a'4 a ais ais |
  b b bis d |
}

LHfive = \relative c { % bar 24-31
  s1*3 |
  \stemDown
  % Default horiz shift for 3rd voice either is unnecessary or
  % doesn't work (some notes would overlap), so do it manually
  \once \override NoteColumn.force-hshift = #0
  bes2
  \once \override NoteColumn.force-hshift = #0.8
  a'4_(
  \once \override NoteColumn.force-hshift = #0.8
  gis) |
  s1 |
  \override NoteColumn.ignore-collision = ##t
  a,4 b2 bis4 |
  s1*2 |
}

LH = {
  % bar 1-15
  <<
    { \voiceOne \LHone }
    \new Voice
    { \voiceTwo \LHtwo }
  >>

  \oneVoice \relative c' {
    % 2nd quaver of bar 16 - 20
    <cis eis>16( a' <d, fis> b' <dis, fis> b' <d, f> bis' <d, fis> bis' <cis, fis a> cis' |
    <e, fis a> cis' <d, fis a> d') <gis,, d' fis>--( gis' <a, d fis> a')
    \repeat unfold 2 { <a, d fis>--( a' <ais, cis fis> ais') } |
    \repeat unfold 2 { <ais, cis fis>--( ais' <b, d fis> b') }
    <b, d fis>( b' <cis, e fis> cis' <b, d fis> cis' <bes, e g> d' |
    <a, e' g> d' <d, fis a> d') <gis,, d' fis>--( gis' <a, d fis> a')
    \repeat unfold 2 { <a, d fis>--( a' <ais, cis fis> ais') } |
    \repeat unfold 2 { <ais, cis fis>--( ais' <b, d fis> b') }
    <b, d fis>( b' <c, d fis> c' <c, d fis> c' <cis, d fis> cis' |
    <cis, g'> cis' <d, g> d') <b, d fis>--( b' <b, d g> b')
    <b, d g>--( b' <b, dis g> b') <b, dis fis>--( b' <b, dis g> b') |
    
    % bar 21-23
    <b, dis gis>--( b' <b, e gis> b') <b, e g>--( b' <b, e gis> b')
    <f, b d>( e' <f, b d> f' <f, b d> g' <f, b d> a' |
    <b, d f> b' <c, f> c' <cis, f> cis' <d, fis> d' <d, g> d' <d, gis> d'
    \tuplet 6/4 { <d, gis a> d' <d, gis ais> d' <d, gis b> d') } |
  } \clef bass
  
  % bar 24-31
  <<
    { \voiceOne \LHthree }
    \new Voice { \voiceTwo \LHfour }
    % Not following lilypond recommendation on voice order, it ends up doing more work since
    % notes in 3rd (middle) voice are horizontally shifted. We want the bottom ones shifted instead
    \new Voice { \voiceThree \LHfive }
  >>
  
  \oneVoice \relative c'' {
    % bar 32-36
    <a fis cis>( b <gis e> a <fis d> gis <e a,> fis
    <dis b> e <d fis,> e \clef bass <cis eis,> d <b cis,> cis) |
    \set Score.tempoHideNote = ##t
    % align with grace notes, so not marking tempo on right hand
    \tempo \markup{ \huge{ "a tempo" } } 4 = 58
    \grace { \scaleDurations 2/3 { fis,,8^( cis' } } <fis a>16 fis' <gis, b> fis' <a, bis>^\< fis' <a, cis> fis')\!
    <a, cis>( fis'^\> <gis, b> fis'\! <a, bis>^\< fis' <a, cis> fis')\! |
    \clef treble <a, cis>(^\< fis' <b, d>\! fis' <bis, dis>^\> a' <cis, e>\! a')
    <d, eis>(^\< b' <d, fis>\! b' <e, g>^\> cis' <eis, gis>\! cis') |
    <cis, fis a>16 r r8 r \clef bass cis-- <cis fis,>4.-- cis8-- |
    <<
      {
        % work around problem: (De)crescendo with unspecified starting volume in MIDI
        \once \omit Voice.DynamicText
        cis--\mf[(_\< b]\! a--[_\> e'])\!
        \clef treble b--[( fis']) cis--[( gis'])
      } \\
      \relative c { fis4 a b cis }
    >>
    
    % bar 37-41
    <fis a>2.~ <fis a>16 d( bis cis) |
    \clef bass fis,( cis b gis a gis eis fis)
    <<
      \relative c, {
        s2 | r2
        \once \override Beam.positions = #'(4.5 . 4.5) % align beamed and unbeamed notes
        \tuplet 3/2 { \repeat unfold 3 { <fis cis' fis a>8-- } }
        <fis cis'fis a>4--~ |
        <fis cis'fis a>2
      } \\
      \relative c, {
        \voiceOne
        cis'16_( a fis e
        \subBeam fis d
        \tuplet 3/2 { b16 gis cis } |
        fis,1) |
        s2
      }
    >>
    <fis cis' fis a>4.^- <fis cis' fis a>8^- |
    <fis cis' fis a>1^-\fermata
  }
}

%------------ Dynamics

Dynamics = {
  \partial 16 s16 |
  % bar 1-10
  s16\pp\< s8 s16\! \repeat unfold 5 { s16\> s8 s16\! }
  s2 |
  s2\pp s4.\< s8\! |
  s1\mf |
  s4 s2.\dim |
  \barLinePad s1\pp |
  s1*2 |
  s2\pp s4.\< s8\! |
  s1\mf |
  
  % bar 11-20
  s4 s2.\dim |
  \barLinePad s1\pp |
  s1 |
  s2 s2\< |
  s8\> s8\! s4\p s2 |
  s2 s2\< |
  s8\> s8\! s4 s2\cresc |
  s2\! s2\< |
  s8\> s8\! s4 s2\cresc |
  s2\! s2\< |
  
  % bar 21-30
  s4\f\> s4\p s2\cresc |
  s2 s2\f |
  s4 s2.\cresc |
  s1\ff |
  s1\dim |
  s1\p |
  s2 s4.\< s8\! |
  s4.\> s8\! s2 |
  s4 s2.\dim |
  s1\p |
  
  % bar 31-41
  s4 s4.\< s8\! s8\> s8\! |
  s4\p
  s2.-\markup{\italic "dim. e rit."} |
  s4\pp s2. |
  s1*3 |
  \barLinePad s1\pp |
  s1 |
  s2 s4\< s4\f |
  s2\dim s4.\> s8\! |
  s1\pp |
}

%-------Typeset music and generate midi
\score {
  \context PianoStaff <<
    %-Midi instrument values at 
    % http://lilypond.org/doc/v2.18/Documentation/snippets/midi#midi-demo-midiinstruments
    \set PianoStaff.midiInstrument = "acoustic grand"
    \new Staff << \clef treble \global \RH >>
    \new Dynamics << \Dynamics >>
    \new Staff << \clef bass   \global \LH >>
  >>
  \layout {
    \context {
      \Score
      \override TupletBracket.bracket-visibility = ##f
      \override DynamicTextSpanner.style = #'none
    }
  }
  \midi {
    \tempo 4 = 58
    \context {
      \Score
      midiMinimumVolume = #0.3
      midiMaximumVolume = #1
    }
  }
}