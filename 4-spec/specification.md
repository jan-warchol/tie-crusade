
The problem
-----------

There are two main aspects of tie formatting that we need to get right:

1. unambiguity - it must be obvious what the tie is connecting:
   - ends of the tie should point into connected noteheads,
   - ends of the tie should be positioned vertically close to the noteheads,
   - the tie should be visually different from a slur.

2. elegance - the tie should look good, which means that:
   - it should be long enough to be visible (especially at small staffsizes),
   - height and curvature should be neither too big nor too small,
   - tips should avoid the staffline,
   - belly should avoid the staffline,
   - tie should avoid other objects:
      * ledger lines,
      * augmentation dots,
      * stems (including stems of other voices),
      * slurs beginning/ending on the same note,
      * articulations,
      * other noteheads
   - distance between tie tips and the notehead/dot/accidental should be consistent,
   - ties connecting notes placed on different staffline positions should be
     reasonably similar (see 1st and 2nd example from `overview.ly`),
   - ties connecting the same pitches spaced differently should be visually
     compatible (see 3rd, 4th and 5th example from `overview.ly`),
   - the tie should interact smartly with accidentals, in particular
     reminder accidentals after a line break.  They should be avoided
     when that's reasonable, but sometimes the tie has to cross them
     intelligently.  The same goes for flags.
   - ties should work well with other notehead shapes, in particular breves.



important questions
-------------------

at which moment of program execution can we know what is the distance between noteheads? This is very important information and we would like to know this right from the very beginning of tie calculations.  It surely is possible to acess this information before making final decisions (we can see that long ties are formatted differently than short ones already), but can we have this info when we start calculations or do we have to make some initial decisions and guesses first?

Do we want to get rid of positions (half-staffspaces) and use staffspaces for measurements everywhere?



answers to the questions
------------------------

What do we need to know before calculating ties:
- horizontal distance between connected noteheads
- notehead vertical position (where are the stafflines)
- notehead horizontal position (which notes are suspended)
- stem direction
- augmentation dots
- visible accidentals in whole notecolumn
- arpeggios and similar stuff before notecolumn
- line breaking
- other noteheads in the column
- other note columns, tie signatures and other elements between connected notes
- whether there are any cross-voice stems and so on
- flag positions?
- ledger lines (which may be caused by other notes than the tied ones)
- beams?

What must be calculated after ties:
- flags?
- accidentals?
- beams?  They need at least a good approximation, including tie direction
- 
- 

What just needs to know that the ties exist, but doesn't have to know their exact shape


Control flow
------------

1. When calculating note spacing, we check for specific conditions that make it necessary to insert the tie strictly between noteheads (e.g. tied chord), and in that case we set some minimum distance between note columns.  This is the only situation when ties affect note spacing.

2. Calculate some tie directions.  We cannot determine directions of all ties (for example middle ties in a chord may depend on many different factors), but for some ties we can pin down their direction.

3. 


introduction: tie-configuration
-------------------------------

Currently there are 3 major ways of tweaking tie formatting.  The easiest and most basic method is changing tie direction, either using an \override or direction indicators (like this `{ c''_~ c'' }` ) - this is usually not a solution for fixing ugly ties.  The most complicated and powerful method is to use `\shape` function provided by David Nalesnik - it allows you to change bezier control points in any way you want, thus allowing to achieve any tie shape.  The downside is that it's quite laborious.

The third way is by overriding tie-configuration property of TieColumn, like this:

    {
      \set tieWaitForNote = ##t
      <g' d''> ~
      \override TieColumn #'tie-configuration =
      #'((-2.3 . -1)(2.3 . 1))
      s2 q
    }

Here, each pair corresponds to one tie.  First number is the vertical posistion of tie ends, relative to the middle staffline, measured in half-staffspaces; second number is the tie direction.  LilyPond chooses the exact horizontal placement of the ends, as well as the height of the tie, by herself.

I think that using `\shape` is an overkill - one usually doesn't want to tweak the tie that much.  After all, the tie generally stays horizontal (i.e. both ends on the same vertical position), and the height is closely related to the length.
On the other hand, tie-configuration has its own deficiencies: firstly, specifying direction this way is inconvenient - i find direction indicatiors _ ^ much better suited for this task, for instance they result in less typing (without having to specify direction in tie-configuration one wouldn't have to write additional parentheses and a dot necessary for creating a scheme pair - so the override could be shortened to `\override TieColumn #'tie-configuration = #'(-2.3 2.3)`).
Secondly, tie-configuration offers no easy way to override tie height, which is sometimes needed.
Finally, i fint it very inconvenient to have to specify the vertical position of the ends in half-staffspaces relative to the middle staffline.

I think that the tie-configuration should be changed from a list of pairs to a list of lists.  As before, each tie would correspond to one element in the top-level list.  In the bottom-level lists, the first value would be the vertical position of the tie ends relative to the tied notehead's center, in staffspaces.  The second value would be the exact height of the tie in spaffspaces, and it would be optional (less typing).

Notice that specifying Y-coordinates relative to the notehead Y-position will be "transposition-proof", i.e. if noteheads will change position because of transpostion the values may still make sense (not the case with current tie-configuration).  Also, one tweak might be easily used for a sequence of tied notes even if they have different pitches.

Actually, we could use this "setup" to control tie direction as well.  For example, positive tie height would mean an upward tie, and negative height - downward tie.

A more sophisticated (and more powerful) approach to specyfying height&direction would be to take default tie direction into account.  For example, in `{ a'~ a' }` the default tie direction is downwards, and therefore specifying positive height would mean a downward tie, while negative height would mean an upward tie (opposite to default direction).  Conversely, in `{ \voiceOne a'~ a' }` the default tie direction is up, so a positive height would mean an upward tie.  This would be more "transposition-proof", as the tweaks would continue to make sense even when the music is transposed or put into polyphonic voices.

I think that we should start changing the code (after we read and understand it) by implementing a mechanism that would just typeset tie when the user specifies this "tie-configuration".  The most important part of this task is probaby choosing the right horizontal coordinates for the tie end.  The next step would be having LilyPond find optimum tie-configuration values.


misc thoughts
-------------

the vertical "distance" between the tips of a tie and the notehead should depend directly on the vertical distance to the closest notehead (and whether that notehead is in the same voice or not);
basically when the distance is more than a fifth, the tie would be typeset as if it was a standalone tie (i.e. a tie connecting single notes, by which i mean notes that aren't inside a chord or a polyphony).

Because the tie has to avoid stafflines (and other stuff), the answer to the vertical positioning of the tie ends is not just one number, but rather an interval of acceptable positions.  For single note it's probably between 0.35 and 0.85 staffspaces from the vertical centre of the note (or would the answers be different for different staffline configuration, for example a tabstaff?)

There are just two main factors that we need to take into account when calculating possible tie shapes:
 - vertical position ot the tie tip relative to the notehead
 - height of the tie.
Length is more or less determined by the distance between noteheads, surrounding objects (flags, accidentals, augmentation dots, stems in cross-voices, ledger lines).  We would generally calculate a "path" of acceptable tip positions, which would lay in a certain distance from all these objects, and it will determine the horizontal position.  Of course, we will have to consider special cases like "should the tie start before augmentation dot or after it", but that doesn't give us swarms of new combinations.  The only problem i can see is that depending on whether the tie would begin before or after the dot, the dot's position would change - similarly with flags (a shorter variant of the flag may be used if necessary) etc.

The x-coordinates in the path of possible tip positions shouldn't be calculated simply as positions in which the distance between the points and the edge of the object (usually notehead) - doing so would result in the x-coordinate of the right tip to be too far right in this case: `{ a''2~ a'' }` .  The x-coordinate should be calculated as a compromise between distance to the object and the angle between the calculated point and the center of the notehead.

So, the algorithm would probably be as follows:
 - look for the neighboring noteheads and determine the range of acceptable vertical positions of the tips,
 - for each vertical position, calculate the horizontal position(s) in which the tips would be placed,
 - for the optimal vertical position and optimal height, calculate the badness. if it's below certain threshold, we're done.
 - if the badness is above threshold, continue trying other configurations.

what penalties we need:
 - direction opposite to the voicing setting (i.e. downward tie in voiceOne - sometimes it's desirable to have it this way)
 - tips stick out of the staffline for too short amount

When looking for the best tie, we can probably restrict considered heights based on tip vertical position (for tips placed significantly above the notehead it doesn't make sense to consider big negative heights (meaning high downward shape)) and length (for short ties we can consider only smaller heights).

In some cases it will be inevitable that tie belly will lie on top of the staffline.  I think that the penalty for this should depend on the tie/staffline thickness ratio (thick tie gets lower penalty because it remains legible)

What about the minimum length of a tie, and minimum distance between notecolumns connected by ties?  One thing is certain: ties need minimum length.  However, spacing the notecolumns is trickier - sometimes they could even touch each other (for example in case of `{ a' ~ a' }` the tie can be moved below the notes), but sometimes there has to be some space between them (for example here: `{ <f' a' c'' e''> ~ q }`).  I think that we should have a minimum-distance-between-tied-notecolumns property, independent from minumum-tie-length.  It's default value would be a function of notes in the notecolumn: if the tied note is alone, notecolumns can do whatever they want.  If there are more noteheads (there's a chord, or there are some other voices), a minimum distance is set.  Of course, there is still possibility that a single-voice tie will not have enough space to be moved below or above the noteheads becauss of other stuff (for example flags or dots), but i guess we have to live with that.

we can assume that the exact shape of the tie is determined by its height and length.  in other words, for an ASCII-art tie of height 2 and length 9 there could be many different shapes:

    |       |
     \_____/

    \       /
     '-._.-'
    
    '.     .'
      '-.-'

but we will always choose one.
Afterthought: i'm not so sure now.  After all, we may want to alter the shape so that the tips will point more in the direction of notehead center, but on the other hand this might have a negligible effect.  ANYWAY, we need a parameter that would affect this, so that users can choose a different "style"

if there's a note second apart in the other voice, try to ignore default tie direction and set it in another (if there's no second on that side) todo: add/find example

Keep in mind: we want to be able to access control points of all ties in a chord - currently this isn't quite possible, which makes \shape less useful.



some parameter values
---------------------

minimum length:
max (0.7 mm, 0.6 ss)

minimum curvature (difference between the tips and the inside of the belly - watch out, it matters how the thickness changes inside):
max (0.2 mm, 0.4+(0.5*ln(tie_len+1)*tie_thickness_middle))

distance from (the outer edge of) the tip of the tie to the edge of the staff-line:
- optimum 0.12 ss
- min acceptable 0.05 ss, apparently regardless of actual size

min distance from outer edge of the belly of the tie to the edge of the staff-line lying outside:
- optimum: 0.24 ss - 0.35*sqr(h/l) ss
- min: 0.15 ss - 0.27*sqr(h/l) ss
(l = tie_length [ss], h = tie_height [ss], measured w/o thickness)

distance from inner edge of the belly of the tie to the edge of the staff-line lying inside:
- optimum: 0.1 ss + 0.01*tie_length [ss]
- min: 0.07 ss + 0.006*tie_length [ss]
(remember to sanitize these)


Determining the vertical position. Relative to the center of the notehead, in ss.
1) no near heads (<= 5th) either in chord nor in other voices
- minimum 0
- optimum 0.5
- maximum 0.85 in normal circumstances, 1.25 for small staff-sizes

2) near heads (to be written)

