

# Alek Labs Keyboard Layer

**An ergonomic keyboard command layer for Windows.**

Alek Labs Keyboard Layer is an AutoHotkey script that keeps QWERTY intact while adding a compact editing layer for navigation, selection, deletion, clipboard operations, undo, redo, and Enter. It is designed to reduce hand travel to Enter, arrow keys, Home, End, Delete, Backspace, and Ctrl-based shortcuts during writing and programming.

The core idea is simple: Caps Lock becomes Enter, and Left Alt becomes a temporary command-layer modifier. While Left Alt is held, nearby keys perform cursor movement, word-level navigation, line-level navigation, selection, deletion, and editing commands. Navigation is mostly operated by the right hand near the home position, while the left thumb activates the layer with Alt. Shift modifies navigation into selection, and Caps Lock modifies the Alt layer into deletion.

Clipboard operations are also moved closer to the home position. Copy, paste, cut, undo, redo, and select-all are available through Alt-based shortcuts on the left side of the keyboard, so frequent editing commands can be executed without repeatedly stretching to Ctrl combinations or moving the hands away from the main typing area. This is especially useful during programming sessions, where small edit operations are performed continuously across code editors, terminals, search fields, commit messages, documentation, and browser input fields.

The workflow remains non-modal: there is no persistent navigation mode, only short command chords that work inside ordinary Windows applications.

Project website: [https://aleklabs.dev/keyboard-layer](https://aleklabs.dev/keyboard-layer)
