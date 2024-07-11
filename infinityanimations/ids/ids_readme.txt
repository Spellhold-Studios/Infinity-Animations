You can obtain a complete set of IDS files/references by running the provided Reference Picker tool (see supplied readme). Feel free to use the .ids files as a base to see what you're doing in NI or DLTCEP.

These are filled animate/anisnd files (referencing all vanilla slots) with the LOW animations removed (since they're reassigned), previously unused IWD references, restored BGI characters, as well as the various animations ported at the time of the mod's current version.

The .tpa files are WeiDU action patches that will modify the existing IDS files in your override folder as described above. Adding entries to these patches is quite easy. Open them with a text editor and scroll down to where the APPENDs begin. You'll see something like:
APPEND ~animate.ids~ ~0x500E BUGBEAR~ UNLESS ~^0x500[Ee]~

So adding a new entry is just a matter of entering:
APPEND ~animate.ids~ ~0x#### YOUR_ANIM~ UNLESS ~^0x####~

Where #### is the number assigned to your animation and YOUR_ANIM is what it's called. The UNLESS means it doesn't add the entry if one already exists. If your ID contains a letter (as the example above) you probably want to put both the upper- and lowercase forms of that letter in brackets after the UNLESS so that regexp will pick either up. You can copy and paste the text output from Reference Picker in between the second pair of tildes ~~ if you wish.

The anisnd.ids just takes a slightly different format for the entry, though the syntax is otherwise the same:
APPEND ~anisnd.ids~ ~0x500E µAO      CGAMEANIMATIONTYPE_BUGBEAR~ UNLESS ~^0x500[Ee]~
