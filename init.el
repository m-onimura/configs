; set backspace to C-h
(global-set-key "\C-h" `delete-backward-char)
; not create backup(foo.txt~)
(setq make-backup-files nil)
; not create backup("#foo.txt#")
(setq auto-save-default nil)
; set wsl-copy to C-c
(defun wsl-copy (start end)
  (interactive "r")
  (shell-command-on-region start end "clip.exe")
  (deactivate-mark))
(global-set-key "\C-c" `wsl-copy)
; set wsl-cut to C-x C-x
(defun wsl-cut (start end)
  (interactive "r")
  (shell-command-on-region start end "clip.exe")
  (kill-region start end))
(global-set-key "\C-x\C-x" `wsl-cut)
; set isearch-forward to C-f C-f
(global-set-key "\C-x\C-f" `isearch-forward)
; set save-buffer to C-s
(global-set-key "\C-s" `save-buffer)
; set window move
(global-set-key (kbd "C-<left>")  'windmove-left)
(global-set-key (kbd "C-<down>")  'windmove-down)
(global-set-key (kbd "C-<up>")    'windmove-up)
(global-set-key (kbd "C-<right>") 'windmove-right)
; set kill windows to C-w
(global-set-key (kbd "C-w") 'delete-window)
