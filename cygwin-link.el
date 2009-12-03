;;; cygwin-link.el --- Cygwin symlink handling for Emacs

;; Copyright (C) 2003  Edward O'Connor <ted@oconnor.cx>

;; Author: Edward O'Connor <ted@oconnor.cx>
;; Keywords: convenience, files

;; This file is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 2, or (at your option)
;; any later version.

;; This file is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs; see the file COPYING.  If not, write to
;; the Free Software Foundation, Inc., 59 Temple Place - Suite 330,
;; Boston, MA 02111-1307, USA.

;;; Commentary:

;; This is a quick hack to make Emacs understand Cygwin symlinks.

;; You should always be able to find the latest version here:

;;         <URL:http://oconnor.cx/elisp/cygwin-link.el>

;;; Code:

(defun cygwin-link-mode ()
  (goto-char (point-max))
  (search-backward (string 0))
  (forward-char 1)
  (find-alternate-file (buffer-substring (point) (point-max))))

(add-to-list 'auto-mode-alist '("\\.lnk\\'" . cygwin-link-mode))

(provide 'cygwin-link)
;;; cygwin-link.el ends here
