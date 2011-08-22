;; Tomorrow Theme
;;
;; Originally by Chris Kempson https://github.com/ChrisKempson/Tomorrow-Theme
;; Ported to GNU Emacs by Chris Charles

(require 'color-theme)

(defun color-theme-tomorrow-real (background current-line
selection foreground comment red orange yellow green aqua blue
purple)
  "GNU Emacs port of Chris Kempson's Tomorrow theme. Port by Chris Charles."

    (color-theme-install
     `(color-theme-tomorrow-real
       ((background . ,background)
        (background-mode . dark)
        (border-color . "black")
        (cursor-color . "black")
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
       (show-paren-mismatch-face ((t (:background ,orange :foreground ,current-line)))))))

(defun color-theme-tomorrow ()
  "Base light Tomorrow theme."
  (interactive)
  (color-theme-tomorrow-real "#ffffff" "#e9efff" "#c5cce9" "#4d4d4c" "#8e908c"
                             "#c82829" "#f5871f" "#eab700" "#718c00" "#3e999f"
                             "#4271ae" "#8959a8"))
(provide 'color-theme-tomorrow)

(defun color-theme-tomorrow-night ()
  "Dark Tomorrow theme."
  (interactive)
  (color-theme-tomorrow-real "#1d1f21" "#282a2e" "#373b41" "#c5c8c6" "#969896"
                             "#cc6666" "#de935f" "#f0c674" "#b5bd68" "#8abeb7"
                             "#81a2be" "#b294bb"))
(provide 'color-theme-tomorrow-night)

(defun color-theme-tomorrow-night-eighties ()
  "Somewhat lighter dark Tomorrow theme."
  (interactive)
  (color-theme-tomorrow-real "#2d2d2d" "#393939" "#515151" "#cccccc" "#999999"
                             "#f2777a" "#f99157" "#ffcc66" "#99cc99" "#009999"
                             "#99cccc" "#cc99cc"))
(provide 'color-theme-tomorrow-night-eighties)

(defun color-theme-tomorrow-night-blue ()
  "Dark Tomorrow theme with a blue background."
  (interactive)
  (color-theme-tomorrow-real "#002451" "#00346e" "#003f8e" "#ffffff" "#7285b7"
                             "#ff9da4" "#ffc58f" "#ffeead" "#d1f1a9" "#99ffff"
                             "#bbdaff" "#ebbbff"))
(provide 'color-theme-tomorrow-night-blue)


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
