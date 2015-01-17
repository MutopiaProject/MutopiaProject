\version "2.18.2"

paperOFF = { \set Score.skipTypesetting = ##t }
paperON = { \set Score.skipTypesetting = ##f }

myBreak =  {}
%% myBreak =  { \break }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% slur attachments (once)
oahh =  { \once\override Slur.attachment = #'(head . head) }
oahs =  { \once\override Slur.attachment = #'(head . stem) }
oash =  { \once\override Slur.attachment = #'(stem . head) }
oass =  { \once\override Slur.attachment = #'(stem . stem) }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% CHANGE STAFF
%% -- Requires that staves are defined as
%%    \context Staff = "rh" {}
%%    \context Staff = "lh" {}
csrh = { \change Staff = "rh" }
cslh = { \change Staff = "lh" }

ottavaOn = \ottava #1
ottavaOff = \ottava #0

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% rewrite some spanners (see /usr/share/lilypond/2.2.2/ly/spanners-init.ly)
crescTextCresc = {
    \set crescendoText = \markup { \italic "cresc." }
    \set crescendoSpanner = #'text
    \set decrescendoText = \markup { \italic "decr." }
    \set decrescendoSpanner = #'text
}
dimTextDecresc = {
    \crescTextCresc
}
dimTextDim = {
    \crescTextCresc
    \set decrescendoText = \markup { \italic "dim." }
    \set decrescendoSpanner = #'text
}
crescHairpin = {
    \unset crescendoText
    \unset crescendoSpanner
    \unset decrescendoText
    \unset decrescendoSpanner
}
noCrescSpanner = {
    \set crescendoSpanner = #'none
    \set decrescendoSpanner = #'none
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% simpler sustain commands (spanners-init.ly again)
ped = #(make-span-event 'SustainEvent START)
pup =  #(make-span-event 'SustainEvent STOP)

%For partial measures after begining of piece
partialA = \set Timing.measurePosition = #(ly:make-moment 7/8)

posHairpinA = \once \override Hairpin.extra-offset = #'( 0 . 0 ) 
posBeamA = \once \override Beam.positions = #'(1.2 . -1.0)

%Modify beat structure
setBeatStructureHalf = {
  \set Voice.baseMoment = #(ly:make-moment 1/2)
  \set Voice.beatStructure = #'(1)
}
setBeatStructureQuarter = {
  \set Voice.baseMoment = #(ly:make-moment 1/4)
  \set Voice.beatStructure = #'(1 1)
}

setCalandoSpanner = {
  \override TextSpanner.bound-details.left.text = "cal "
  \override TextSpanner.bound-details.right.text = " ando"
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% OVERRIDE THE DYNAMICS STUFF -- defaults don't look nice on the dynamics staff
cresc = \markup{\italic cresc.}
dim = \markup{\italic dimin.}
ppppp = \markup{\dynamic ppppp}
pppp = \markup{\dynamic pppp}
ppp = \markup{\dynamic ppp}
pp = \markup{\dynamic pp}
p = \markup{\dynamic p}
mp = \markup{\dynamic mp}
%mf = \markup{\dynamic mf}
%f = \markup{\dynamic f}
%ff = \markup{\dynamic ff}
%fff = \markup{\dynamic fff}
ffff = \markup{\dynamic ffff}
fp = \markup{\dynamic fp}
sf = \markup{\dynamic sf}
sfp = \markup{\dynamic sfp}
sff = \markup{\dynamic sff}
sfz = \markup{\dynamic sfz}
fz = \markup{\dynamic fz}
sp = \markup{\dynamic sp}
spp = \markup{\dynamic spp}
rfz = \markup{\dynamic rfz}
deprecatedcresc = \markup { \italic "cresc." }
deprecateddim = \markup { \italic "dimin." }


%% Useful comment:
%%         > The <<{...} \\ {...} \\ ... >> feature that you use is a bit more
%%         > intelligent then you probably have realized. This construct is
%%         > equivalent to
%%         > << \context Voice = 1 {\voiceOne ...}
%%         >    \context Voice = 2 {\voiceTwo ...}
%%         >    \context Voice = 3 {\voiceThree ...}
%%         >    \context Voice = 4 {\voiceFour ...} >>
%%         > Which means, first of all, that the different voices are put
%%         > in separate Voice contexts, each of which can have separate
%%         > properties. Secondly, the \voiceOne, ..., \voiceFour provide the
%%         > following:
%%         >
%%         > \VoiceOne:   Direction upwards, keep horizontal position at collisions
%%         > \VoiceTwo:   Direction downwards, keep horizontal position at collisions
%%         > \VoiceThree: Direction upwards, move horizontally at collisions
%%         > \VoiceFour:  Direction downwards, move horizontally at collisions
%%         >
%%         > (the direction is the direction of both slurs, ties, stems,
%%         > articulations and so on).
