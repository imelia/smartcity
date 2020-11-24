<?php 

namespace App\Controllers;

use App\Models\Modeldashboard;

class Home extends BaseController
{
  protected $Modeldashboard;

  public function __Construct()

  {
    $this->Modeldashboard = new Modeldashboard();
  }


  public function index()
  {
    $data =[
      'title' => 'Home',
      'content' => 'smart',
    ];
    echo view('smart', $data);
  }

  public function dashboard()
  {
    $Home = $this->Modeldashboard->findAll();

    $data = [
      'judul' => 'Dashboard',
      'home' => $Home,
    ];

    echo view('dashboard', $data);
  }
}