paperOFF = \notes{ \set Score.skipTypesetting = ##t }
paperON = \notes{ \set Score.skipTypesetting = ##f }

barRest = \notes { s1 }

myBreak = { } %\notes{ \break }

%% Hide note heads
hh  = { \override NoteHead #'transparent = ##t }
uhh = { \revert NoteHead #'transparent }
ohh = { \once\override NoteHead #'transparent = ##t  }
% ohh = { \once\override NoteColumn #'force-hshift = #1 }

% hide note entirely (stem up)
ohnu = {
    \once\override NoteHead #'transparent = ##t
    \once\override Stem #'transparent = ##t
    \once\override Stem #'direction = #1
    \once\override Beam #'transparent = ##t
}
% hide note entirely (stem down)
ohnd = {
    \once\override NoteHead #'transparent = ##t
    \once\override Stem #'transparent = ##t
    \once\override Stem #'direction = #-1
    \once\override Beam #'transparent = ##t
}


%% Force clashing note columns ('line up')
lu  = { \override NoteColumn #'force-hshift = #0 }
ulu = { \revert NoteColumn #'force-hshift  }
olu = { \once\override NoteColumn #'force-hshift = #0 }

%% Change staff
csrh = { \change Staff = "rh" }
cslh = { \change Staff = "lh" }

%% simpler sustain commands
sd  = \notes { \once\override Rest #'transparent = ##t r8\sustainDown }
su  = \notes { \once\override Rest #'transparent = ##t r8\sustainUp }
sud = \notes { \once\override Rest #'transparent = ##t r8\sustainUp\sustainDown }
