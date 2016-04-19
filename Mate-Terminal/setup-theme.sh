#!/usr/bin/env bash

[[ -z "$PROFILE_NAME" ]] && PROFILE_NAME=Tomorrow
[[ -z "$PROFILE_SLUG" ]] && PROFILE_SLUG=tomorrow
[[ -z "$GCONFTOOL" ]] && GCONFTOOL=gsettings
[[ -z "$BASE_SCHEMA" ]] && BASE_SCHEMA=org.mate.terminal.profile:/org/mate/terminal/profiles

PROFILE_SCHEMA="$BASE_SCHEMA/$PROFILE_SLUG/"

gset() {
  local key="$1"; shift
  local val="$1"; shift

  "$GCONFTOOL" set "$PROFILE_SCHEMA" "$key" "$val"
}

# because gconftool doesn't have "append"
glist_append() {
  local schema="$1"; shift
  local key="$1"; shift
  local val="$1"; shift

  local entries="$(
    {
      "$GCONFTOOL" get "$schema" "$key" | tr -d '[]' | tr , "\n" | fgrep -v "$val"
      echo " '$val'"
    } | head -c-1 | tr "\n" ,
  )"

  "$GCONFTOOL" set "$schema" "$key" "[$entries]"
}

# append the Tomorrow profile to the profile list
glist_append org.mate.terminal.global profile-list "$PROFILE_SLUG"

gset visible-name "$PROFILE_NAME"
gset palette "#000000000000:#919122222626:#777789890000:#AEAE7B7B0000:#1D1D25259494:#68682a2a9b9b:#2B2B66665151:#929295959393:#666666666666:#CCCC66666666:#B5B5BDBD6868:#F0F0C6C67474:#8181A2A2BEBE:#B2B29494BBBB:#8A8ABEBEB7B7:#ECECEBEBECEC"
gset background-color "#1d1d1f1f2121"
gset foreground-color "#c5c5c8c8c6c6"
gset bold-color "#8A8ABEBEB7B7"
gset bold-color-same-as-fg "false"
gset use-theme-colors "false"
