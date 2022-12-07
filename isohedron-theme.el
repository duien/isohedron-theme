;;; isohedron-theme.el --- Highlighters

;; Copyright (c) 2022 E Hyland (GNU/GPL Licence)

;; Authors: E Hyland <hello@duien.com>
;; URL: http://github.com/duien/isohedron-theme
;; Version: 1.0
;; ;; Package-Requires: ((autothemer "0.2") (emacs "24"))

;;; License
;;
;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 3, or (at your option)
;; any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program; see the file COPYING.  If not, write to
;; the Free Software Foundation, Inc., 51 Franklin Street, Fifth
;; Floor, Boston, MA 02110-1301, USA.

;;; Commentary:
;;  Highlighters

;;; GUI Support only.

;;; Code:
(require 'autothemer)

(defvar isohedron-default-weight 'normal)

(autothemer-deftheme
 isohedron "Highlighters"

 ;; Specify color classes
 ((((class color) (min-colors #xFFFFFF)))

  ;; theme color palette
  (iso-base-1 "#5E5A55")
  (iso-base-2 "#93836C")
  (iso-base-3 "#B9A992")
  (iso-base-4 "#DCD3C6")
  (iso-base-5 "#E4DDD2")
  (iso-base-6 "#F1ECE4")
  (iso-base-7 "#F7F3EE")

  (iso-yellow-text "#706648")
  (iso-yellow-text-sec "#AD9B67")
  (iso-yellow-strong "#F0B400")
  (iso-yellow-bg "#F6E8CC")

  (iso-orange-text "#5B5143")
  (iso-orange-text-sec "#957F5F")
  (iso-orange-strong "#F08C00")
  (iso-orange-bg "#F6E1CA")

  (iso-green-text "#525643")
  (iso-green-text-sec "#81895D")
  (iso-green-strong "#84BD00")
  (iso-green-bg "#E2E9CA")

  (iso-teal-text "#465953")
  (iso-teal-text-sec "#5D897B")
  (iso-teal-strong "#00BDA4")
  (iso-teal-bg "#DBECE4")

  (iso-blue-text "#4C5361")
  (iso-blue-text-sec "#5F6E8C")
  (iso-blue-strong "#75A3FF")
  (iso-blue-bg "#DDE3F2")

  (iso-violet-text "#554e6a")
  (iso-violet-text-sec "#726697")
  (iso-violet-strong "#714eda")
  (iso-violet-bg "#e6e0f5")

  (iso-purple-text "#614C61")
  (iso-purple-text-sec "#9C739C")
  (iso-purple-strong "#CE5CFF")
  (iso-purple-bg "#F1DDF1")

  ;; link colors
  (iso-blue-vivid "#0f6cb8")
  (iso-purple-vivid "#af2ca9")

  (iso-ui-orange "#DF870C")
  (iso-ui-green "#8AA60B")
  (iso-ui-blue "#47A1EB")
  (iso-ui-violet "#714EDA")
  (iso-ui-red "#FB6C6A"))

 ((default (:foreground iso-base-1 :background iso-base-7 ))

  (mode-line (:foreground iso-base-7 :background iso-violet-text-sec))
  (mode-line-inactive (:foreground iso-base-3 :background iso-base-5))
  (mode-line-highlight (:background iso-ui-blue :foreground iso-base-7))

  ;; font-lock faces that many things derive from by default
  (font-lock-comment-face (:foreground iso-yellow-text :background iso-yellow-bg :slant 'italic))
  (font-lock-comment-delimiter-face (:foreground iso-yellow-text-sec :inherit 'font-lock-comment-face))
  ;; (font-lock-type-face (:foreground iso-purple-text :background iso-purple-bg))
  ;; (font-lock-type-face (:foreground iso-violet-text :background iso-violet-bg))
  (font-lock-type-face ())
  (font-lock-keyword-face (:weight 'bold))
  (font-lock-string-face (:foreground iso-green-text :background iso-green-bg))
  (font-lock-builtin-face (:slant 'italic))
  (font-lock-constant-face (:foreground iso-blue-text :background iso-blue-bg))
  (font-lock-function-name-face (:foreground iso-purple-text :background iso-purple-bg))
  (font-lock-variable-name-face (:foreground iso-teal-text :background iso-teal-bg))

  ;; other basic faces
  (link (:foreground iso-blue-vivid :underline t))
  (link-visited (:foreground iso-purple-vivid :underline t))
  (highlight (:foreground iso-orange-text :background iso-orange-bg))
  (line-number (:foreground iso-base-4))
  (line-number-current-line (:foreground iso-base-3))

  ;; syntax-specific overrides
  (css-selector (:foreground iso-base-1 :background iso-base-7))
  (mmm-default-submode-face (:background 'unspecified))

  ;; ui elements
  (window-divider (:foreground iso-base-5))
  (window-divider-last-pixel (:foreground iso-base-5))
  (window-divider-first-pixel (:foreground iso-base-5))
  (vertical-border (:foreground iso-base-5))
  (fringe (:foreground iso-base-2 :background iso-base-7))
  (diff-hl-change (:foreground iso-base-7 :background iso-ui-blue))
  (diff-hl-insert (:foreground iso-base-7 :background iso-ui-green))
  (diff-hl-delete (:foreground iso-base-7 :background iso-ui-red))
  (cursor (:background iso-ui-violet))
  (shadow (:foreground iso-base-3))
  (fill-column-indicator (:foreground iso-base-6))

  (dired-header (:inherit 'bold))

  ;; tab-bar mode
  (tab-bar (:foreground iso-ui-red :background iso-base-6 :height 1.0))
  (tab-bar-tab (:foreground iso-base-2 :background iso-base-7 :weight 'bold))
  (tab-bar-tab-inactive (:foreground iso-base-3 :background iso-base-6))

  ;; completion (corfu, vertico, orderless, etc)
  (corfu-default (:background iso-base-6 :foreground iso-base-2))
  (corfu-border (:background iso-base-6))
  (corfu-bar (:background iso-base-4))
  ;; (corfu-current (:inverse-video t))
  (corfu-current (:inherit 'vertico-current))
  (completions-common-part (:foreground iso-ui-violet))

  (orderless-match-face-0 (:foreground iso-violet-text-sec :background iso-violet-bg :inherit 'bold))
  (orderless-match-face-1 (:foreground iso-teal-text-sec :background iso-teal-bg :inherit 'bold))
  (orderless-match-face-2 (:foreground iso-purple-text-sec :background iso-purple-bg :inherit 'bold))
  (orderless-match-face-3 (:foreground iso-blue-text-sec :background iso-blue-bg :inherit 'bold))
  (vertico-current (:background iso-base-4 :foreground iso-base-1))

  ;; org-mode
  (org-block (:inherit 'default :background iso-base-6 :extend t))
  (org-block-end-line (:inherit 'shadow))
  (org-block-begin-line (:inherit 'shadow))
  (org-ellipsis (:inherit 'shadow :background iso-base-7 :weight isohedron-default-weight))
  (org-headline-todo (:weight isohedron-default-weight :slant 'normal)) ;; TODO deal with weight
  (org-headline-done (:weight isohedron-default-weight :inherit '(shadow italic default)))
  (org-todo (:foreground iso-green-text-sec :background iso-green-bg :inherit 'bold))
  (org-done (:weight isohedron-default-weight :inherit '(shadow italic) :background iso-base-6)) ;; TODO deal with weight
  (org-table (:foreground iso-base-2))
  ;; (org-formula (:background 'unspecified)) ;; TODO table background doesn't show through
  (org-drawer (:inherit 'shadow))
  (org-meta-line (:inherit 'shadow))
  (org-date (:foreground iso-violet-text :background iso-violet-bg))
  (org-document-title (:height 1.5 :foreground iso-ui-violet :inherit 'bold))
  (org-special-keyword (:inherit 'shadow)) ;; The special `comment' todo keyword
  ;; TODO differentiate verbatim and code
  (org-verbatim (:inherit 'font-lock-constant-face))
  ;; (org-code (:foreground iso-orange-text :background iso-orange-bg))
  (org-code (:inherit 'font-lock-variable-name-face))
  (org-tag (:weight isohedron-default-weight :inherit 'shadow))
  (org-archived (:inherit '(shadow italic)))
  (org-superstar-leading (:foreground iso-base-5))

  ;; agenda views
  (org-agenda-structure (:inherit 'default :height 1.5 :inherit 'bold))
  (org-agenda-structure-secondary (:inherit '(shadow default)))
  (org-agenda-structure-filter (:inherit 'org-agenda-structure :foreground iso-yellow-text :background iso-yellow-bg))
  (org-time-grid (:foreground iso-base-5))
  (org-agenda-current-time (:foreground iso-ui-violet))
  (org-agenda-done (:inherit '(shadow italic)))
  (org-agenda-date (:foreground iso-yellow-text :background iso-yellow-bg))
  (org-agenda-date-weekend (:inherit '(org-agenda-date italic)))
  ;; (org-agenda-date-today (:foreground iso-teal-text :background iso-teal-bg :inherit '(org-agenda-date bold)))
  ;; (org-agenda-date-today (:inherit '(org-document-title org-agenda-date)))
  (org-agenda-date-today (:foreground iso-violet-text :background iso-violet-bg :inherit 'bold))

  (outline-1 (:height 1.125 :foreground iso-purple-text :background iso-purple-bg :inherit 'bold))
  (outline-2 (:inherit '(bold default)))
  (outline-3 (:inherit '(bold default)))
  (outline-4 (:inherit '(bold default)))
  (outline-5 (:inherit '(bold default)))
  (outline-6 (:inherit '(bold default)))
  (outline-7 (:inherit '(bold)))
  (outline-8 (:inherit 'italic))
  ))

;;;###autoload
(and load-file-name
     (boundp 'custom-theme-load-path)
     (add-to-list 'custom-theme-load-path
                  (file-name-as-directory
                   (file-name-directory load-file-name))))

(provide-theme 'isohedron)

;;; Shortcuts and Conveniences for Testing
;; (load-theme 'isohedron)
;; (setq rainbow-ansi-colors nil rainbow-x-colors nil)
;; (autothemer-colorize)
;; (rainbow-mode)
