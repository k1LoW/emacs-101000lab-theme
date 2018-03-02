;;; 101000lab-theme.el --- 101000LAB theme

;; Copyright (C) 2017 by 101000code/101000LAB

;; Author: Kenichiro OYAMA <k1lowxb@gmail.com>
;; URL: https://github.com/k1LoW/emacs-101000lab-theme
;; Version: 0.01

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:
;;

;;; Code:

(deftheme 101000lab
  "101000LAB theme")

(let* (
       (base03    "#002b36")
       (base02    "#073642")
       (base01    "#586e75")
       (base00    "#657b83")
       (base0     "#839496")
       (base1     "#93a1a1")
       (base2     "#eee8d5")
       (base3     "#fdf6e3")
       (yellow    "#b58900")
       (orange    "#cb4b16")
       (red       "#dc322f")
       (magenta   "#d33682")
       (violet    "#6c71c4")
       (blue      "#268bd2")
       (cyan      "#2aa198")
       (green     "#859900")

       (lab-base-bg3 base3)
       (lab-base-bg2 base2)
       (lab-base-bg1 base1)
       (lab-base-bg0 base0)
       (lab-base-fg0 base00)
       (lab-base-fg1 base01)
       (lab-base-fg2 "#F8F8F0")
       (lab-base-fg3 "#F8F8F2")

       (lab-red  "#ff0000")
       (lab-blue  "SteelBlue")
       (lab-darkblue  "#145082")
       (lab-light-blue "#5c5cff")
       (lab-cyan  cyan)
       (lab-green  "#00CD00")
       (lab-yellow "#FFD700")
       (lab-orange orange)
       (lab-gray   "#93A1A1")
       (lab-darkgray   base1)
       (lab-violet  violet)
       (lab-magenta magenta)
       (lab-light-violet "#875FD7")
       (lab-darkyellow "#B58A00"))

  (custom-theme-set-faces
   '101000lab

   `(default ((t (:foreground ,lab-base-fg3))))
   `(cursor ((t (:background ,lab-base-fg3))))
   `(border ((t (:foreground "white"))))

   `(region ((t (:background ,lab-light-blue))))
   `(mode-line ((t (:foreground ,lab-base-fg3 :background ,lab-darkblue
                                :box (:line-width 1 :color nil :style released-button)))))
   `(mode-line-buffer-id ((t (:foreground nil :background ,lab-base-bg0))))
   `(mode-line-inactive ((t (:foreground "#BCBCBC" :background "#333333"
                                         :box (:line-width 1 :color "#333333")))))

   `(minibuffer-prompt ((t (:foreground ,lab-base-fg3))))

   ;; highlight
   `(highlight ((t (:foreground "#000000" :background "#C4BE89"))))
   `(hl-line ((t (:background ,lab-light-blue))))

   `(font-lock-function-name-face ((t (:foreground ,lab-blue))))
   `(font-lock-variable-name-face ((t (:foreground ,lab-yellow))))
   `(font-lock-string-face ((t (:foreground ,lab-green))))

   ;; PHP class name
   `(font-lock-type-face ((t (:foreground ,lab-darkyellow))))
   ;; PHP constant
   `(font-lock-warning-face ((t (:foreground ,lab-blue))))
   ;; PHP keyword
   `(font-lock-keyword-face ((t (:foreground ,lab-gray))))
   ;; PHP boolean
   `(font-lock-constant-face((t (:foreground ,lab-violet))))
   ;; PHP paren
   `(show-paren-match-face ((t (:foreground ,lab-base-fg3 :background ,lab-darkyellow))))
   `(paren-face ((t (:foreground ,lab-base-fg3 :background ,lab-darkyellow))))

   ;; comment
   `(font-lock-comment-face ((t (:foreground "#74715D"))))

   ;; bm
   `(bm-face ((t (:foreground ,lab-base-fg3 :background ,lab-darkblue))))

   ;; css
   `(css-selector ((t (:foreground "#66D9EF"))))
   `(css-property ((t (:foreground "#FD971F"))))

   ;; dired
   `(dired-directory ((t (:foreground "#A6E22A"))))
   `(dired-symlink ((t (:foreground "#66D9EF"))))

   ;; helm (these probably needs tweaking)
   `(helm-apt-deinstalled ((t (:foreground ,lab-base-fg1))))
   `(helm-apt-installed ((t (:foreground ,lab-green))))
   `(helm-bookmark-directory ((t (:inherit helm-ff-directory))))
   `(helm-bookmark-file ((t (:foreground ,lab-base-bg0))))
   `(helm-bookmark-gnus ((t (:foreground ,lab-cyan))))
   `(helm-bookmark-info ((t (:foreground ,lab-green))))
   `(helm-bookmark-man ((t (:foreground ,lab-violet))))
   `(helm-bookmark-w3m ((t (:foreground ,lab-yellow))))
   `(helm-bookmark-su ((t (:foreground ,lab-orange))))
   `(helm-buffer-not-saved ((t (:foreground ,lab-orange))))
   `(helm-buffer-saved-out ((t (:foreground ,lab-red :background ,lab-base-fg3
                                            :inverse-video t))))
   `(helm-buffer-size ((t (:foreground ,lab-base-fg1))))
   `(helm-candidate-number ((t (:background ,lab-base-fg2 :foreground ,lab-base-bg1
                                            :bold t))))
   `(helm-ff-directory ((t (:background ,lab-base-fg3  :foreground ,lab-blue))))
   `(helm-ff-executable ((t (:foreground ,lab-green))))
   `(helm-ff-file ((t (:background ,lab-base-fg3 :foreground ,lab-base-bg0))))
   `(helm-ff-invalid-symlink ((t (:background ,lab-base-fg3 :foreground ,lab-orange
                                              :slant italic))))
   `(helm-ff-prefix ((t (:background ,lab-yellow :foreground ,lab-base-fg3))))
   `(helm-ff-symlink ((t (:foreground ,lab-cyan))))
   `(helm-grep-file ((t (:foreground ,lab-cyan :underline t))))
   `(helm-grep-finish ((t (:foreground ,lab-green))))
   `(helm-grep-lineno ((t (:foreground ,lab-orange))))
   `(helm-grep-match ((t (:inherit match))))
   `(helm-grep-running ((t (:foreground ,lab-red))))
   `(helm-header ((t (:inherit header-line))))
   `(helm-lisp-completion-info ((t (:foreground ,lab-base-bg0))))
   `(helm-lisp-show-completion ((t (:foreground ,lab-yellow  :background ,lab-base-fg2
                                                :bold t))))
   `(helm-M-x-key ((t (:foreground ,lab-orange :underline t))))
   `(helm-moccur-buffer ((t (:foreground ,lab-cyan :underline t))))
   `(helm-match ((t (:inherit match))))
   `(helm-selection ((t (:background ,lab-blue :foreground ,lab-base-fg3 :underline t))))
   `(helm-selection-line ((t (:background ,lab-blue :foreground ,lab-base-bg1
                                          :underline nil))))
   `(helm-separator ((t (:foreground ,lab-red))))
   `(helm-source-header ((t (:background ,"#333333" :foreground ,lab-base-fg3
                                         :underline nil))))

   `(helm-time-zone-current ((t (:foreground ,lab-green))))
   `(helm-time-zone-home ((t (:foreground ,lab-red))))
   `(helm-visible-mark ((t (:background ,lab-base-fg3 :foreground ,lab-magenta :bold t))))

   ;; helm-css-scss
   `(helm-css-scss-selector-depth-1 ((t (:foreground ,lab-base-bg0))))
   `(helm-css-scss-selector-depth-2 ((t (:foreground ,lab-blue))))
   `(helm-css-scss-selector-depth-3 ((t (:foreground ,lab-cyan))))
   `(helm-css-scss-selector-depth-4 ((t (:foreground ,lab-green))))
   `(helm-css-scss-selector-depth-5 ((t (:foreground ,lab-yellow))))
   `(helm-css-scss-selector-depth-6 ((t (:foreground ,lab-violet))))
   `(helm-css-scss-target-line ((t (:background unspecified :foreground ,lab-magenta))))

   ;; helm-swoop
   `(helm-swoop-target-line ((t (:foreground unspecified :background ,lab-base-fg2))))
   `(helm-swoop-target-line-block ((t (:foreground unspecified :background ,lab-base-fg2))))
   `(helm-swoop-target-word ((t (:foreground ,lab-magenta :background unspecified))))

   ;; magit
   `(magit-section-title ((t (:foreground ,lab-yellow :weight bold))))
   `(magit-branch ((t (:foreground ,lab-orange :weight bold))))
   `(magit-item-highlight ((t (:background ,base02 :weight unspecified))))
   `(magit-log-author ((t (:foreground ,lab-cyan))))
   `(magit-log-graph ((t (:foreground ,base01))))
   `(magit-log-head-label-bisect-bad ((t (:background ,lab-red :foreground ,lab-base-fg3
                                                      :box 1))))
   `(magit-log-head-label-bisect-good ((t (:background ,lab-green :foreground ,lab-base-fg3
                                                       :box 1))))
   `(magit-log-head-label-default ((t (:background ,base02 :box 1))))
   `(magit-log-head-label-local ((t (:background ,lab-blue :foreground ,lab-base-fg3
                                                 :box 1))))
   `(magit-log-head-label-patches ((t (:background ,lab-red :foreground ,lab-base-fg3
                                                   :box 1))))
   `(magit-log-head-label-remote ((t (:background ,lab-green :foreground ,lab-base-fg3
                                                  :box 1))))
   `(magit-log-head-label-tags ((t (:background ,lab-yellow :foreground ,lab-base-fg3
                                                :box 1))))
   `(magit-header ((t (:inherit default))))
   `(magit-log-sha1 ((t (:foreground ,lab-yellow))))
   `(magit-cherry-equivalent ((t (:foreground ,lab-magenta))))
   `(magit-cherry-unmatched ((t (:foreground ,lab-cyan))))
   `(magit-process-ng ((t (:inherit magit-header :foreground ,lab-red))))
   `(magit-process-ok ((t (:inherit magit-header :foreground ,lab-green))))
   `(magit-signature-bad ((t (:foreground ,lab-red))))
   `(magit-signature-good ((t (:foreground ,lab-green))))
   `(magit-signature-none ((t (:inherit magit-log-message))))
   `(magit-signature-untrusted ((t (:foreground ,lab-cyan))))
   `(magit-whitespace-warning-face ((t (:inherit trailing-whitespace))))

   `(magit-diff-hunk-header ((t (:foreground ,lab-blue))))
   `(magit-diff-none ((t (:inherit default))))
   `(magit-diff-add ((t (:foreground ,lab-green :background nil))))
   `(magit-diff-del ((t (:foreground ,lab-red :background nil))))

   ;; company
   `(company-tooltip ((t (:foreground ,"black" :background "white"))))
   `(company-preview-common ((t  (:foreground ,lab-darkblue :underline t))))
   `(company-tooltip-selection ((t (:foreground "white" :background ,lab-blue))))
   `(company-tooltip-common ((t (:foreground ,"black" :background "white", :weight bold :underline t))))
   `(company-tooltip-common-selection ((t (:foreground "white" :background ,lab-blue :underline t))))
   `(company-tooltip-annotation ((t (:foreground ,lab-red))))

   ;; web-mode
   `(web-mode-builtin-face ((t (:foreground ,lab-red))))
   `(web-mode-comment-face ((t (:foreground ,lab-darkgray))))
   `(web-mode-constant-face ((t (:foreground ,lab-blue :weight bold))))
   `(web-mode-current-element-highlight-face ((t
                                               (:underline unspecified :weight unspecified
                                                           :background ,base02))))
   `(web-mode-css-at-rule-face ((t (:foreground ,lab-violet :slant italic))))
   `(web-mode-css-pseudo-class-face ((t (:foreground ,lab-green :slant italic))))
   `(web-mode-doctype-face ((t (:foreground ,base01
                                            :slant italic :weight bold))))
   `(web-mode-folded-face ((t (:underline t))))
   `(web-mode-function-name-face ((t (:foreground ,lab-blue))))
   `(web-mode-html-attr-name-face ((t (:foreground ,lab-blue :slant normal))))
   `(web-mode-html-attr-value-face ((t (:foreground ,lab-cyan :slant italic))))
   `(web-mode-html-tag-face ((t (:foreground ,lab-darkblue))))
   `(web-mode-keyword-face ((t (:foreground ,lab-darkgray :weight normal))))
   `(web-mode-preprocessor-face ((t (:foreground ,lab-yellow :slant normal :weight unspecified))))
   `(web-mode-string-face ((t (:foreground ,lab-green))))
   `(web-mode-type-face ((t (:foreground ,lab-yellow))))
   `(web-mode-variable-name-face ((t (:foreground ,lab-darkyellow))))
   `(web-mode-warning-face ((t (:inherit font-lock-warning-face))))
   `(web-mode-block-delimiter-face ((t (:foreground ,lab-light-violet))))
   `(web-mode-block-attr-name-face ((t (:inherit web-mode-html-attr-name-face))))
   `(web-mode-block-attr-value-face ((t (:inherit web-mode-html-attr-value-face))))
   `(web-mode-block-comment-face ((t (:inherit web-mode-comment-face))))
   `(web-mode-block-control-face ((t (:inherit font-lock-preprocessor-face))))
   `(web-mode-block-face ((t (:background unspecified))))
   `(web-mode-block-string-face ((t (:inherit web-mode-string-face))))
   `(web-mode-comment-keyword-face ((t (:box 1 :weight bold))))
   `(web-mode-css-color-face ((t (:inherit font-lock-builtin-face))))
   `(web-mode-css-function-face ((t (:inherit font-lock-builtin-face))))
   `(web-mode-css-priority-face ((t (:inherit font-lock-builtin-face))))
   `(web-mode-css-property-name-face ((t (:inherit font-lock-variable-name-face))))
   `(web-mode-css-selector-face ((t (:inherit font-lock-keyword-face))))
   `(web-mode-css-string-face ((t (:inherit web-mode-string-face))))
   `(web-mode-javascript-string-face ((t (:inherit web-mode-string-face))))
   `(web-mode-json-context-face ((t (:foreground ,lab-violet))))
   `(web-mode-json-key-face ((t (:foreground ,lab-violet))))
   `(web-mode-json-string-face ((t (:inherit web-mode-string-face))))
   `(web-mode-param-name-face ((t (:foreground ,base0))))
   `(web-mode-part-comment-face ((t (:inherit web-mode-comment-face))))
   `(web-mode-part-face ((t (:inherit web-mode-block-face))))
   `(web-mode-part-string-face ((t (:inherit web-mode-string-face))))
   `(web-mode-symbol-face ((t (:foreground ,lab-yellow))))
   `(web-mode-whitespace-face ((t (:background ,lab-red))))
   `(web-mode-html-tag-bracket-face ((t (:foreground ,base01))))

   `(underline ((t (:underline t))))))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme '101000lab)

;;; 101000lab-theme.el ends here
