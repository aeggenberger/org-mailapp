;;; org-mailapp.el --- Support for links to mail.app messages in Org

;;; Commentary:

;;; Code:
(require 'org)

(org-add-link-type "message" 'org-mailapp-open)
(add-hook 'org-store-link-functions 'org-mailapp-store-link)

(defun org-mailapp-open (path)
  "Visit the mail.app message described in PATH."
  (shell-command (concat "open message:" path)))

(provide 'org-mailapp)

;;; org-mailapp.el ends here
