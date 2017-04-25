#!/bin/bash

gdbus call -e -d org.gnome.Shell -o /org/gnome/Shell -m org.gnome.Shell.Eval 'const lt = imports.ui.main.legacyTray; if (lt._concealHandle.visible) lt._revealHandle.show(); else lt._concealHandle.show();'
