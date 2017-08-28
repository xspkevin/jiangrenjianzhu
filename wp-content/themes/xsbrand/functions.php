<?php

error_reporting(0);
ini_set("display_errors", 0);
show_admin_bar(false);
require get_template_directory() . '/inc/helper.php';
add_filter('acf/settings/path', 'my_acf_settings_path');
function my_acf_settings_path($path)
{
	$path = get_stylesheet_directory() . '/acf/';
	return $path;
}
add_filter('acf/settings/dir', 'my_acf_settings_dir');
function my_acf_settings_dir($dir)
{
	$dir = get_stylesheet_directory_uri() . '/acf/';
	return $dir;
}
include_once get_stylesheet_directory() . '/acf/acf.php';
include_once get_stylesheet_directory() . '/inc/acf.php';
if (function_exists('acf_add_options_page')) {
	acf_add_options_page(array('page_title' => '网站设置', 'menu_title' => '网站设置', 'menu_slug' => 'theme-general-settings', 'capability' => 'edit_posts', 'redirect' => false));
	//acf_add_options_sub_page(array('page_title' => '广告设置', 'menu_title' => '广告设置', 'menu_slug' => 'theme-gg-settings', 'parent_slug' => 'theme-general-settings'));
	//acf_add_options_sub_page(array('page_title' => '局部设置', 'menu_title' => '局部设置', 'menu_slug' => 'theme-part-settings', 'parent_slug' => 'theme-general-settings'));
}
function kratos_admin_footer_text($text)
{
	//$text = '<span id="footer-thankyou">感谢使用，如有疑问欢迎 <a class="qq" rel="nofollow" target="_blank" href="http://wpa.qq.com/msgrd?v=3&amp;uin=80173997&amp;site=qq&amp;menu=yes" title="QQ咨询" style="font-size: 16px;color: red;">咨询</a></span>';
	//return $text;
	return '';
}
add_filter('admin_footer_text', 'kratos_admin_footer_text', 1);