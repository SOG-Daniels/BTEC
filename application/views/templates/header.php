<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"> -->
    <!-- Custom fonts for this template-->
    <link href="<?php echo base_url()?>assets/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <!-- <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet"> -->

    <!-- Custom styles for this template-->
    <link href="<?php echo base_url()?>assets/css/sb-admin-2.min.css" rel="stylesheet">

    <!-- Custom css for the system-->
    <link href="<?php echo base_url()?>assets/css/styles.css" rel="stylesheet">
 
    <!-- Custom styles for data tables -->
    <link href="<?php echo base_url()?>assets/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">

    <!-- JQuery plugins CSS file for autocomplete feature -->
    <link href="<?php echo base_url()?>assets/css/jquery-ui.css" rel="stylesheet">
  
    <!-- <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"> -->
    
    <!-- include summernote css -->
    <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.16/dist/summernote-bs4.min.css" rel="stylesheet">

    <!-- Styles for fullcalendar -->
    <link href='<?php echo base_url()?>assets/vendor/fullcalendar/core/main.css' rel='stylesheet' />
    <link href='<?php echo base_url()?>assets/vendor/fullcalendar/list/main.css' rel='stylesheet' />
    <link href='<?php echo base_url()?>assets/vendor/fullcalendar/daygrid/main.css' rel='stylesheet' />
    <link href='<?php echo base_url()?>assets/vendor/fullcalendar/timegrid/main.css' rel='stylesheet' />
    <link href='<?php echo base_url()?>assets/vendor/fullcalendar/bootstrap/main.css' rel='stylesheet' />



    <!-- scripts are loaded below because some jquery are used within some of the pageContents triggers error if not declared here -->
    <script src="<?php echo base_url()?>assets/vendor/jquery/jquery.min.js"></script>
    <script src="<?php echo base_url()?>assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    
    <!-- Data Tables custom scripts -->
    <script src="<?php echo base_url()?>assets/js/demo/datatables-demo.js"></script>
    
    <!-- my custom jquery is loaded here because some php files require this custom script to run its
         javascript especially function definitions-->
    <script src="<?php echo base_url()?>assets/js/demo/customJS.js"></script>
    
  
    
    <!-- Boostrap Datepicker plugin -->
    <!-- <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.47/css/bootstrap-datetimepicker.min.css" rel="stylesheet"> -->



  <title><?php echo $title; ?></title>
</head>
<body id="page-top">
  <!-- Page Wrapper -->
  <div id="wrapper">