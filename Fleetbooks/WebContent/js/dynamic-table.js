var Script = function () {

$('#views').dataTable({
  "sDom": "<'row-fluid'<'span6'l><'span6'f>r>t<'row-fluid'<'span6'i><'span6'p>>",
  "sPaginationType": "bootstrap",
  "oLanguage": {
      "sLengthMenu": "_MENU_ records per page",
      "oPaginate": {
          "sPrevious": "Prev",
          "sNext": "Next"
      }
  },
  "aoColumnDefs": [{
      'bSortable': false,
      'aTargets': [0]
  }]
});

jQuery('#views_wrapper .dataTables_filter input')
.addClass("input-medium"); // modify table search input
jQuery('#views_wrapper .dataTables_length select')
.addClass("input-mini"); // modify table per page dropdown

}();