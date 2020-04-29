// Call the dataTables jQuery plugin

$(document).ready(function(){
  console.log(clist.data);

  // data table for the user list 
  $('#userDataTable').DataTable({
    
    columnDefs: [ 
      { "orderable" : false, targets: [3,4,5,6,7,8] } 
    ]
  });

  //defining the column definition for datatable for client list
  let columns =[
    // setting the more button on the client list table
          {
              "className": 'details-control',
              "orderable": false,
              "data": null,
              "defaultContent": '',
              "render": function () {
                  return '<i class="fa fa-plus-square" aria-hidden="true"></i>';
              },
              width:"15px"
          },
          //the columns that will be on the table
          { "data": "id"},
          { "data": "first_name" },
          { "data": "last_name" },
          { "data": "dob"},
          { "data": "email", "sortable" : false},
          { "data": "mobile_phone", "sortable" : false},
          
      ];
      // setting view and edit if user has the privilege
      if ((hasView == 1 || hasEdit == 1)){
        columns.push(
          { "data": "profile" , "sortable" : false},
        );
      }
  
      // defining the display proporties for the datatable for client list
    var table = $('#dataTable').DataTable({
      // dom: 'lBfrtip',
      // buttons: [
      //   'excel', 'pdf'
      // ],
      "lengthMenu": [[10, 25, 50, -1], [10, 25, 50, "All"]],
      "data": clist.data,
      select:"single",
      "columns": columns,
      "order": [[1, 'asc']]
  });
 
 // Call the dataTables jQuery plugin
  // $('#dataTableUsers').DataTable();
  
  //initializing report table with the datatable plugin
  $('#reportDataTable').DataTable();

  // Add event listener for opening and closing details
  $('#dataTable tbody').on('click', 'td.details-control', function () {
      var tr = $(this).closest('tr');
      var tdi = tr.find("i.fa");
      var row = table.row(tr);

      if (row.child.isShown()) {
          // This row is already open - close it
          row.child.hide();
          tr.removeClass('shown');
          tdi.first().removeClass('fa-minus-square');
          tdi.first().addClass('fa-plus-square');
      }
      else {
          // Open this row
          row.child(format(row.data())).show();
          tr.addClass('shown');
          tdi.first().removeClass('fa-plus-square');
          tdi.first().addClass('fa-minus-square');
      }
  });

  table.on("user-select", function (e, dt, type, cell, originalEvent) {
      if ($(cell.node()).hasClass("details-control")) {
          e.preventDefault();
      }
  });
});
// formats the UI for the client list table that displays additional information
function format(d){
 
  console.log (d);
  // `d` is the original data object for the row
  return '<table class="table table-responsive" cellpadding="5" cellspacing="0" border="0" style="padding-left:50px;">' +
           ' <thead class="thead-dark"> '+
            '<tr>'+
                '<th scope="col">Program</th>'+
                '<th scope="col">Status</th>'+
                '<th scope="col">Comments</th>'+
                '<th scope="col">Enrolled In</th>'+
            '</tr>'+
            '</thead>'+
            '<tbody>'+ 
        '<tr>' +
        ((d.bpo === null)? '':
          
          '<td>'+ d.bpo+'</td>' +
          '<td>' + ((d.bpo_status === null)? 'none' : d.bpo_status) + '</td>'+
          '<td>' + ((d.bpo_comment === null)? 'none' : d.bpo_comment) + '</td>'+
          '<td>' + ((d.bpo_enrolled === null)? 'none' : d.bpo_enrolled) + '</td>'

        
        )+
      '</tr>' +
      '<tr>' +
        ((d.bartending === null)? '' 
            :  
            '<td>'+ d.bartending +'</td>' +
            '<td>' + ((d.bar_status === null)? 'none' : d.bar_status) + '</td>'+
            '<td>' + ((d.bar_comment === null)? 'none' : d.bar_comment) + '</td>'+
            '<td>' + ((d.bar_enrolled === null)? 'none' : d.bar_enrolled) + '</td>'
            ) +        
      '</tr>' +
      '<tr>' +
        ((d.barbering === null)? '' 
            :  
            '<td>'+ d.barbering +'</td>' +
            '<td>' + ((d.ba_status === null)? 'none' : d.ba_status) + '</td>'+
          '<td>' + ((d.ba_comment === null)? 'none' : d.ba_comment) + '</td>'+
            '<td>' + ((d.ba_enrolled === null)? 'none' : d.ba_enrolled) + '</td>'
            ) +        
      '</tr>' +
      '<tr>' +
        ((d.child_care === null)? '' 
            :  
            '<td>'+ d.child_care+'</td>' +
            '<td>' + ((d.cc_status === null)? 'none' : d.cc_status) + '</td>'+
            '<td>' + ((d.cc_comment === null)? 'none' : d.cc_comment) + '</td>'+
            '<td>' + ((d.cc_enrolled === null)? 'none' : d.cc_enrolled) + '</td>'
            ) +        
      '</tr>' +
      '<tr>' +
        ((d.computer_basics === null)? '' 
            :  
            '<td>'+ d.computer_basics+'</td>' +
            '<td>' + ((d.cb_status === null)? 'none' : d.cb_status) + '</td>'+
            '<td>' + ((d.cb_comment === null)? 'none' : d.cb_comment) + '</td>'+
            '<td>' + ((d.cb_enrolled === null)? 'none' : d.cb_enrolled) + '</td>'

            ) +        
      '</tr>' +
      '<tr>' +
        ((d.event_planning === null)? '' 
            :  
            '<td>'+ d.event_planning+'</td>' +
            '<td>' + ((d.ep_status === null)? 'none' : d.ep_status) + '</td>'+
            '<td>' + ((d.ep_comment === null)? 'none' : d.ep_comment) + '</td>'+
            '<td>' + ((d.ep_enrolled === null)? 'none' : d.ep_enrolled) + '</td>'

            ) +        
      '</tr>' +
      '<tr>' +
        ((d.front_desk === null)? '' 
            :  
            '<td>'+ d.front_desk+'</td>' +
            '<td>' + ((d.fd_status === null)? 'none' : d.fd_status) + '</td>'+
            '<td>' + ((d.fd_comment === null)? 'none' : d.fd_comment) + '</td>'+
            '<td>' + ((d.fd_enrolled === null)? 'none' : d.fd_enrolled) + '</td>'
            ) +        
      '</tr>' +
      '<tr>' +
        ((d.home_health === null)? '' 
            :  
            '<td">'+ d.home_health+'</td>' +
            '<td>' + ((d.hh_status === null)? 'none' : d.hh_status) + '</td>'+
            '<td>' + ((d.hh_comment === null)? 'none' : d.hh_comment) + '</td>'+
            '<td>' + ((d.hh_enrolled === null)? 'none' : d.hh_enrolled) + '</td>'

            ) +        
      '</tr>' +
      '<tr>' +
        ((d.house_keeping === null)? '' 
            :  
            '<td">'+ d.house_keeping+'</td>' +
            '<td>' + ((d.hk_status === null)? 'none' : d.hk_status) + '</td>'+
            '<td>' + ((d.hk_comment === null)? 'none' : d.hk_comment) + '</td>'+
            '<td>' + ((d.hk_enrolled === null)? 'none' : d.hk_enrolled) + '</td>'

            ) +        
      '</tr>' +
      '<tr>' +
        ((d.landscaping === null)? '' 
            :  
            '<td>'+ d.landscaping+'</td>' +
            '<td>' + ((d.l_status === null)? 'none' : d.l_status) + '</td>'+
            '<td>' + ((d.l_comment === null)? 'none' : d.l_comment) + '</td>'+
            '<td>' + ((d.l_enrolled === null)? 'none' : d.l_enrolled) + '</td>'

            ) +        
      '</tr>' +
      '<tr>' +
        ((d.life_guard === null)? '' 
            :  
            '<td>'+ d.life_guard+'</td>' +
            '<td>' + ((d.lg_status === null)? 'none' : d.lg_status) + '</td>'+
            '<td>' + ((d.lg_comment === null)? 'none' : d.lg_comment) + '</td>'+
            '<td>' + ((d.lg_enrolled === null)? 'none' : d.lg_enrolled) + '</td>'

            ) +        
      '</tr>' +
      '<tr>' +
        ((d.nail_tech === null)? '' 
            :  
            '<td>'+ d.nail_tech+'</td>' +
            '<td>' + ((d.nt_status === null)? 'none' : d.nt_status) + '</td>'+
            '<td>' + ((d.nt_comment === null)? 'none' : d.nt_comment) + '</td>'+
            '<td>' + ((d.nt_enrolled === null)? 'none' : d.nt_enrolled) + '</td>'

            ) +        
      '</tr>' +
      '<tr>' +
        ((d.wait_staff === null)? '' 
            :  
            '<td>'+ d.wait_staff+'</td>' +
            '<td>' + ((d.ws_status === null)? 'none' : d.ws_status) + '</td>'+
            '<td>' + ((d.ws_comment === null)? 'none' : d.ws_comment) + '</td>'+
            '<td>' + ((d.ws_enrolled === null)? 'none' : d.ws_enrolled) + '</td>'

            ) +        
      '</tr>' +
  '</table>'+
  '<table class="table table-responsive table-hover" cellpadding="5" cellspacing="0" border="0" style="padding-left:50px;">'+
      '<tr>' +
          '<td class="font-weight-bold">Emergency contact name:</td>' +
          '<td>' + ((d.ec_name === null)? 'NONE' : d.ec_name) + '</td>' +
      '</tr>' +
      '<tr>' +
          '<td class="font-weight-bold">Emergency Contact #:</td>' +
          '<td>'+  ((d.ec_number === null)?  'NONE' : d.ec_number) +'</td>' +
      '</tr>' +
      '<tr>' +
          '<td class="font-weight-bold">Emergency Contact Relation:</td>' +
          '<td>' +  ((d.ec_relation === null)? 'NONE' : d.ec_relation) + '</td>' +
      '</tr>' +
      // '<tr>' +
      //     '<td class="font-weight-bold">Specialized Training:</td>' +
      //     '<td>' + ((d.specialized_trainings === null )? 'NONE': d.specialized_trainings )+ '</td>' +
      // '</tr>' +
      '<tr>' +
      '</tr>' +
      

  '</table>';
  
}









































