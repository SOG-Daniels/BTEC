<?php 
    // flashdata('message') will only be available once, i.e. its a temporary variable that will be deleted if 
    // the page is reloaded again
    // echo "<pre>";
    // print_r($this->session->userdata());
    // echo "</pre>";
    echo (!empty($this->session->flashdata('message')))? $this->session->flashdata('message') : ' '; 
?>
<!-- Page Heading -->
<div class="d-sm-flex align-items-center justify-content-between mb-4">
<h1 class="h3 mb-0 text-gray-800">Dashboard</h1>
</div>

<!-- Content Row -->
<div class="row">

<!-- Earnings (Monthly) Card Example -->
<div class="col-xl-3 col-md-6 mb-4">
    <div class="card border-left-primary shadow-lg h-100 py-2">
    <div class="card-body">
        <div class="row no-gutters align-items-center">
        <div class="col mr-2">
            <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">Earnings (Monthly)</div>
            <div class="h5 mb-0 font-weight-bold text-gray-800">$40,000</div>
        </div>
        <div class="col-auto">
            <i class="fas fa-calendar fa-2x text-gray-300"></i>
        </div>
        </div>
    </div>
    </div>
</div>

<!-- Earnings (Monthly) Card Example -->
<div class="col-xl-3 col-md-6 mb-4">
    <div class="card border-left-success shadow h-100 py-2">
    <div class="card-body">
        <div class="row no-gutters align-items-center">
        <div class="col mr-2">
            <div class="text-xs font-weight-bold text-success text-uppercase mb-1">Earnings (Annual)</div>
            <div class="h5 mb-0 font-weight-bold text-gray-800">$215,000</div>
        </div>
        <div class="col-auto">
            <i class="fas fa-dollar-sign fa-2x text-gray-300"></i>
        </div>
        </div>
    </div>
    </div>
</div>

<!-- Earnings (Monthly) Card Example -->
<div class="col-xl-3 col-md-6 mb-4">
    <div class="card border-left-info shadow h-100 py-2">
    <div class="card-body">
        <div class="row no-gutters align-items-center">
        <div class="col mr-2">
            <div class="text-xs font-weight-bold text-info text-uppercase mb-1">Tasks</div>
            <div class="row no-gutters align-items-center">
            <div class="col-auto">
                <div class="h5 mb-0 mr-3 font-weight-bold text-gray-800">50%</div>
            </div>
            <div class="col">
                <div class="progress progress-sm mr-2">
                <div class="progress-bar bg-info" role="progressbar" style="width: 50%" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
                </div>
            </div>
            </div>
        </div>
        <div class="col-auto">
            <i class="fas fa-clipboard-list fa-2x text-gray-300"></i>
        </div>
        </div>
    </div>
    </div>
</div>

<!-- Pending Requests Card Example -->
<div class="col-xl-3 col-md-6 mb-4">
    <div class="card border-left-warning shadow h-100 py-2">
    <div class="card-body">
        <div class="row no-gutters align-items-center">
        <div class="col mr-2">
            <div class="text-xs font-weight-bold text-warning text-uppercase mb-1">Pending Requests</div>
            <div class="h5 mb-0 font-weight-bold text-gray-800">18</div>
        </div>
        <div class="col-auto">
            <i class="fas fa-comments fa-2x text-gray-300"></i>
        </div>
        </div>
    </div>
    </div>
</div>
</div>
<div class="row">
    <div class="col-12" style="position: relative; padding-bottom: 75%; height: 0; overflow: hidden;">
    <iframe style="position: absolute; top:0; left: 0; width: 100%; height: 100%;" class="p-md-5 " src="https://calendar.google.com/calendar/embed?height=550&amp;wkst=1&amp;bgcolor=%23039BE5&amp;ctz=America%2FBelize&amp;src=ZGFuaWVsc29uY29ycmVhQGdtYWlsLmNvbQ&amp;src=YWRkcmVzc2Jvb2sjY29udGFjdHNAZ3JvdXAudi5jYWxlbmRhci5nb29nbGUuY29t&amp;src=ZW4uYnojaG9saWRheUBncm91cC52LmNhbGVuZGFyLmdvb2dsZS5jb20&amp;color=%237986CB&amp;color=%2333B679&amp;color=%230B8043&amp;showPrint=0&amp;showTz=0&amp;showCalendars=1&amp;showTitle=1&amp;title=BTEC" style="border:solid 1px #777" width="600" height="550" frameborder="0" scrolling="no"></iframe>
    </div>
</div>

<!-- End of Content Row -->