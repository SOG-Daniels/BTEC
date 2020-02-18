<?php  $active = (isset($active))? $active : ' '; 
?>
<ul class="navbar-nav bg-gradient-dark sidebar sidebar-dark accordion" id="accordionSidebar">

      <!-- Sidebar - Brand -->
      <a class="sidebar-brand d-flex align-items-center justify-content-center" href="<?php echo site_url('dashboard'); ?>">
        <div class="sidebar-brand-icon rotate-n-15">
          <i class="fas fa-laugh-wink"></i>
        </div>
        <div class="sidebar-brand-text mx-3">Site <sup>name</sup></div>
      </a>

      <!-- Divider -->
      <hr class="sidebar-divider my-0">

      <!-- Nav Item - Dashboard -->
      <li class="nav-item <?php echo ($active === 'dashboard')? 'active' : ' ';?>">
        <a class="nav-link" href="<?php echo site_url('dashboard') ?>">
          <i class="fas fa-fw fa-tachometer-alt"></i>
          <span>Dashboard</span></a>
      </li>

      <!-- Divider -->
      <hr class="sidebar-divider">

      <!-- Heading -->
      <div class="sidebar-heading">
        Clients
      </div>
      <li class="nav-item <?php echo ($active === 'test')? 'active' : ' ';?>">
      
        <a class="btn btn-link nav-link " href="<?php echo site_url('register-client') ?>" >
          <i class="fas fa-fw fa-user-plus "></i>
          <span>Add Client</span>
        </a>
      </li>

      <!-- Nav Item - Tables -->
      <li class="nav-item <?php echo ($active === 'clientList')? 'active' : ' ';?>">
        <a class="nav-link" href="<?php echo site_url('client-list'); ?>">
          <i class="fas fa-fw fa-table "></i>
          <span>Client List</span></a>
      </li>
      <!-- Nav Item - Pages Collapse Menu -->
      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">
          <i class="fas fa-fw fa-cog"></i>
          <span>Components</span>
        </a>
        <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <h6 class="collapse-header">Custom Components:</h6>
            <a class="collapse-item" href="buttons.html">Buttons</a>
            <a class="collapse-item" href="cards.html">Cards</a>
          </div>
        </div>
      </li>

      <!-- Divider -->
      <hr class="sidebar-divider">

      <!-- Heading -->
      <div class="sidebar-heading">
        System Users
      </div>
      <li class="nav-item">
      <!-- Nav Item - Tables -->
        <li class="nav-item">
        <button class="btn btn-link nav-link <?php echo ($active === 'addUser')? 'active' : ' ';?>" data-target="#addUserModal" data-toggle="modal" data-backdrop="static" data-keyboard="false" >
          <i class="fas fa-fw fa-user-plus "></i>
          <span>Add User</span>
        </button>
        </li>
      </li>
      <!-- Nav Item - Tables -->
      <li class="nav-item <?php echo ($active === 'userList')? 'active' : ' ';?>">
        <a class="nav-link" href="<?php echo site_url('user-list'); ?>">
          <i class="fas fa-fw fa-table "></i>
          <span>User List</span></a>
      </li>

      <!-- Divider -->
      <hr class="sidebar-divider d-none d-md-block">

      <!-- Sidebar Toggler (Sidebar) -->
      <div class="text-center d-none d-md-inline">
        <button class="rounded-circle border-0" id="sidebarToggle"></button>
      </div>

    </ul>
 <!-- End of Sidebar -->
