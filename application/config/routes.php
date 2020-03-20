<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/*
| -------------------------------------------------------------------------
| URI ROUTING
| -------------------------------------------------------------------------
| This file lets you re-map URI requests to specific controller functions.
|
| Typically there is a one-to-one relationship between a URL string
| and its corresponding controller class/method. The segments in a
| URL normally follow this pattern:
|
|	example.com/class/method/id/
|
| In some instances, however, you may want to remap this relationship
| so that a different class/function is called than the one
| corresponding to the URL.
|
| Please see the user guide for complete details:
|
|	https://codeigniter.com/user_guide/general/routing.html
|
| -------------------------------------------------------------------------
| RESERVED ROUTES
| -------------------------------------------------------------------------
|
| There are three reserved routes:
|
|	$route['default_controller'] = 'welcome';
|
| This route indicates which controller class should be loaded if the
| URI contains no data. In the above example, the "welcome" class
| would be loaded.
|
|	$route['404_override'] = 'errors/page_missing';
|
| This route will tell the Router which controller/method to use if those
| provided in the URL cannot be matched to a valid route.
|
|	$route['translate_uri_dashes'] = FALSE;
|
| This is not exactly a route, but allows you to automatically route
| controller and method names that contain dashes. '-' isn't a valid
| class or method name character, so it requires translation.
| When you set this option to TRUE, it will replace ALL dashes in the
| controller and method URI segments.
|
| Examples:	my-controller/index	-> my_controller/index
|		my-controller/my-method	-> my_controller/my_method
*/
$route['default_controller'] = 'verification/login';
$route['404_override'] = '';
$route['translate_uri_dashes'] = FALSE;

//////////////////////User controller routes start/////////////////////

//view my profile routes
$route['profile'] = 'user/profile';

// Home/Dashboard page routes
$route['dashboard'] = 'user/get_dashboard';

// Routes used for the Enrolled list 
$route['enrolled-list'] = 'user/view_enrolled_list';
$route['register-applicant'] = 'user/add_client';
$route['view-client-grade/(:any)/(:num)'] = 'user/view_client_grade/$1/$2';

// Route used to update grades
$route['update-grades'] = 'user/update_client_grade';

// Routes used for the Client List
$route['client-list'] = 'user/view_clients';

//routes are used in both Client list and Enrolled list
$route['client-info/(:num)'] = 'user/view_client_profile/$1';
$route['edit-client-info/(:num)'] = 'user/update_client/$1';
$route['update-client-info/(:num)'] = 'user/update_client/$1';

// Adding a user route
$route['add-user'] = 'user/add_user';

// Routes used for User List
$route['user-list'] = 'user/view_users';
$route['user-info/(:num)'] = 'user/view_user_profile/$1';
$route['remove-user/(:num)'] = 'user/remove_user/$1';
$route['update-user-profile'] = 'user/update_user_profile';

// routes used for viewing my profile
$route['update-profile'] = 'user/update_my_profile';
$route['change-my-password'] = 'user/change_pass';
$route['update-profile-picture'] = 'user/change_profile_pic';

//Additional routes
$route['activate-user'] = 'user/activate_user';
$route['autocomplete'] = 'user/auto_complete';

//////////////////////User controller routes end///////////////////////

//program setup page routes
$route['program-setup'] = 'user/program_setup';
$route['save-program-setup'] = 'user/save_assesment_name';

//verification routes start//

//routes for login UI
$route['login'] = 'verification/login';
$route['logout'] = 'verification/logout';
$route['change-password/(:any)'] = 'verification/change_password/$1';

//verification routes end//

//email controller routes
$route['forgot-password'] = 'email/request_email';
$route['reset-request'] = 'email/send_reset_request';

