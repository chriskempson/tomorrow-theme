;;; color-theme-tomorrow.el --- GNU Emacs port of the Tomorrow Theme.

;;; Commentary:
;;
;;; Tomorrow Theme
;;
;; Originally by Chris Kempson https://github.com/ChrisKempson/Tomorrow-Theme
;; Ported to GNU Emacs by Chris Charles

(require 'color-theme)

;;; Code:

(defun color-theme-tomorrow-real (&optional variant)
  "Enable the appropriate Tomorrow theme based on VARIANT.

VARIANT can be 'night, 'night-eighties, 'night-blue or
'night-bright.  If VARIANT is not present, the light Tomorrow
theme will be used."

  (let ((background "#ffffff")
        (current-line "#e9efff")
        (selection "#d6d6d6")
        (foreground "#4d4d4c")
        (comment "#8e908c")
        (cursor "#aeafad")
        (red "#c82829")
        (orange "#f5871f")
        (yellow "#eab700")
        (green "#718c00")
        (aqua "#3e999f")
        (blue "#4271ae")
        (purple "#8959a8"))

    (cond ((eq variant 'night)
           (setq background "#1d1f21"
                 current-line "#282a2e"
                 selection "#373b41"
                 foreground "#c5c8c6"
                 comment "#969896"
                 cursor "#aeafad"
                 red "#cc6666"
                 orange "#de935f"
                 yellow "#f0c674"
                 green "#b5bd68"
                 aqua "#8abeb7"
                 blue "#81a2be"
                 purple "#b294bb"))

          ((eq variant 'night-eighties)
           (setq background "#2d2d2d"
                 current-line "#393939"
                 selection "#515151"
                 foreground "#cccccc"
                 comment "#999999"
                 cursor "#cccccc"
                 red "#f2777a"
                 orange "#f99157"
                 yellow "#ffcc66"
                 green "#99cc99"
                 aqua "#66cccc"
                 blue "#6699cc"
                 purple "#cc99cc"))

          ((eq variant 'night-blue)
           (setq background "#002451"
                 current-line "#00346e"
                 selection "#003f8e"
                 foreground "#ffffff"
                 comment "#7285b7"
                 cursor "#ffffff"
                 red "#ff9da4"
                 orange "#ffc58f"
                 yellow "#ffeead"
                 green "#d1f1a9"
                 aqua "#99ffff"
                 blue "#bbdaff"
                 purple "#ebbbff"))

          ((eq variant 'night-bright)
           (setq background "#000000"
                 current-line "#2a2a2a"
                 selection "#424242"
                 foreground "#eaeaea"
                 comment "#969896"
                 cursor "#9f9f9f"
                 red "#d54e53"
                 orange "#e78c45"
                 yellow "#e7c547"
                 green "#b9ca4a"
                 aqua "#70c0b1"
                 blue "#7aa6da"
                 purple "#c397d8")))

    (color-theme-install
     `(color-theme-tomorrow-real
       ((background . ,background)
        (background-mode . dark)
        (border-color . ,cursor)
        (cursor-color . ,cursor)
        (foreground-color . ,foreground))

       ;; Built-in stuff (Emacs 23)
       (default ((t (:background ,background :foreground ,foreground))))
       (fringe ((t (:background ,current-line))))
       (minibuffer-prompt ((t (:foreground ,blue))))
       (mode-line ((t (:background ,current-line :foreground ,foreground))))
       (region ((t (:background ,selection))))

       ;; Font-lock stuff
       (font-lock-comment-face ((t (:foreground ,comment))))
       (font-lock-constant-face ((t (:foreground ,green))))
       (font-lock-doc-string-face ((t (:foreground ,comment))))
       (font-lock-function-name-face ((t (:foreground ,blue))))
       (font-lock-keyword-face ((t (:foreground ,purple))))
       (font-lock-string-face ((t (:foreground ,green))))
       (font-lock-type-face ((t (:foreground ,yellow))))
       (font-lock-variable-name-face ((t (:foreground ,red))))
       (font-lock-warning-face ((t (:foreground ,red))))

       ;; hl-line-mode
       (hl-line ((t (:background ,current-line))))

       ;; linum-mode
       (linum ((t (:background ,current-line :foreground ,foreground))))

       ;; org-mode
       (org-date ((t (:foreground ,purple))))
       (org-done ((t (:foreground ,green))))
       (org-hide ((t (:foreground ,current-line))))
       (org-link ((t (:foreground ,blue))))
       (org-todo ((t (:foreground ,red))))

       ;; show-paren-mode
       (show-paren-match-face ((t (:background ,blue :foreground ,current-line))))
       (show-paren-mismatch-face ((t (:background ,orange :foreground ,current-line))))

       ;; rainbow-delimiters
       (rainbow-delimiters-depth-1-face ((t (:foreground ,purple))))
       (rainbow-delimiters-depth-2-face ((t (:foreground ,blue))))
       (rainbow-delimiters-depth-3-face ((t (:foreground ,aqua))))
       (rainbow-delimiters-depth-4-face ((t (:foreground ,green))))
       (rainbow-delimiters-depth-5-face ((t (:foreground ,yellow))))
       (rainbow-delimiters-depth-6-face ((t (:foreground ,orange))))
       (rainbow-delimiters-depth-7-face ((t (:foreground ,red))))
       (rainbow-delimiters-depth-8-face ((t (:foreground ,comment))))
       (rainbow-delimiters-depth-9-face ((t (:foreground ,foreground))))))))

(defun color-theme-tomorrow ()
  "Base light Tomorrow theme."
  (interactive)
  (color-theme-tomorrow-real))
(provide 'color-theme-tomorrow)

(defun color-theme-tomorrow-night ()
  "Dark Tomorrow theme."
  (interactive)
  (color-theme-tomorrow-real 'night))
(provide 'color-theme-tomorrow-night)

(defun color-theme-tomorrow-night-eighties ()
  "Somewhat lighter dark Tomorrow theme."
  (interactive)
  (color-theme-tomorrow-real 'night-eighties))
(provide 'color-theme-tomorrow-night-eighties)

(defun color-theme-tomorrow-night-blue ()
  "Dark Tomorrow theme with a blue background."
  (interactive)
  (color-theme-tomorrow-real 'night-blue))
(provide 'color-theme-tomorrow-night-blue)

(defun color-theme-tomorrow-night-bright ()
  "Dark Tomorrow theme with a brighter, higher-contrast look."
  (interactive)
  (color-theme-tomorrow-real 'night-bright))
(provide 'color-theme-tomorrow-night-bright)


(add-to-list 'color-themes
             '(color-theme-tomorrow
               "Tomorrow" "Chris Kempson (ported by Chris Charles)"))
(add-to-list 'color-themes
             '(color-theme-tomorrow-night
               "Tomorrow Night" "Chris Kempson (ported by Chris Charles)"))
(add-to-list 'color-themes
             '(color-theme-tomorrow-night-eighties
               "Tomorrow Night Eighties" "Chris Kempson (ported by Chris Charles)"))
(add-to-list 'color-themes
             '(color-theme-tomorrow-night-blue
               "Tomorrow Night Blue" "Chris Kempson (ported by Chris Charles)"))
(add-to-list 'color-themes
             '(color-theme-tomorrow-night-bright
               "Tomorrow Night Bright" "Chris Kempson (ported by Chris Charles)"))

;;; color-theme-tomorrow.el ends here
