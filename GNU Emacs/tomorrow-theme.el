;;; tomorrow-theme.el --- custom theme for faces

;;; Commentary:
;;
;;; Tomorrow Theme
;;
;; Originally by Chris Kempson https://github.com/ChrisKempson/Tomorrow-Theme
;; Ported to GNU Emacs by Chris Charles
;; Ported to GNU Emacs 24's built-in theme system by Jim Myhrberg (@jimeh)

;;; Code:

(deftheme tomorrow
  "A Pastel Coloured Theme")

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

  (custom-theme-set-faces
   'tomorrow

   ;; Built-in stuff (Emacs 23)
   `(default ((t (:background ,background :foreground ,foreground))))
   `(error ((t (:foreground ,red))))
   `(escape-glyph ((t (:foreground ,aqua))))
   `(fringe ((t (:background ,current-line))))
   `(highlight ((t (:background ,green :foreground ,current-line))))
   `(link ((t (:foreground ,blue))))
   `(link-visited ((t (:foreground ,purple))))
   `(minibuffer-prompt ((t (:foreground ,blue))))
   `(mode-line ((t (:background ,selection :foreground ,foreground))))
   `(mode-line-inactive ((t (:background ,current-line :foreground ,foreground))))
   `(region ((t (:background ,selection))))
   `(secondary-selection ((t (:background ,blue))))
   `(shadow ((t (:foreground ,comment))))
   `(success ((t (:foreground ,green))))
   `(trailing-whitespace ((t (:background ,red))))
   `(warning ((t (:foreground ,orange))))

   ;; Font-lock stuff
   `(font-lock-builtin-face ((t (:foreground ,aqua))))
   `(font-lock-comment-face ((t (:foreground ,comment))))
   `(font-lock-constant-face ((t (:foreground ,aqua))))
   `(font-lock-doc-string-face ((t (:foreground ,comment))))
   `(font-lock-function-name-face ((t (:foreground ,blue))))
   `(font-lock-keyword-face ((t (:foreground ,purple))))
   `(font-lock-string-face ((t (:foreground ,green))))
   `(font-lock-type-face ((t (:foreground ,yellow))))
   `(font-lock-variable-name-face ((t (:foreground ,orange))))
   `(font-lock-warning-face ((t (:foreground ,red))))

   ;; hl-line-mode
   `(hl-line ((t (:background ,current-line))))

   ;; linum-mode
   `(linum ((t (:background ,current-line :foreground ,foreground))))

   ;; org-mode
   `(org-date ((t (:foreground ,purple))))
   `(org-done ((t (:foreground ,green))))
   `(org-hide ((t (:foreground ,current-line))))
   `(org-link ((t (:foreground ,blue))))
   `(org-todo ((t (:foreground ,red))))

   ;; show-paren-mode
   `(show-paren-match ((t (:background ,blue :foreground ,current-line))))
   `(show-paren-mismatch ((t (:background ,orange :foreground ,current-line))))

   ;; whitespace-mode
   `(whitespace-empty ((t (:background ,yellow :foreground ,red))))
   `(whitespace-hspace ((t (:background ,selection :foreground ,comment))))
   `(whitespace-indentation ((t (:background ,yellow :foreground ,red))))
   `(whitespace-line ((t (:background ,current-line :foreground ,purple))))
   `(whitespace-newline ((t (:foreground ,comment))))
   `(whitespace-space ((t (:background ,current-line :foreground ,comment))))
   `(whitespace-space-after-tab ((t (:background ,yellow :foreground ,red))))
   `(whitespace-space-before-tab ((t (:background ,orange :foreground ,red))))
   `(whitespace-tab ((t (:background ,selection :foreground ,comment))))
   `(whitespace-trailing ((t (:background ,red :foreground ,yellow))))

   ;; rainbow-delimiters
   `(rainbow-delimiters-depth-1-face ((t (:foreground ,purple))))
   `(rainbow-delimiters-depth-2-face ((t (:foreground ,blue))))
   `(rainbow-delimiters-depth-3-face ((t (:foreground ,aqua))))
   `(rainbow-delimiters-depth-4-face ((t (:foreground ,green))))
   `(rainbow-delimiters-depth-5-face ((t (:foreground ,yellow))))
   `(rainbow-delimiters-depth-6-face ((t (:foreground ,orange))))
   `(rainbow-delimiters-depth-7-face ((t (:foreground ,red))))
   `(rainbow-delimiters-depth-8-face ((t (:foreground ,comment))))
   `(rainbow-delimiters-depth-9-face ((t (:foreground ,foreground)))))

  (custom-theme-set-variables
   'tomorrow

   `(ansi-color-names-vector
     ;; black, red, green, yellow, blue, magenta, cyan, white
     [,background ,red ,green ,yellow ,blue ,purple ,blue ,foreground])
   `(ansi-term-color-vector
     ;; black, red, green, yellow, blue, magenta, cyan, white
     [unspecified ,background ,red ,green ,yellow ,blue ,purple ,blue ,foreground])))

(provide-theme 'tomorrow)

;;; tomorrow-theme.el ends here
