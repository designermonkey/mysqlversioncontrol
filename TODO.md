# MySQL Version Control

When a need arises to version control the structure and contents of a database, then there are some paid solutions available, which are large and clunky to use.

Simplifying this down to a small script to allow developers to dump databases out to a git repository, allowing diffs to be run between commits. This will allow content that was accidentally deleted or changed to be identified and restored.

## Things To Do

1. Run this in a live environment to see how useful the output is.
2. Check whether this can be made part of a larger app to allow automatically restoring certain content.
3. See how this runs in a Symphony setup, to see what each entry chenge looks like.