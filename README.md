# Description

All instances except for `vocabs` share the configuration in the `common` directory. Vocabs uses some but not all of the common files, see the README.md in the `vocabs` folder.

# Update procedure
## Changes to existing graphs  

1. Update the relevant trig file in this repo.
2. Note the graph name
3. In the GraphDB UI delete the relevant graph. _The files in this repo are intended to be 1 file = 1 graph such that the files can be updated and entire graphs dropped and replaced_
4. In the GraphDB import pane remove the old file (for clarity. It _should_ be overwritten on upload anyway)
5. Import the updated trig file.
6. Restart the relevant Prez instance (for changes to profiles, endpoints etc. as Prez caches these on startup and stores them in a system graph which is not updated at runtime.)

## Changes that introduce new graphs
If the update involves the inclusion of new graphs:
1. Consider which Olis virtual graphs they need to be included in, and update either the `common_prez_olis.trig` file, or create an instance specific folder and include the relevant Olis triples there.
2. Follow steps 3, 4 (if applicable), and 5 in the "Changes to existing graphs" procedure above. 
2. Restart Olis.
3. Restart Prez.