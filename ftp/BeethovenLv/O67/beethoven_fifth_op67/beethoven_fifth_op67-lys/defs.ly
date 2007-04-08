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



%% Useful comment:
%%         > The <<{...} \\ {...} \\ ... >> feature that you use is a bit more
%%         > intelligent then you probably have realized. This construct is
%%         > equivalent to
%%         > << \context Voice = 1 {\voiceOne ...}
%%         >  \context Voice = 2 {\voiceTwo ...}
%%         >  \context Voice = 3 {\voiceThree ...}
%%         >  \context Voice = 4 {\voiceFour ...} >>
%%         > Which means, first of all, that the different voices are put
%%         > in separate Voice contexts, each of which can have separate
%%         > properties. Secondly, the VoiceOne, ..., \VoiceFour provide the
%%         > following:
%%         >
%%         > \VoiceOne:   Direction upwards, keep horizontal position at collisions
%%         > \VoiceTwo:   Direction downwards, keep horizontal position at collisions
%%         > \VoiceThree: Direction upwards, move horizontally at collisions
%%         > \VoiceFour:  Direction downwards, move horizontally at collisions
%%         >
%%         > (the direction is the direction of both slurs, ties, stems,
%%         > articulations and so on).
