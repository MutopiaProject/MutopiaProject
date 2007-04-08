\version "2.2.0"

paperOFF = \notes{ \set Score.skipTypesetting = ##t }
paperON = \notes{ \set Score.skipTypesetting = ##f }

myBreak = \notes {}
%% myBreak = \notes { \break }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% slur attachments (once)
oahh = \notes { \once\override Slur #'attachment = #'(head . head) }
oahs = \notes { \once\override Slur #'attachment = #'(head . stem) }
oash = \notes { \once\override Slur #'attachment = #'(stem . head) }
oass = \notes { \once\override Slur #'attachment = #'(stem . stem) }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% CHANGE STAFF
%% -- Requires that staves are defined as
%%    \context Staff = "rh" {}
%%    \context Staff = "lh" {}
csrh = { \change Staff = "rh" }
cslh = { \change Staff = "lh" }

ottavaOn = #(set-octavation 1)
ottavaOff = #(set-octavation 0)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% rewrite some spanners (see /usr/share/lilypond/2.2.2/ly/spanners-init.ly)
setTextCresc = {
    \set crescendoText = \markup { \italic "cresc." }
    \set crescendoSpanner = #'dashed-line
    \set decrescendoText = \markup { \italic "decr." }
    \set decrescendoSpanner = #'dashed-line
}
setTextDecresc = {
    \setTextCresc
}
setTextDim = {
    \setTextCresc
    \set decrescendoText = \markup { \italic "dim." }
    \set decrescendoSpanner = #'dashed-line
}
setHairpinCresc = {
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
mf = \markup{\dynamic mf}
f = \markup{\dynamic f}
ff = \markup{\dynamic ff}
fff = \markup{\dynamic fff}
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

defPaperDynamicsContext = \context {
    \type "Engraver_group_engraver"
    \name Dynamics
    \alias Voice % So that \cresc works, for example.
    \consists "Output_property_engraver"

    minimumVerticalExtent = #'(-1 . 1)
    %% pedalSustainStrings = #'("Ped." "*Ped." "*")
    %% pedalUnaCordaStrings = #'("una corda" "" "tre corde")

    \consists "Piano_pedal_engraver"
    \consists "Script_engraver"
    \consists "Dynamic_engraver"
    \consists "Text_engraver"
    \consists "Text_spanner_engraver"


                                % position the text markup (cresc-en-do etc)
                                % Note: extra offset 2nd value +ve up -ve down
    %% \override TextScript #'font-size = #2
    %% \override TextScript #'font-shape = #'italic
    \override TextScript #'extra-offset = #'(0 . 1.5) % NEW p, ff etc, defined here in defs.h


                                % position the dynamics (pp, ff etc)
                                % Note: extra offset 2nd value +ve up -ve down
    \override DynamicText #'extra-offset = #'(0 . 2.2) % OLD p, ff etc, overriden here in defs.h
    \override Hairpin #'extra-offset = #'(0 . 1.5)     % <, >

                                % postion the pedal marks
    %% \override SustainPedal #'extra-offset = #'(0 . 1)
    %% \override PianoPedalBracket #'extra-offset = #'(0 . 1)


    \consists "Skip_event_swallow_translator"
    \consistsend "Axis_group_engraver"
}

defMidiDynamicsContext = \context {
    \type "Performer_group_performer"
    \name Dynamics
    \consists "Piano_pedal_performer"
    \consists "Span_dynamic_performer"
    \consists "Dynamic_performer"
}



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
