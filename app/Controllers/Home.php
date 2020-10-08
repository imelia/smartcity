<?php namespace App\Controllers;

class Home extends BaseController
{
  public function index()
  {
    $data =[
      'title' => 'Home',
      'content' => 'layout/v_wrapper',
    ];
    echo view('layout/v_wrapper', $data);
  }

  //--------------------------------------------------------------------

}