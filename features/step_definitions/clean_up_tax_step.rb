Then(/^I can delete tax$/) do
  find("tr.ng-scope:nth-child(1)").click
  find(".btn.btn-delete.btn-danger.btn-sm").click
  find(".bootstrap-dialog-footer-buttons>.btn.btn-danger").click
end
