;;; mini-carbon-theme.el --- Minimal black & white theme -*- lexical-binding: t; -*-

;; Copyright (C) 2025, D4lj337
;; Author: D4lj337
;; Version: 1.0
;; Package-Requires: ((emacs "26.1"))
;; URL: https://github.com/d4lj337/mini-carbon

;;; Code:

(deftheme mini-carbon
  "Minimal black-and-white Emacs theme emphasizing contrast and structure.")

(let* ((class '((class color) (min-colors 89)))
       (bg      "#000000")
       (fg      "#FFFFFF")
       (comment "#555555")
       (keyword "#FFFFFF")
       (string  "#DDDDDD")
       (fn      "#EEEEEE")
       (var     "#CCCCCC")
       (const   "#BBBBBB")
       (type    "#DDDDDD")
       (region  "#202020")
       (hi      "#111111")
       (lnum    "#3A3A3A")
       (lnum*   "#D0D0D0")
       (border  "#0F0F0F")
       (faint   "#1A1A1A")
       (search  "#333333")
       (search2 "#222222"))

  (custom-theme-set-faces
   'mini-carbon
   ;; Base
   `(default ((,class (:background ,bg :foreground ,fg))))
   `(cursor  ((,class (:background ,fg))))
   `(fringe  ((,class (:background ,bg :foreground ,lnum))))
   `(region  ((,class (:background ,region))))
   `(highlight ((,class (:background ,hi))))
   `(hl-line ((,class (:background ,hi))))
   `(minibuffer-prompt ((,class (:foreground ,fg :weight bold))))
   `(vertical-border ((,class (:foreground ,border))))

   ;; Line numbers
   `(line-number ((,class (:foreground ,lnum :background ,bg))))
   `(line-number-current-line ((,class (:foreground ,lnum* :background ,bg :weight bold))))

   ;; Mode line
   `(mode-line ((,class (:background ,hi :foreground ,string :box (:line-width 1 :color ,border)))))
   `(mode-line-inactive ((,class (:background ,bg :foreground ,lnum :box (:line-width 1 :color ,border)))))

   ;; Links & UI states
   `(link ((,class (:underline t :foreground ,fn))))
   `(success ((,class (:foreground ,fn :weight bold))))
   `(warning ((,class (:foreground ,const :weight bold))))
   `(error ((,class (:inverse-video t :background ,fg :foreground ,bg :weight bold))))

   ;; Search / isearch
   `(isearch ((,class (:background ,search :foreground ,fg :weight bold))))
   `(lazy-highlight ((,class (:background ,search2 :foreground ,fg))))

   ;; Parentheses & matches
   `(show-paren-match ((,class (:background ,fg :foreground ,bg :weight bold))))
   `(show-paren-mismatch ((,class (:background ,const :foreground ,bg :weight bold))))

   ;; Syntax highlighting
   `(font-lock-builtin-face       ((,class (:foreground ,keyword :weight bold))))
   `(font-lock-keyword-face       ((,class (:foreground ,keyword :weight bold))))
   `(font-lock-comment-face       ((,class (:foreground ,comment :slant italic))))
   `(font-lock-comment-delimiter-face ((,class (:foreground ,comment :slant italic))))
   `(font-lock-doc-face           ((,class (:foreground ,string :slant italic))))
   `(font-lock-string-face        ((,class (:foreground ,string :slant italic))))
   `(font-lock-constant-face      ((,class (:foreground ,const :weight bold))))
   `(font-lock-type-face          ((,class (:foreground ,type :weight bold))))
   `(font-lock-function-name-face ((,class (:foreground ,fn))))
   `(font-lock-variable-name-face ((,class (:foreground ,var))))
   `(font-lock-warning-face       ((,class (:inherit warning))))

   ;; Whitespace / indent guides (if package defines faces)
   `(whitespace-space ((,class (:foreground ,faint))))
   `(whitespace-tab   ((,class (:foreground ,faint))))
   `(indent-guide-face ((,class (:foreground ,faint))))

   ;; Diff / VC (monochrome cues via brightness & weight)
   `(diff-added   ((,class (:foreground ,fn :weight bold))))
   `(diff-removed ((,class (:foreground ,const :weight bold))))
   `(diff-changed ((,class (:foreground ,type))))
   `(diff-refine-added   ((,class (:inverse-video t :background ,fn :foreground ,bg))))
   `(diff-refine-removed ((,class (:inverse-video t :background ,const :foreground ,bg))))

   ;; Org-mode basics
   `(org-level-1 ((,class (:foreground ,fg :weight bold))) )
   `(org-level-2 ((,class (:foreground ,string :weight bold))))
   `(org-level-3 ((,class (:foreground ,fn))))
   `(org-code    ((,class (:foreground ,var))))
   `(org-block   ((,class (:background ,hi))))
   `(org-quote   ((,class (:slant italic :foreground ,string))))
   `(org-block-begin-line ((,class (:foreground ,lnum :background ,bg :slant italic))))
   `(org-block-end-line ((,class (:foreground ,lnum :background ,bg :slant italic))))
   `(org-ellipsis ((,class (:foreground ,lnum))))
   `(org-link ((,class (:foreground ,fn :underline t))))
   `(org-todo ((,class (:foreground ,const :weight bold))))
   `(org-done ((,class (:foreground ,fn :weight bold))))

   ;; Completion UI (vertico, marginalia, consult)
   `(vertico-current ((,class (:background ,hi :foreground ,fg))))
   `(vertico-group-title ((,class (:foreground ,lnum))))
   `(marginalia-key ((,class (:foreground ,lnum))))
   `(marginalia-file ((,class (:foreground ,string))))
   `(consult-preview-line ((,class (:background ,hi :foreground ,lnum))))

   ;; Corfu / completion popups
   `(corfu-default ((,class (:background ,bg :foreground ,fg :box (:line-width 1 :color ,border)))))
   `(corfu-current ((,class (:background ,hi :foreground ,fg))))
   `(corfu-border ((,class (:background ,border))))
   `(corfu-tooltip ((,class (:background ,bg :foreground ,lnum))))
   `(corfu-echo ((,class (:foreground ,lnum))))
   `(corfu-popupinfo-border ((,class (:background ,border))))
   `(corfu-popupinfo ((,class (:background ,bg :foreground ,lnum))))

   ;; Company compatibility
   `(company-tooltip ((,class (:background ,bg :foreground ,fg))))
   `(company-tooltip-selection ((,class (:background ,hi :foreground ,fg))))
   `(company-tooltip-annotation ((,class (:foreground ,lnum))))

   ;; Minibuffer/icomplete/ivy/embark style
   `(icompletep-determined ((,class (:foreground ,fn))))
   `(icompletep-vertical ((,class (:background ,bg))))

   ;; Flycheck / Flymake diagnostics
   `(flycheck-error ((,class (:underline (:style wave :color "#FF5555")))) )
   `(flycheck-warning ((,class (:underline (:style wave :color "#FFA500")))))
   `(flycheck-info ((,class (:underline (:style wave :color "#3399FF")))))
   `(flycheck-fringe-error ((,class (:foreground "#FF5555"))))
   `(flycheck-fringe-warning ((,class (:foreground "#FFA500"))))
   `(flycheck-fringe-info ((,class (:foreground "#3399FF"))))

   `(flymake-error ((,class (:underline (:style wave :color "#FF5555")))))
   `(flymake-warning ((,class (:underline (:style wave :color "#FFA500")))))
   `(flymake-note ((,class (:underline (:style wave :color "#3399FF")))))

   ;; Doom-modeline
   `(doom-modeline-bar ((,class (:background ,fn))))
   `(doom-modeline-buffer-path ((,class (:foreground ,string))))
   `(doom-modeline-buffer-file ((,class (:foreground ,fg))))
   `(doom-modeline-info ((,class (:foreground ,fn))))

   ;; Magit
   `(magit-section-heading ((,class (:foreground ,fg :weight bold))))
   `(magit-diff-added ((,class (:foreground ,fn))))
   `(magit-diff-removed ((,class (:foreground ,const))))
   `(magit-hunk-heading ((,class (:background ,hi))))

   ;; Vundo
   `(vundo-default ((,class (:inherit shadow))))
   `(vundo-highlight ((,class (:inherit bold :foreground ,const))))
   `(vundo-last-saved ((,class (:foreground ,fn :weight bold))))
   `(vundo-saved ((,class (:foreground ,string))))

   ;; Yasnippet highlight
   `(yas-field-highlight-face ((,class (:background ,hi))))

   ;; Rainbow delimiters (fallbacks)
   `(rainbow-delimiters-depth-1-face ((,class (:foreground ,fg))))
   `(rainbow-delimiters-depth-2-face ((,class (:foreground ,fn))))
   `(rainbow-delimiters-depth-3-face ((,class (:foreground ,string))))
   `(rainbow-delimiters-depth-4-face ((,class (:foreground ,var))))
   `(rainbow-delimiters-depth-5-face ((,class (:foreground ,const))))
   `(rainbow-delimiters-depth-6-face ((,class (:foreground ,type))))
   `(rainbow-delimiters-unmatched-face ((,class (:foreground ,fg :weight bold))))
   )

  (custom-theme-set-variables
   'mini-carbon
   '(show-paren-style 'expression))
  )

;;;###autoload
(when load-file-name
  ;; Allow placing file anywhere; add its dir to custom-theme-load-path
  (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'mini-carbon)

;;; mini-carbon-theme.el ends here
