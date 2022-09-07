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

  (iso-purple-text "#614C61")
  (iso-purple-text-sec "#9C739C")
  (iso-purple-strong "#CE5CFF")
  (iso-purple-bg "#F1DDF1")

  (iso-ui-orange "#DF870C")
  (iso-ui-green "#8AA60B")
  (iso-ui-blue "#47A1EB")
  (iso-ui-violet "#714EDA")
  (iso-ui-red "#FB6C6A"))

 ((default (:foreground iso-base-1 :background iso-base-7 ))
  (mode-line (:foreground iso-base-1 :background iso-base-4))
  (mode-line-inactive (:foreground iso-base-2 :background iso-base-5))
  (font-lock-comment-face (:foreground iso-yellow-text :background iso-yellow-bg))
  (font-lock-comment-delimiter-face (:foreground iso-yellow-text-sec :inherit 'font-lock-comment-face))
  ;; (font-lock-comment-face (:foreground iso-base-3 :slant 'italic))
  (font-lock-type-face (:foreground iso-purple-text :background iso-purple-bg))
  (font-lock-keyword-face (:weight 'bold))
  (font-lock-string-face (:foreground iso-green-text :background iso-green-bg))
  (font-lock-builtin-face (:foreground iso-blue-text :background iso-blue-bg))
  (font-lock-constant-face (:foreground iso-teal-text :background iso-teal-bg))
  (font-lock-function-name-face (:foreground iso-purple-text :background iso-purple-bg))

  (css-selector (:foreground iso-base-1 :background iso-base-7))
  (link (:foreground iso-ui-blue :underline t))
  (link-visited (:foreground iso-purple-strong :underline t))
  (highlight (:background iso-base-6))

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

  (tab-bar (:foreground iso-ui-red :background iso-base-5 :height 1.0))
  (tab-bar-tab (:foreground iso-base-2 :background iso-base-6))
  (tab-bar-tab-inactive (:foreground iso-base-3 :background iso-base-5))
  )

;; (custom-theme-set-variables 'isohedron
;;                              `(pos-tip-foreground-color ,iso-base-1)
;;                              `(pos-tip-background-color ,iso-base-7)
;;                              `(ansi-color-names-vector [,iso-base-7
;;                                                         ,iso-ui-red
;;                                                         ,iso-green-strong
;;                                                         ,iso-yellow-strong
;;                                                         ,iso-blue-strong
;;                                                         ,iso-purple-strong
;;                                                         ,iso-teal-strong
;;                                                         ,iso-base-1]))
)

;;;###autoload
(and load-file-name
     (boundp 'custom-theme-load-path)
     (add-to-list 'custom-theme-load-path
                  (file-name-as-directory
                   (file-name-directory load-file-name))))

(provide-theme 'isohedron)
