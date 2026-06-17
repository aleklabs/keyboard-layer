; Alek Labs Keyboard Layer
; An ergonomic keyboard command layer for Windows.
;
; Copyright (c) 2026 Alexander Nenashev
;
; Licensed under the MIT License.
; See LICENSE file in the project root for full license text.
;
; Project: Alek Labs Keyboard Layer
; Author: Alexander Nenashev
; Email: aleklabs.dev@gmail.com
; Website: https://aleklabs.dev/keyboard-layer

; display icon (if exists) and name in the system tray
Menu, Tray, UseErrorLevel
iconPath := A_ScriptDir . "\aleklabs-keyboard-layer.ico"
if FileExist(iconPath)
    Menu, Tray, Icon, %iconPath%,, 1
Menu, Tray, Tip, Alek Labs Keyboard Layer

CapsLock::Enter                 ; remaps CapsLock to Enter

; NAVIGATION

!i::Send,  {Up}                 ; cursor up
!k::Send,  {Down}               ; cursor down
!h::Send,  {Left}               ; cursor left
!;::Send,  {Right}              ; cursor right
!j::Send, ^{Left}               ; word left
!l::Send, ^{Right}              ; word right
!o::Send,  {End}                ; line end
!u::Send,  {Home}               ; line beginning

; SELECTION

!+i::Send,  +{Up}               ; selects text upward
!+k::Send,  +{Down}             ; selects text downward
!+h::Send,  +{Left}             ; selects character left
!+;::Send,  +{Right}            ; selects character right
!+j::Send, ^+{Left}             ; selects word left
!+l::Send, ^+{Right}            ; selects word right
!+o::Send,  +{End}              ; selects to end of line
!+u::Send,  +{Home}             ; selects to beginning of line

; DELETION

#If GetKeyState("CapsLock", "P")

!h::Send,  {Backspace}          ; deletes character left
!;::Send,  {Delete}             ; deletes character right
!j::Send, ^{Backspace}          ; deletes word left
!Backspace::Send, ^{Backspace}  ; deletes word left
!l::Send, ^{Delete}             ; deletes word right
!o::Send,  +{End}{Delete}       ; deletes to end of line
!u::Send,  +{Home}{Delete}      ; deletes to beginning of line

#If

; COPY-PASTE

!a::Send, ^a                    ; Selects all text or items.
!q::Send, ^c                    ; copies current selection
!w::Send, ^v                    ; pastes from clipboard
!s::Send, ^x                    ; cuts current selection
!d::Send, ^z                    ; undoes last action
!e::Send, ^y                    ; redoes last undone action