#!/usr/bin/env bash

[[ -z "$PROFILE_NAME" ]] && PROFILE_NAME=Tomorrow
[[ -z "$PROFILE_SLUG" ]] && PROFILE_SLUG=Tomorrow
[[ -z "$GCONFTOOL" ]] && GCONFTOOL=mateconftool-2
[[ -z "$BASE_KEY" ]] && BASE_KEY=/apps/mate-terminal/profiles

PROFILE_KEY="$BASE_KEY/$PROFILE_SLUG"

gset() {
  local type="$1"; shift
  local key="$1"; shift
  local val="$1"; shift

  "$GCONFTOOL" --set --type "$type" "$PROFILE_KEY/$key" -- "$val"
}

# because gconftool doesn't have "append"
glist_append() {
  local type="$1"; shift
  local key="$1"; shift
  local val="$1"; shift

  local entries="$(
    {
      "$GCONFTOOL" --get "$key" | tr -d '[]' | tr , "\n" | fgrep -v "$val"
      echo "$val"
    } | head -c-1 | tr "\n" ,
  )"

  "$GCONFTOOL" --set --type list --list-type $type "$key" "[$entries]"
}

# append the Tomorrow profile to the profile list
glist_append string /apps/mate-terminal/global/profile_list "$PROFILE_SLUG"

gset string visible_name "$PROFILE_NAME"
gset string palette "#000000000000:#919122222626:#777789890000:#AEAE7B7B0000:#1D1D25259494:#68682a2a9b9b:#2B2B66665151:#929295959393:#666666666666:#CCCC66666666:#B5B5BDBD6868:#F0F0C6C67474:#8181A2A2BEBE:#B2B29494BBBB:#8A8ABEBEB7B7:#ECECEBEBECEC"
gset string background_color "#1d1d1f1f2121"
gset string foreground_color "#c5c5c8c8c6c6"
gset string bold_color "#8A8ABEBEB7B7"
gset bool   bold_color_same_as_fg "false"
gset bool   use_theme_colors "false"
gset bool   use_theme_background "false"
