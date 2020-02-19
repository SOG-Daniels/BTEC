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

//routes for user controller 
$route['profile'] = 'user/profile';
// $route['profile/(:num)'] = 'user/profile';
$route['dashboard'] = 'user/get_dashboard';
$route['client-list'] = 'user/view_clients';
$route['register-client'] = 'user/add_client';
$route['add-user'] = 'user/add_user';
$route['user-list'] = 'user/view_users';
$route['client-info/(:num)'] = 'user/view_client_profile/$1';
$route['update-profile'] = 'user/update_my_profile';
$route['user-info/(:num)'] = 'user/view_user_profile/$1';
$route['change-my-password'] = 'user/change_pass';
$route['update-profile-picture'] = 'user/change_profile_pic';


//verification routes
$route['login'] = 'verification/login';
$route['logout'] = 'verification/logout';
$route['change-password/(:any)'] = 'verification/change_password/$1';


//email controller routes
$route['forgot-password'] = 'email/request_email';
$route['reset-request'] = 'email/send_reset_request';

