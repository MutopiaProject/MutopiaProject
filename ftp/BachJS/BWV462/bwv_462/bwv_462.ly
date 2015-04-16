%%--------------------------------------------------------------------
% The Mutopia Project
% LilyPond template for keyboard solo piece
%%--------------------------------------------------------------------

\version "2.18.0"

%---------------------------------------------------------------------
%--Paper-size setting must be commented out or deleted upon submission.
%--LilyPond engraves to paper size A4 by default.
%--Uncomment the setting below to validate your typesetting
%--in "letter" sizing.
%--Mutopia publishes both A4 and letter-sized versions.
%---------------------------------------------------------------------
% #(set-default-paper-size "letter")

%--Default staff size is 20
#(set-global-staff-size 20)

\paper {
    top-margin = 8\mm                              %-minimum top-margin: 8mm
    top-markup-spacing.basic-distance = #6         %-dist. from bottom of top margin to the first markup/title
    markup-system-spacing.basic-distance = #5      %-dist. from header/title to first system
    top-system-spacing.basic-distance = #12        %-dist. from top margin to system in pages with no titles
    last-bottom-spacing.basic-distance = #12       %-pads music from copyright block
%    ragged-bottom = ##f
%    ragged-last-bottom = ##f
}

%---------------------------------------------------------------------
%--Refer to http://www.mutopiaproject.org/contribute.html
%--FOR:q usage and possible values for header variables.
%---------------------------------------------------------------------
\header {
    title = "Gott, wie gross ist deine Güte"
    composer = "Johann Sebastian Bach"
    opus = "Schmellis Gesangbuch, No. 26"
    %piece = "Left-aligned header"
    date = "1736"
    style = "Baroque"
    source = "Franz Wullner edition, 1893 (on IMSLP)"

    maintainer = "David McNamara"
    maintainerEmail = "mapadofu@github"
    license = "Public Domain"

    %mutopiatitle = ""  % default to plain title
    %mutopiaopus = "Op.0" % default to plain opus 
    mutopiacomposer = "BachJS"
    %--A list of instruments can be found at http://www.mutopiaproject.org/browse.html#byInstrument
    %--Multiple instruments are separated by a comma
    mutopiainstrument = "Piano"

    % Footer, tagline, and copyright blocks are included here for reference
    % and spacing purposes only.  There's no need to change these.
    % These blocks will be overridden by Mutopia during the publishing process.
    footer = "Mutopia-2014/04/05-0"
    copyright = \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9 "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #12 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " " 2014 " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans { " " \with-url #"http://creativecommons.org/licenses/by-sa/3.0/" "Creative Commons Attribution ShareAlike 3.0 (Unported) License " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
    tagline = ##f
}

%--------Definitions
global = {
  \key bes \major
  \time 4/4 
}

% overallForm="AABA"

melody={
  \repeat volta 2 \relative c'' { % A section
    
    d4 d8 (c8) c4 c4 |
    f8 [ (g) ] f (ees) d4 d4 |
    ees4. f8 d8 [(c)] d (ees) |
    c4. bes8 bes2 
  } \break

  \relative c'' {    % B section
    d4 d bes4. bes8 |
    ees8 [(d)] c (bes) a4 a |
    d4 d bes4. c8 |
    a4 d4 b2 |
  } \break

  \relative c'' { % C section
    d4. d8 ees4 ees |
    ees8 [(c)] d (ees) c4 c |
    f4. g8 ees8 [(d)] ees (f) |
    d4. c8 c2 | 
  } \break
  \relative c'' { %D section
    ees4 ees ees8 [(d)] ees (f) |
    d4. d8 d8 [(c)] d (ees) |
    c4. c8 c8 [(ees)] d (c) |
    c4. bes8 bes4 bes |
  } \break
}

hymn=\lyricmode { <<
  { % First A section 
    Gott, wie gross ist dei -- ne Gü -- te die mein Herz auf Er -- den schmeckt
  }
  \new Lyrics { % Second A section
    Ach, wie labt sich mein Ge -- mü -- the, wenn mich Noth un Tod er -- schreckt 
  }
>>
  { Wenn mich et -- was will be -- trü -- ben, wenn mich mei -- ne Sün -- de presst, }
  { zei -- get sie von dei -- nem Lie -- ben, das mich nicht ver -- za -- gen lässt; }
  {drauf ich mich zu -- frie -- den stel -- le und Trotz bie -- ten kann der Höl -- le. }
}

bass={ 
  \repeat volta 2 { 
    \relative c' {
        bes4 bes, f'8 g f ees |
        d4 d g8 a bes g |
        c8 bes a f bes4 ees, |
        f8 ees f f, bes2
    }
  }
  \relative c {
    bes8 c d bes ees8 f ees d |
    c4 g d'8 ees d c |
    bes8 a g fis g4 c4 |
    d4 d,4 g8 d' g a |
  }
  \relative c' {
    b8 d g, b  c8 bes a g |
    f4 bes, f'8 g f ees |
    d8 c b g c4 f |
    g8 f g g, c2
  }
  \relative c' {
    c8 d c bes a4 f |
    bes8 c bes a g4 f |
    ees8 c d ees f4 bes, |
    f'8 ees f f, bes2
  }
}

bassfigures = \figuremode {
  \repeat volta 2{ % A section
    s1
    s1
    s4 <6 5>4 s4 <7 5>4 |
    <4>4 <3>4 s2
  }
  { % B section
    s4 <6>4 <9>8 <7>16 <6> <8>4 |
    s4 <4>8 <3>8 <4>4 <_+>4 |
    <6>4 <5 2>4 <9>8 <8>16 <7\\>16 <7 5>4 |
    <4>4 <_+>4 <_!>2
  }
  { % C section 
    <6>4 <_!>4 s4 <6 5>8 <6>8 |
    <7 5>4 s4 <4>4 <3>4 |
    <6\\ 5->4 <6 5>4 s4 <7 5 _->8 <6>8 |
    <5 4>4 <_!>4 s2
  }
  { % D section
    s2 <6 5>4 <7> |
    <9>8 <7>16 <6> <8>4 s4 <6 4 2>4 |
    <6 5>2 s4 s4 |
    <4>4 <3>4 s2 |
  }
}

%-------Typeset music and generate midi
\score {
    \context PianoStaff <<
        %-Midi instrument values at 
        % http://lilypond.org/doc/v2.18/Documentation/snippets/midi#midi-demo-midiinstruments
        \set PianoStaff.midiInstrument = "acoustic grand"
        \new Staff = "upper" { \clef treble \global \new Voice = "melody" \melody}
        \new Lyrics \lyricsto "melody" {\hymn}
        \new Staff = "lower" { \clef bass \global \bass}
        \new FiguredBass{ \bassfigures }
    >>
    \layout{ }
    \midi  { \tempo 4 = 70 }
}
