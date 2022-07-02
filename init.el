; replace C-h with backspace
(global-set-key "\C-h" `delete-backward-char)
; not create backup(foo.txt~)
(setq make-backup-files t)
; replace C-c with kill-ring-save(copy)
(global-set-key "\C-c" `kill-ring-save)
; replace C-x x with kill-region(cut)
(global-set-key "\C-x\C-x" `kill-region)
; replace C-f C-f with isearch-forward(search)
(global-set-key "\C-x\C-f" `isearch-forward)
; replace C-s with save-buffer
(global-set-key "\C-s" `save-buffer)
; set window move
(global-set-key (kbd "C-<left>")  'windmove-left)
(global-set-key (kbd "C-<down>")  'windmove-down)
(global-set-key (kbd "C-<up>")    'windmove-up)
(global-set-key (kbd "C-<right>") 'windmove-right)
; kill windows
(global-set-key (kbd "C-w") 'delete-window)
