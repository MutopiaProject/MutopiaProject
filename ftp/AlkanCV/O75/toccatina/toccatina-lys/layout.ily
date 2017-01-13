%%%%%%% This is a setting file for feta font

piano_global =
{
\mergeDifferentlyHeadedOn
\mergeDifferentlyDottedOn
}

\layout{
	\context{
		\Score

%%%%%%%%% Accidental

		\override Accidental.hide-tied-accidental-after-break = ##f
		\override Accidental.extra-spacing-width = #'(-0.1 . -0.1)

%%%%%%%%%%%% Dynamics

		\override DynamicText.self-alignment-X = #1
		\override DynamicText.whiteout = ##t

		\override OttavaBracket.padding = #1.1

		\override MetronomeMark.padding = #2

		\override BarLine.extra-spacing-width = #'(-1.85 . 1.0)
		\override BarLine.space-alist.first-note = #'(fixed-space . 0.5)
		\override BarLine.space-alist.next-note = #'(fixed-space . 2.0)

		\override TextScript.whiteout = ##t
		\override BarNumber.self-alignment-X = #LEFT

%%%%%%%%%%% Beam

		\override Beam.breakable = ##t
		\override Beam.damping = #1.2
		\override Beam.beamed-stem-shorten = #'(1.0 0.5 0.25)
		\override Beam.collision-interfaces = #'(beam-interface clef-interface clef-modifier-interface flag-interface key-signature-interface note-head-interface stem-interface time-signature-interface)
		\override Beam.details = #'(
			(secondary-beam-demerit . 1.8)
			(stem-length-demerit-factor . 1.5)
			(region-size . 3)
			(beam-eps . 0.01)
			(stem-length-limit-penalty . 1000)
			(damping-direction-penalty . 8000)
			(hint-direction-penalty . 20)
			(musical-direction-factor . 400)
			(ideal-slope-factor . 1)
			(collision-penalty . 500)
			(collision-padding . 0.20)
			(round-to-zero-slope . 0.002))

		\override Stem.details = #'(
			(lengths 3.5 3.5 3.5 4.25 5.0 6.0)
			(beamed-lengths 3.0 2.5 1.0)
			(beamed-minimum-free-lengths 2.7 2.0 1.0)
			(beamed-extreme-minimum-free-lengths 2.41 1.8)
			(stem-shorten 0.4 0.2))

%%%%%%%% Slur

		\override Slur.details = #'(
			(region-size . 4)
			(head-encompass-penalty . 1000.0)
			(stem-encompass-penalty . 1000)
			(edge-attraction-factor . 1000)
			(same-slope-penalty . 10)
			(steeper-slope-factor . 50)
			(non-horizontal-penalty . 0)
			(max-slope . 1.0)
			(max-slope-factor . 10)
			(free-head-distance . 0.4)
			(free-slur-distance . 10.0)
			(extra-object-collision-penalty . 5000)
			(accidental-collision . 15)
			(extra-encompass-free-distance . 0.3)
			(head-slur-distance-max-ratio . 100)
			(head-slur-distance-factor . 20)
			(absolute-closeness-measure . 1.0)
			(edge-slope-exponent . 1500)
			(close-to-edge-length . 2.5)
			(encompass-object-range-overshoot . 10.5)
			(slur-tie-extrema-min-distance . 0.5)
			(slur-tie-extrema-min-distance-penalty . 20))

		\override Slur.ratio = #0.23
		\override Slur.height-limit = #2.4

%%%%%%%%%%%%% Tie

		\override Tie.details = #'(
			(ratio . 0.5)
			(center-staff-line-clearance . 0.8)
			(tip-staff-line-clearance . 0.8)
			(dot-collision-clearance . 2.5)
			(dot-collision-penalty . 80)
			(note-head-gap . 0.3)
			(stem-gap . 0.3)
			(tie-column-monotonicity-penalty . 0)
			(height-limit . 1.7)
			(horizontal-distance-penalty-factor . 150)
			(same-dir-as-stem-penalty . 8)
			(min-length-penalty-factor . 260)
			(tie-tie-collision-distance . 4.5)
			(tie-tie-collision-penalty . 50.0)
			(intra-space-threshold . 3.5)
			(outer-tie-vertical-distance-symmetry-penalty-factor . 0.5)
			(outer-tie-length-symmetry-penalty-factor . 0.5)
			(vertical-distance-penalty-factor . 80)
			(outer-tie-vertical-gap . 0.35)
			(multi-tie-region-size . 4)
			(single-tie-region-size . 4)
			(min-length . 1.3))

		}
	\context{
		\Staff

		\override NoteSpacing.stem-spacing-correction = #0.15
		\override NoteSpacing.same-direction-correction = #0.01
		\override StaffSpacing.stem-spacing-correction = #0.5
		}
}
